using Autofac;
using Core.Utilities.Security.Jwt;
using DataAccess.Abstract;
using Castle.DynamicProxy;
using Autofac.Extras.DynamicProxy;
using Core.Utilities.Interceptors;
using DataAccess.Concrete.EntityFramework;
using Core.Utilities.MessageBrokers.RabbitMq;

namespace Business.DependencyResolvers.Autofac
{
    public class AutofacBusinessModule : Module
    {
        /// <summary>
        /// builder.RegisterType<NorthwindNPgSqlDbContext>().InstancePerLifetimeScope();
        /// DbContext her yeni uygulamaya göre değişir.
        /// Tüm Dal interfaceleri buradan register edilir. Böylelikle Autofac'ın yönetimine tabi olur
        /// </summary>
        /// <param name="builder"></param>
        protected override void Load(ContainerBuilder builder)
        {
            // builder.RegisterType<NorthwindNPgSqlDbContext>().InstancePerLifetimeScope();

            builder.RegisterType<PgUserDal>().As<IUserDal>();
            builder.RegisterType<PgAnimalDal>().As<IAnimalDal>();
            builder.RegisterType<PgUserClaimDal>().As<IUserClaimDal>();
            builder.RegisterType<PgOperationClaimDal>().As<IOperationClaimDal>();



            //user işlerini takip ettiği için bu hep burada register olacak
            builder.RegisterType<JwtHelper>().As<ITokenHelper>();
            //RabbitMq
            builder.RegisterType<MqQueueHelper>().As<IMessageBrokerHelper>();
            builder.RegisterType<MqConsumerHelper>().As<IMessageConsumer>();
            var assembly = System.Reflection.Assembly.GetExecutingAssembly();
            builder.RegisterAssemblyTypes(assembly).AsImplementedInterfaces()
                .EnableInterfaceInterceptors(new ProxyGenerationOptions()
                {
                    Selector = new AspectInterceptorSelector()
                }).SingleInstance();
        }
    }
}

