using Core.CrossCuttingConcerns.Caching;
using Core.CrossCuttingConcerns.Caching.Microsoft;
using Core.Utilities.IoC;
using Core.Utilities.Messages;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.OpenApi.Models;
using System;
using System.Diagnostics;
using MediatR;
using System.Reflection;
using Core.Utilities.Mail;
using Microsoft.Extensions.Configuration;
using Core.Utilities.ElasticSearch;

namespace Core.DependencyResolvers
{
    public class CoreModule : ICoreModule
    {
        public void Load(IServiceCollection services, IConfiguration configuration)
        {
            services.AddMemoryCache();
            services.AddSingleton<ICacheManager, MemoryCacheManager>();
            services.AddSingleton<IMailService, MailManager>();
            services.AddSingleton<IEmailConfiguration, EmailConfiguration>();
            services.AddSingleton<IHttpContextAccessor, HttpContextAccessor>();
            services.AddSingleton<Stopwatch>();
            services.AddMediatR(Assembly.GetExecutingAssembly());
            services.AddSingleton<IElasticSearch, ElasticSearchManager>();

            services.AddSwaggerGen(c =>
            {
                c.SwaggerDoc(SwaggerMessages.Version, new OpenApiInfo
                {
                    Version = SwaggerMessages.Version,
                    Title = SwaggerMessages.Title,
                    Description = SwaggerMessages.Description,
                    TermsOfService = new Uri(SwaggerMessages.TermsOfService),
                    Contact = new OpenApiContact
                    {
                        Name = SwaggerMessages.ContactName,
                        Email = string.Empty,
                        Url = new Uri(SwaggerMessages.ContactUrl),
                    },
                    License = new OpenApiLicense
                    {
                        Name = SwaggerMessages.LicenceName,
                        Url = new Uri(SwaggerMessages.LicenceUrl),
                    }
                });
                // Enumları düzgün dokümante et.
                //c.SchemaFilter<EnumSchemaFilter>();
                c.OperationFilter<AddAuthHeaderOperationFilter>();
                c.AddSecurityDefinition("bearer", new OpenApiSecurityScheme
                {
                    Description = "`Token only!!!` - without `Bearer_` prefix",
                    Type = SecuritySchemeType.Http,
                    BearerFormat = "JWT",
                    In = ParameterLocation.Header,
                    Scheme = "bearer"
                });
            });
        }
    }
}
