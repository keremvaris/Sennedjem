using System;
using System.Collections.Generic;
using System.Text;

namespace Core.CrossCuttingConcerns.Logging.NLog.Loggers
{
    public class FileLogger:LoggerServiceBase
    {
        public FileLogger():base("JsonFileLogger")
        {
            
        }
    }
}
