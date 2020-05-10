using System;
using System.Collections.Generic;
using System.Runtime.CompilerServices;
using System.Text;

namespace SennedjemUtilities
{
    public abstract class Joystick
    {
        public Joystick()
        {
            Marka = string.Empty;
            Model = string.Empty;
        }
        public string Marka { get; set; }
        public string Model { get; set; }
        public abstract void OyunuBaslat();

    }

    class SonyaJoystick : Joystick
    {
        public SonyaJoystick()
        {
            Marka = "Sonya";
            Model = "SonyaExteremePackXÆ12Musk";
        }

        public override void OyunuBaslat()
        {
            var username = "CrazyBoy0634";
            Console.WriteLine("Oyunu başlat komutu gönderildi. ");
            Console.WriteLine("Oyun konsoluna gerekli Parametreleri gönderildi");
            Console.WriteLine("Oyun konsolundan dönüş parametreleri sorgulandı. ");
            Console.WriteLine("Kullanıcını kullanıcı adını girmesi için ekran oluşturuldu");
            Console.WriteLine("Kullanıcı adı girildi ");
            Console.WriteLine("kullacı adı {0} olarak belirlendi", username);
            Console.WriteLine("Oyun konsoluna kullanıcı adı gönderildi");
            Console.WriteLine("Kullanıcı Adı Kontrol Edildi Bilgisi sorgulandı.");
            Console.WriteLine("Kullanıcı Adı Kontrol Edildi Bilgisi Onaylandı.");
            Console.WriteLine("Oyun {0} Kullanılarak Başlatıldı.", Model);
        }
    }
    public interface IEkOzellik
    {
        void OlumsuzOl();
    }
    class FiiJoystick : Joystick, IEkOzellik
    {
        public FiiJoystick()
        {
            Marka = "Fii";
            Model = "FiiZXPlus23Max";
        }
        public void OlumsuzOl()
        {
            Console.WriteLine("\r\nFiiZXPlus23Max ile Ölümsüzlük Butonu Aktif Edildi.");
        }
        public override void OyunuBaslat()
        {
            var username = "benkero";
            Console.WriteLine("Oyunu başlat komutu gönderildi. ");
            Console.WriteLine("Oyun konsoluna gerekli Parametreleri gönderildi");
            Console.WriteLine("Oyun konsolundan dönüş parametreleri sorgulandı. ");
            Console.WriteLine("Kullanıcını kullanıcı adını girmesi için ekran oluşturuldu");
            Console.WriteLine("Kullanıcı adı girildi ");
            Console.WriteLine("kullacı adı {0} olarak belirlendi", username);
            Console.WriteLine("Oyun konsoluna kullanıcı adı gönderildi");
            Console.WriteLine("Kullanıcı Adı Kontrol Edildi Bilgisi sorgulandı.");
            Console.WriteLine("Kullanıcı Adı Kontrol Edildi Bilgisi Onaylandı.");
            Console.WriteLine("Oyun {0} Kullanılarak Başlatıldı.", Model);
            OlumsuzOl();

        }
    }
}
