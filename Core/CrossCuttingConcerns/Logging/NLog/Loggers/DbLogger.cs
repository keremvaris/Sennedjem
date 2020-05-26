using Microsoft.Extensions.Configuration;

namespace Core.CrossCuttingConcerns.Logging.NLog.Loggers
{
    public class DbLogger : LoggerServiceBase
    {
        public DbLogger(IConfiguration configuration)
          // appconfig Logging bölümünden provider adını al.
          : base(configuration.GetSection("Logging").GetValue<string>("LogProviderName"))
        {
        }
    }
}
