using Business.BusinessAspects.Autofac;
using Business.DependencyResolvers;

using System.Reflection;
using DataAccess.Abstract;
using DataAccess.Concrete.EntityFramework;
using DataAccess.Concrete.EntityFramework.Contexts;
using Business.Services.Authentication;
using Business.BusinessAspects;
using System;
using System.Security.Principal;
using System.Security.Claims;
using Core.Utilities.Security.Jwt;
using Core.Utilities.MessageBrokers.RabbitMq;
using Core.Utilities.IoC;
using Core.DependencyResolvers;
using MediatR;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Hosting;
using Core.Extensions;
using AutoMapper;
using Autofac;
using Business.Adapters.PersonService;

namespace Business
{
    /// <summary>
    /// 
    /// </summary>
    public partial class BussinessStartup
    {
        protected readonly IHostEnvironment hostEnvironment;

        /// <summary>
        /// 
        /// </summary>
        /// <param name="configuration"></param>
        /// <param name="hostEnvironment"></param>
        public BussinessStartup(IConfiguration configuration, IHostEnvironment hostEnvironment)
        {
            Configuration = configuration;
            this.hostEnvironment = hostEnvironment;
        }

        /// <summary>
        /// 
        /// </summary>
        public IConfiguration Configuration { get; }


        /// <summary>
        /// This method gets called by the runtime. Use this method to add services to the container. 
        /// </summary>
        /// <remarks>
        /// Tüm konfigürasyonlar için ortaktır ve çağırılması gerekir. Aspnet core diğer
        /// metotlar olduğu için bu metodu çağırmaz.
        /// </remarks>
        /// <param name="services"></param>
        public virtual void ConfigureServices(IServiceCollection services)
        {
            var thisAssembly = Assembly.GetAssembly(typeof(SecuredOperation));
            services.AddMediatR(thisAssembly);

            Func<IServiceProvider, ClaimsPrincipal> getPrincipal = (sp) =>

                sp.GetService<IHttpContextAccessor>().HttpContext?.User ?? new ClaimsPrincipal(new ClaimsIdentity("Unknown"));

            services.AddScoped<IPrincipal>(getPrincipal);

            services.AddSingleton<IActivityMonitor, ActivityMonitor>();
            services.AddSingleton<IPersonService, PersonServiceManager>();

            services.AddTransient(typeof(IPipelineBehavior<,>), typeof(InstrumentationBehavior<,>));


            services.AddDependencyResolvers(Configuration, new ICoreModule[]
            {
               new CoreModule()
            });



            services.AddTransient<IAuthenticationCoordinator, AuthenticationCoordinator>();

            services.AddSingleton<ConfigurationManager>();


            services.AddTransient<ITokenHelper, JwtHelper>();

            services.AddTransient<IMessageBrokerHelper, MqQueueHelper>();
            services.AddTransient<IMessageConsumer, MqConsumerHelper>();

            services.AddAutoMapper(typeof(Business.ConfigurationManager));


            FluentValidation.ValidatorOptions.DisplayNameResolver = (type, memberInfo, expression) =>
            {
                return memberInfo.GetCustomAttribute<System.ComponentModel.DataAnnotations.DisplayAttribute>()?.GetName();
            };
        }

        /// <summary>
        /// Geliştirmede çağırılan konfigürasyondur.
        /// </summary>
        /// <param name="services"></param> 
        public void ConfigureDevelopmentServices(IServiceCollection services)
        {

            ConfigureServices(services);
            services.AddTransient<IUserRepository, UserRepository>();
            services.AddTransient<IUserClaimRepository, UserClaimRepository>();
            services.AddTransient<IOperationClaimRepository, OperationClaimRepository>();

            services.AddDbContext<ProjectDbContext, Fakes.SFw.SFwInMemory>();

        }

        /// <summary>
        /// Geliştirmede çağırılan konfigürasyondur.
        /// </summary>
        /// <param name="services"></param> 
        public void ConfigureProfilingServices(IServiceCollection services)
        {

            ConfigureServices(services);
            services.AddTransient<IUserRepository, UserRepository>();
            services.AddTransient<IUserClaimRepository, UserClaimRepository>();
            services.AddTransient<IOperationClaimRepository, OperationClaimRepository>();


            services.AddDbContext<ProjectDbContext>();

        }
        /// <summary>
        /// Sahnelemede çağırılan konfigürasyondur.
        /// </summary>
        /// <param name="services"></param>
        public void ConfigureStagingServices(IServiceCollection services)
        {
            ConfigureServices(services);
            services.AddTransient<IUserRepository, UserRepository>();
            services.AddTransient<IUserClaimRepository, UserClaimRepository>();
            services.AddTransient<IOperationClaimRepository, OperationClaimRepository>();

            services.AddDbContext<ProjectDbContext>();

        }

        /// <summary>
        /// Canlıda çağırılan konfigürasyondur.
        /// </summary>
        /// <param name="services"></param>
        public void ConfigureProductionServices(IServiceCollection services)
        {
            ConfigureServices(services);
            services.AddTransient<IUserRepository, UserRepository>();
            services.AddTransient<IUserClaimRepository, UserClaimRepository>();
            services.AddTransient<IOperationClaimRepository, OperationClaimRepository>();


            services.AddDbContext<ProjectDbContext>();
        }


        /// <summary>
        ///  
        /// </summary>
        /// <param name="builder"></param>
        public void ConfigureContainer(ContainerBuilder builder)
        {
            builder.RegisterModule(new AutofacBusinessModule(new ConfigurationManager(Configuration, hostEnvironment)));

        }

    }
}
