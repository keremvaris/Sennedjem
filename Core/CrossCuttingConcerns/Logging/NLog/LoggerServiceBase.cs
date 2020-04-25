using Core.CrossCuttingConcerns.Logging.NLog.Layouts;
using NLog;
using NLog.LayoutRenderers;
using NLog.Web;


namespace Core.CrossCuttingConcerns.Logging.NLog
{
    public class LoggerServiceBase
    {
        private readonly ILogger _logger;

        public LoggerServiceBase()
        //: this("JsonFileLogger")
        {

        }
        public LoggerServiceBase(string name)
        {
            LayoutRenderer.Register("CustomJson", typeof(CustomJsonLayoutRenderer));
            _logger = NLogBuilder.ConfigureNLog("nlog.config").GetLogger(name);

        }

        public bool IsInfoEnabled => _logger.IsInfoEnabled;
        public bool IsDebugEnabled => _logger.IsDebugEnabled;
        public bool IsWarnEnabled => _logger.IsWarnEnabled;
        public bool IsFatalEnabled => _logger.IsFatalEnabled;
        public bool IsErrorEnabled => _logger.IsErrorEnabled;

        public void Info(object logMessage)
        {
            if (IsInfoEnabled)
                _logger.Info(logMessage);
        }

        public void Debug(object logMessage)
        {
            if (IsDebugEnabled)
                _logger.Debug(logMessage);
        }

        public void Warn(object logMessage)
        {
            if (IsWarnEnabled)
                _logger.Warn(logMessage);
        }

        public void Fatal(object logMessage)
        {
            if (IsFatalEnabled)
                _logger.Fatal(logMessage);
        }

        public void Error(object logMessage)
        {
            if (IsErrorEnabled)
                _logger.Error(logMessage);
        }
    }
}
