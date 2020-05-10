using System;

namespace SennedjemUtilities
{
    class Program
    {
        static void Main(string[] args)
        {
            SonyaJoystick sonyaJoystick = new SonyaJoystick();
            sonyaJoystick.OyunuBaslat();
            Console.WriteLine("\r\n###############################################\r\n");
            FiiJoystick fiiJoystick = new FiiJoystick();
            fiiJoystick.OyunuBaslat();

            Console.ReadLine();
        }
    }
}
