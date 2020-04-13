using Newtonsoft.Json;
using NLog;
using NLog.LayoutRenderers;
using System;
using System.Collections.Generic;
using System.Text;

namespace Core.CrossCuttingConcerns.Logging.NLog.Layouts
{
  [LayoutRenderer("CustomJson")]
  public class CustomJsonLayoutRenderer : LayoutRenderer
  {
    protected override void Append(StringBuilder builder, LogEventInfo logEvent)
    {
      var logEventInfo = new SerializableLogEvent(logEvent);
      var json = JsonConvert.SerializeObject(logEventInfo, Formatting.None);
      builder.AppendLine(json);
    }
  }
}
