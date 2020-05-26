using System;
using System.Threading;
using System.Threading.Tasks;

namespace Business.Helpers
{
    /// <summary>
    /// async await ikilisini klasik C# lock() tümcesi ile kilitleyemediğimiz
    /// için bu çözüme başvuruyoruz.
    /// </summary>
    public class AwaitableLock
    {
        private readonly SemaphoreSlim toLock;

        public AwaitableLock()
        {
            toLock = new SemaphoreSlim(1, 1);
        }

        public async Task<LockReleaser> Lock(TimeSpan timeout)
        {
            if (await toLock.WaitAsync(timeout))
            {
                return new LockReleaser(toLock);
            }
            throw new TimeoutException();
        }

        public struct LockReleaser : IDisposable
        {
            private readonly SemaphoreSlim toRelease;

            public LockReleaser(SemaphoreSlim toRelease)
            {
                this.toRelease = toRelease;
            }
            public void Dispose()
            {
                toRelease.Release();
            }
        }
    }
}
