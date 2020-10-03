using Core.Utilities.IoC;
using Microsoft.Extensions.Configuration;
using System;
using Serilog;
using Core.CrossCuttingConcerns.Logging.Serilog.ConfigurationModels;
using Microsoft.Extensions.DependencyInjection;

namespace Core.CrossCuttingConcerns.Logging.Serilog.Loggers
{
    public class PostgreLogger : LoggerServiceBase
    {
        public PostgreLogger()
        {
            IConfiguration configuration = ServiceTool.ServiceProvider.GetService<IConfiguration>();

            var logConfig = configuration.GetSection("ConnectionStrings:SFwPgContext")
                .Get<PostgreConfiguration>() ?? throw new Exception(Utilities.Messages.SerilogMessages.NullOptionsMessage);

            var seriLogConfig = new LoggerConfiguration()
                    .WriteTo.PostgreSQL(connectionString: logConfig.ConnectionString, tableName: "Log", needAutoCreateTable: true)
                    .CreateLogger();
            _logger = seriLogConfig;
        }
    }
}
