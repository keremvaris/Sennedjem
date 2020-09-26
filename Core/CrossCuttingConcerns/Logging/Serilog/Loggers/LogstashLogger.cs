using Core.Utilities.IoC;
using Microsoft.Extensions.Configuration;
using Serilog;
using Serilog.Core;
using Serilog.Formatting.Elasticsearch;
using Serilog.Sinks.Http.BatchFormatters;
using System;
using Microsoft.Extensions.DependencyInjection;
using Core.CrossCuttingConcerns.Logging.Serilog.ConfigurationModels;

namespace Core.CrossCuttingConcerns.Logging.Serilog.Loggers
{
    public class LogstashLogger : LoggerServiceBase
    {
        protected override Logger GetLogger()
        {
            IConfiguration configuration = ServiceTool.ServiceProvider.GetService<IConfiguration>();

            var logConfig = configuration.GetSection("SeriLogConfigurations:LogstashConfiguration")
                .Get<LogstashConfiguration>() ?? throw new Exception(Utilities.Messages.SerilogMessages.NullOptionsMessage);

            var seriLogConfig = new LoggerConfiguration()
                    .WriteTo
                    .DurableHttpUsingFileSizeRolledBuffers(
                        requestUri: logConfig.URL,
                        batchFormatter:new ArrayBatchFormatter(),
                        textFormatter:new ElasticsearchJsonFormatter()
                     )
                    .CreateLogger();
            return seriLogConfig;
        }
    }
}
