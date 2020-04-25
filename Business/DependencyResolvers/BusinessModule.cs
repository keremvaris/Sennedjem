using AutoMapper;
using Business.Services.Authentication;
using Core.CrossCuttingConcerns.Logging.Log4Net.Loggers;
using Core.Utilities.IoC;
using Core.Utilities.MessageBrokers.RabbitMq;
using Core.Utilities.Security.Jwt;
using DataAccess.Abstract;
using DataAccess.Concrete.EntityFramework;
using DataAccess.Concrete.EntityFramework.Contexts;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
namespace Business.DependencyResolvers
{
    public class BusinessModule : ICoreModule
    {
        void RegisterProduction(IServiceCollection builder)
        {
            builder.AddTransient<IUserRepository, UserRepository>();
            builder.AddTransient<IUserClaimRepository, UserClaimRepository>();
            builder.AddTransient<IOperationClaimRepository, OperationClaimRepository>();
            builder.AddTransient<IProductRepository, ProductRepository>();
            builder.AddTransient<IAnimalRepository, AnimalRepository>();
            builder.AddTransient<ICategoryRepository, CategoryRepository>();
            builder.AddTransient<FileLogger>();

            /*
            Bu taklada projectdbcontext gordugun yere MsDbContext yarat demek ve hatta su da mumkun
            development Sql, Production PgSql
            if(Debug)
              services.AddDbContext<ProjectDbContext, MsDbContext>();
            else
              services.AddDbContext<ProjectDbContext>(options => options.UseNpgsql(configuration.GetConnectionString("OASContext"));
            */
            builder.AddDbContext<ProjectDbContext>();


        }



        public void Load(IServiceCollection builder, IConfiguration configuration)
        {
            // Authentication providerlari.
            builder.AddTransient<PersonAuthenticationProvider>();
            builder.AddTransient<AgentAuthenticationProvider>();
            builder.AddTransient<IAuthenticationCoordinator, AuthenticationCoordinator>();
            RegisterProduction(builder);

            //user işlerini takip ettiği için bu hep burada register olacak
            builder.AddTransient<ITokenHelper, JwtHelper>();
            //RabbitMq
            builder.AddTransient<IMessageBrokerHelper, MqQueueHelper>();
            //builder.AddTransient<IMessageConsumer, MqConsumerHelper>();
            // Mappers
            builder.AddAutoMapper(typeof(BusinessModule));

        }
    }
}
