using Autofac;
using Core.Utilities.Security.Jwt;
using DataAccess.Abstract;
using Castle.DynamicProxy;
using Autofac.Extras.DynamicProxy;
using Core.Utilities.Interceptors;
using DataAccess.Concrete.NpgSql;

namespace Business.DependencyResolvers.Autofac
{
    public class AutofacBusinessModule : Module
    {
        protected override void Load(ContainerBuilder builder)
        {
            //builder.RegisterType<ProductManager>().As<IProductService>();
            builder.RegisterType<PgProductDal>().As<IProductDal>();

            //builder.RegisterType<CategoryManager>().As<ICategoryService>();
            builder.RegisterType<PgCategoryDal>().As<ICategoryDal>();

            //builder.RegisterType<UserManager>().As<IUserService>();
            builder.RegisterType<PgUserDal>().As<IUserDal>();

            //builder.RegisterType<AuthManager>().As<IAuthService>();
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

