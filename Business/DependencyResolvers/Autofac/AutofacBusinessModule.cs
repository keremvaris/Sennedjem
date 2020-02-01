using Autofac;
using Core.Utilities.Security.Jwt;
using DataAccess.Abstract;
using Castle.DynamicProxy;
using Autofac.Extras.DynamicProxy;
using Core.Utilities.Interceptors;
using DataAccess.Concrete.NpgSql;
using DataAccess.Concrete.NpgSql.Contexts;

namespace Business.DependencyResolvers.Autofac
{
    public class AutofacBusinessModule : Module
    {
        protected override void Load(ContainerBuilder builder)
        {
            builder.RegisterType<NorthwindNPgSqlDbContext>().InstancePerLifetimeScope();

            builder.RegisterType<PgProductDal>().As<IProductDal>();
            builder.RegisterType<PgCategoryDal>().As<ICategoryDal>();
            builder.RegisterType<PgUserDal>().As<IUserDal>();


            builder.RegisterType<JwtHelper>().As<ITokenHelper>();

            var assembly = System.Reflection.Assembly.GetExecutingAssembly();
            builder.RegisterAssemblyTypes(assembly).AsImplementedInterfaces()
                .EnableInterfaceInterceptors(new ProxyGenerationOptions()
                {
                    Selector = new AspectInterceptorSelector()
                }).SingleInstance();

        }
    }
}

