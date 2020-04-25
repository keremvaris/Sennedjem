using Autofac;
using Castle.DynamicProxy;
using Autofac.Extras.DynamicProxy;
using Core.Utilities.Interceptors;
using Microsoft.Extensions.Configuration;

namespace Business.DependencyResolvers.Autofac
{
    public class AutofacBusinessModule : Module
    {
        private readonly IConfiguration configuration;

        public AutofacBusinessModule(IConfiguration configuration)
        {
            this.configuration = configuration;
        }

        /// <summary>
        /// </summary>
        /// <param name="builder"></param>
        protected override void Load(ContainerBuilder builder)
        {


            var assembly = System.Reflection.Assembly.GetExecutingAssembly();
            // Test ya da production durumuna göre diğer interfacleri register et.
            // Handlerlari register et.
            builder.RegisterAssemblyTypes(assembly).AsImplementedInterfaces()
                    // Fakeler ve handlerlar.
                    .Where(t => t.FullName.StartsWith("Business.Handlers"))
                    .EnableInterfaceInterceptors(new ProxyGenerationOptions()
                    {
                        Selector = new AspectInterceptorSelector()
                    }) // Handler interceptorlari single instance
                    .SingleInstance();



            // Diger butun servisler.
            builder.RegisterAssemblyTypes(assembly).AsImplementedInterfaces()
                            // Fakeler disnda tum servisler.
                            .Where(t => !t.FullName.StartsWith("Business.Fakes") && !t.FullName.StartsWith("Business.Handlers"));
        }
    }
}

