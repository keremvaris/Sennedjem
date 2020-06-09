using System;
using System.Security.Cryptography.X509Certificates;

namespace SennedjemUtilities
{
    class Program
    {
        public delegate void LogEventHandler(string msg);
        static void Main(string[] args)
        {
            LogEventHandler logEventHandlerFile = new LogEventHandler(FileLogger.WriteLog);
            LogEventHandler logEventHandlerScreen = ScreenLogger.ShowLog;
            logEventHandlerFile("File");
            logEventHandlerScreen("Screen");
            Console.ReadLine();
        }

        class FileLogger
        {
            public static void WriteLog(string s)
            {

            }
        }
        class ScreenLogger
        {
            public static void ShowLog(string s)
            {

            }
        }

        protected Program()
        {
        }

    }
}
