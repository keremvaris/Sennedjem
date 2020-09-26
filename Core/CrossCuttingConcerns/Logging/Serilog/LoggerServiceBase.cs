using Serilog;
using Serilog.Core;

namespace Core.CrossCuttingConcerns.Logging.Serilog
{
    public abstract class LoggerServiceBase
    {
        private readonly ILogger _logger;
        protected abstract Logger GetLogger();
        //public void Verbose(object message) => GetLogger().Verbose((string)message);
        //public void Fatal(object message) => GetLogger().Fatal((string)message);
        //public void Info(object message) => GetLogger().Information((string)message);
        //public void Warn(object message) => GetLogger().Warning((string)message);
        //public void Debug(object message) => GetLogger().Debug((string)message);
        //public void Error(object message) => GetLogger().Error((string)message);
    }
}
