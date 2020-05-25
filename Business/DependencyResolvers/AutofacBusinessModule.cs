using Autofac;
using FluentValidation;
using MediatR;

namespace Business.DependencyResolvers
{
	public class AutofacBusinessModule : Module
	{
		private readonly ConfigurationManager configuration;

		/// <summary>
		/// Autofac icin.
		/// </summary>
		public AutofacBusinessModule()
		{
		}

		public AutofacBusinessModule(ConfigurationManager configuration)
		{
			this.configuration = configuration;
		}

		/// <summary>
		/// </summary>
		/// <param name="builder"></param>
		protected override void Load(ContainerBuilder builder)
		{
			// Test ya da production durumuna göre diğer interfacleri register et.
			// Handlerlari register et.
			var assembly = System.Reflection.Assembly.GetExecutingAssembly();

			// Simdilik disable ediyoruz. Cunku Handler'larin tuttugu db contextler
			// hafizada kaliyor ve sikinti cikiyor.
			builder.RegisterAssemblyTypes(assembly).AsImplementedInterfaces()
					// Handlerlar.
					.AsClosedTypesOf(typeof(IRequestHandler<,>));
			/*
			.EnableInterfaceInterceptors(new ProxyGenerationOptions()
			{
				Selector = new AspectInterceptorSelector()
			}) // Handler interceptorlari single instance
					.SingleInstance()
		/**/
			;
			// Simdi validatorler
			builder.RegisterAssemblyTypes(assembly).AsImplementedInterfaces()
				.AsClosedTypesOf(typeof(IValidator<>));

			switch (configuration.Mode)
			{
				case ApplicationMode.Development:
					builder.RegisterAssemblyTypes(assembly).AsImplementedInterfaces()
							// Sadece fakeler
							.Where(t => t.FullName.StartsWith("Business.Fakes"))
							;
					break;
				case ApplicationMode.Profiling:
					// Profiling modunda dış sistemleri test etmediğimiz
					// için development/test/production db'leri seçilebilir.
					// Yani sms ve diğer web servislere gitmeye gerek yok.
					builder.RegisterAssemblyTypes(assembly).AsImplementedInterfaces()
							// Sadece fakeler
							.Where(t => t.FullName.StartsWith("Business.Fakes.SmsService") ||
							t.FullName.StartsWith("Business.Fakes.BloodTeamService"))
							;
					break;
				case ApplicationMode.Staging:
					// sadece fake sms ve web servisi alalim.
					builder.RegisterAssemblyTypes(assembly).AsImplementedInterfaces()
							// Sadece fakeler
							.Where(t => t.FullName.StartsWith("Business.Fakes.SmsService") ||
							t.FullName.StartsWith("Business.Fakes.BloodTeamService"))
							;
					break;
				case ApplicationMode.Production:
					// Diger butun servisler.
					builder.RegisterAssemblyTypes(assembly).AsImplementedInterfaces()
									// Adaptorler
									.Where(t => t.FullName.StartsWith("Business.Adapters"))
									;
					break;
				default:
					break;
			}
		}
	}
}

