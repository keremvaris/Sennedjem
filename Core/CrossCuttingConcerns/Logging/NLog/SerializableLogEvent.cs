using NLog;

namespace Core.CrossCuttingConcerns.Logging.NLog
{
    public class SerializableLogEvent
    {
        private LogEventInfo _logEvent;

        public SerializableLogEvent(LogEventInfo logEvent)
        {
            _logEvent = logEvent;
        }
        public object Message => _logEvent.Parameters[0];
    }
}
