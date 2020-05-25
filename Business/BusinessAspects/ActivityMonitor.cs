using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Text.Json.Serialization;
using System.Web;

namespace Business.BusinessAspects
{
  /// <summary>
  /// Çağırıldığı aktiviteleri günlük olarak takip eder.
  /// Gün dönümlerinde aktiviteyi log dosyasına ekler.
  /// Gün ve saat bazında çalışır.
  /// </summary>
  public class ActivityMonitor : IActivityMonitor
  {
    public class ActivitySlot
    {
      public string Action { get; set; }
      public int Calls { get; set; }
      public long TotalMsecs { get; set; }
      public long AverageMsecs { get { return Calls==0 ? 0 : TotalMsecs / Calls; } }
      internal void Clear()
      {
        Calls = 0;
        TotalMsecs = 0;
      }
      internal void Tick(int ticks=1, long msecs=0)
      {
        Calls += ticks;
        TotalMsecs += msecs;
      }
    }

    public class ActivitySummary
    {
      public IEnumerable<ActivitySlot> Actions { get; set; }
      public IDictionary<string, DateTime> Users { get; set; }
      public IDictionary<string, int> ByFacility { get; set; }
      public IDictionary<string, int> UsersByHours { get; set; }
      public int DistinctUserCount { get; set; }
    }

    private ConcurrentDictionary<string, ActivitySlot[]> calls = new ConcurrentDictionary<string, ActivitySlot[]>();
    // Bunu kullanıcıların son hareket zamanını tutmak için kullanıyoruz. Böylece yaklaşık olarak
    // kimlerin sistemde olduğunu görebiliyoruz.
    private ConcurrentDictionary<string, DateTime> users = new ConcurrentDictionary<string, DateTime>();
    private object _lock = new object();
    private DateTime currentDay;
    private string _category;
    private string _fileName;
    private int currentHour;
    private IDictionary<int, int> UsersByHours = new SortedDictionary<int, int>();
    private ISet<string> distinctUsers = new HashSet<string>();

    public ActivitySummary Summarize()
    {
      var result = new ActivitySummary();
      // Her action için çağırılan anda akümüle olmuş çağırma sayısı ve süreleri dön.
      result.Actions = calls.Select(c =>
      {
        var slot = new ActivitySlot();
        slot.Action = c.Key;
        foreach(var s in c.Value)
        {
          slot.Tick(s.Calls, s.TotalMsecs);
        };
        return slot;
      }).OrderByDescending(s => s.Calls);
      // Aktif kullanıcları dön (en azından son 1 saatekileri tutuyoruz)
      result.Users = new ReadOnlyDictionary<string, DateTime>(users);
      // Merkeze göre kullanıcı sayıları
      result.ByFacility = users.GroupBy(u => u.Key.Substring(0, 5))
        .ToDictionary(g => g.Key, g=> g.Count());
      // core fx jsonserializer dictionary key olarak sadece string kabul ediyor.
      // o nedenle bu sekilde map edildi.
      result.UsersByHours = UsersByHours.ToDictionary(u => u.Key.ToString(), u => u.Value);
      result.DistinctUserCount = distinctUsers.Count;
      return result;
    }

    public ActivityMonitor(string category = "default")
    {      
      _category = category;
      // 24 saat icin slotlari hazirla

      // Bu gunle basla
      currentDay = DateTime.Today;
      currentHour = DateTime.Now.Hour;
      _fileName = AppDomain.CurrentDomain.BaseDirectory + $"Logs\\perf_{_category}.csv";
    }

    private void Clear()
    {
      lock (_lock)
      {
        distinctUsers.Clear();
        UsersByHours.Clear();
        foreach (var CallCount in calls.Values)
          for (var i = 0; i < 24; i++)
            CallCount[i].Clear();
      }
    }

    /// <summary>
    /// Çağırıldığı action için çağırıldığı tarih-saat'e 1 ekler.
    /// </summary>
    public void Tick(string actionName, int ticks = 1, long msecs=0, string userId = "")
    {
      // Gun donmusse, gecilen gunun istatistigini dosyaya yaz.
      var CallCount = calls.GetOrAdd(actionName, a =>
      {
        // her saat icin 1 slot.
        var slots = new ActivitySlot[24];
        for(var i=0;i<slots.Length;i++)
          slots[i] = new ActivitySlot();
        return slots;
      });
      CallCount[DateTime.Now.Hour].Tick(ticks, msecs);
      // Verilmişse kullanıcı hareketini de ekle.
      if (!string.IsNullOrEmpty(userId))
        users.AddOrUpdate(userId, DateTime.Now, (u, d) => DateTime.Now);
      lock (_lock)
      {
        if (currentDay != DateTime.Today)
        {
          Save();
          Clear();
          // TODO: Daylight saving, ileri geri alma durumu kodlanmadi!
          currentDay = DateTime.Today;
        }
        else if(currentHour != DateTime.Now.Hour)
        {
          // Saatdeki kullanıcı sayısını ekle
          UsersByHours.Add(currentHour, users.Count);
          var threshold = DateTime.Now.AddHours(-1);
          // Sadece son 1 saatteki kullanıcıları tut
          var expired = users.Where(kv => kv.Value < threshold);
          DateTime d;
          foreach(var e in expired)
          {
            users.TryRemove(e.Key, out d);
          };
          currentHour = DateTime.Now.Hour;
        }
        distinctUsers.Add(userId);
      }
    }

    public void Save()
    {
      try
      {
        var sb = new StringBuilder();
        var date = currentDay.ToString("yyyy-dd-MM");
        foreach(var kv in calls)
        {
          for (var i = 0; i < 24; i++)
          {
            // Kolonlar:
            // actionName;datetime;callcount;average msecs tooks for this action
            sb.Append(kv.Key);
            sb.Append(';');
            sb.Append(date);
            sb.AppendFormat(" {0:00}:00;{1};{2}", i, kv.Value[i].Calls, kv.Value[i].AverageMsecs);
            sb.AppendLine();
          }
        }

        using (var file = new System.IO.StreamWriter(_fileName, true))
        {
          file.Write(sb.ToString());
        }
      }
      catch (Exception)
      {
        // HLogger.Error("PERFLOG!" + Environment.NewLine + ex.ToString());
      }
    }
  }

}