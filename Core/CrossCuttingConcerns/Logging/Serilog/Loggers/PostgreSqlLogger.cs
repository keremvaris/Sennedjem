using Core.Utilities.IoC;
using Microsoft.Extensions.Configuration;
using System;
using Serilog;
using Core.CrossCuttingConcerns.Logging.Serilog.ConfigurationModels;
using Microsoft.Extensions.DependencyInjection;

namespace Core.CrossCuttingConcerns.Logging.Serilog.Loggers
{
    public class PostgreSqlLogger : LoggerServiceBase
    {
        public PostgreSqlLogger()
        {
            IConfiguration configuration = ServiceTool.ServiceProvider.GetService<IConfiguration>();

            var logConfig = configuration.GetSection("SeriLogConfigurations:PostgreConfiguration")
                .Get<PostgreConfiguration>() ?? throw new Exception(Utilities.Messages.SerilogMessages.NullOptionsMessage);

            var seriLogConfig = new LoggerConfiguration()
                    .WriteTo.PostgreSQL(connectionString: logConfig.ConnectionString, tableName: "Logs", needAutoCreateTable: true)
                    .CreateLogger();
            _logger = seriLogConfig;
        }
    }
}
