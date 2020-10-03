using Core.CrossCuttingConcerns.Logging.Serilog.ConfigurationModels;
using Microsoft.Extensions.Configuration;
using Core.Utilities.IoC;
using Serilog;
using Microsoft.Extensions.DependencyInjection;

namespace Core.CrossCuttingConcerns.Logging.Serilog.Loggers
{
    public class MongoDbLogger : LoggerServiceBase
    {
        public MongoDbLogger()
        {
            IConfiguration configuration = ServiceTool.ServiceProvider.GetService<IConfiguration>();
            var logConfig = configuration.GetSection("SeriLogConfigurations:MongoDbConfiguration")
               .Get<MongoDbConfiguration>();

            _logger = new LoggerConfiguration()
                 .WriteTo.MongoDB(logConfig.ConnectionString, collectionName: logConfig.Collection)
                 .CreateLogger();
        }
    }
}
