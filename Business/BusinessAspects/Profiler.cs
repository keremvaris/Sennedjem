using System;

namespace Business.BusinessAspects
{
    public sealed class Profiler : IDisposable
    {
        private long lastTick;
        private long lastDelta;
        private string lastBlockName;

        public long LastDelta
        {
            get
            {
                return lastDelta;
            }
        }

        public long LastMsecs
        {
            get
            {
                return LastDelta / 10000;
            }
        }

        public Profiler()
        {
        }

        public void Begin(string blockName, string msg)
        {
            // If our previous begin call is not closed, close it.
            if (!string.IsNullOrEmpty(lastBlockName))
                End();
            System.Diagnostics.Trace.Indent();
            lastBlockName = blockName;
            // There are 10000 ticks in msec.
            lastTick = DateTime.Now.Ticks;
            Write("+{0}", lastBlockName);
            if (!string.IsNullOrEmpty(msg))
                Write(msg);
        }

        public void Begin(string blockName)
        {
            Begin(blockName, String.Empty);
        }

        public void Write(string format, params object[] args)
        {
            System.Diagnostics.Trace.WriteLine(string.Format(format, args));
        }

        public void End(string msg)
        {
            lastDelta = DateTime.Now.Ticks - lastTick;
            Write("-{0}\t{1}ms", lastBlockName, lastDelta / 10000);
            lastBlockName = String.Empty;
            System.Diagnostics.Trace.Unindent();
        }

        public void End()
        {
            End(String.Empty);
        }

        #region IDisposable Members

        public void Dispose()
        {
        }

        #endregion
    }
}
