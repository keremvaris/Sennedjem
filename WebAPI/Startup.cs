using Core.Extensions;
using Core.Utilities.IoC;
using Core.Utilities.Security.Encyption;
using Core.Utilities.Security.Jwt;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.IdentityModel.Tokens;
using System.IO;
using System.Text.Json.Serialization;
using Business;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.AspNetCore.Localization;
using System.Globalization;
using Business.Helpers;

namespace WebAPI
{
	/// <summary>
	/// 
	/// </summary>
	public partial class Startup : Business.BussinessStartup
	{
		/// <summary>
		/// 
		/// </summary>
		/// <param name="configuration"></param>
		/// <param name="hostEnvironment"></param>
		public Startup(IConfiguration configuration, IHostEnvironment hostEnvironment)
			: base(configuration, hostEnvironment)
		{
		}


		/// <summary>
		/// This method gets called by the runtime. Use this method to add services to the container. 
		/// </summary>
		/// <remarks>
		/// Tüm konfigürasyonlar için ortaktır ve çağırılması gerekir. Aspnet core diğer
		/// metotlar olduğu için bu metodu çağırmaz.
		/// </remarks>
		/// <param name="services"></param>
		public override void ConfigureServices(IServiceCollection services)
		{
			services.AddControllers()

				.AddJsonOptions(options =>
				{
					options.JsonSerializerOptions.Converters.Add(new JsonStringEnumConverter());
					options.JsonSerializerOptions.IgnoreNullValues = true;
				})
				;

			services.AddCors(options =>
			{
				options.AddPolicy("AllowOrigin",
									builder => builder.AllowAnyOrigin().AllowAnyMethod().AllowAnyHeader());
			});

			var tokenOptions = Configuration.GetSection("TokenOptions").Get<TokenOptions>();

			services.AddAuthentication(JwtBearerDefaults.AuthenticationScheme)
					.AddJwtBearer(options =>
					{
						options.TokenValidationParameters = new TokenValidationParameters
						{
							ValidateIssuer = true,
							ValidateAudience = true,
							ValidateLifetime = true,
							ValidIssuer = tokenOptions.Issuer,
							ValidAudience = tokenOptions.Audience,
							ValidateIssuerSigningKey = true,
							IssuerSigningKey = SecurityKeyHelper.CreateSecurityKey(tokenOptions.SecurityKey)
						};
					});
			services.AddSwaggerGen(c =>
			{
				/*
        // Core'dan gelen ayarları override et.
        c.SwaggerDoc(SwaggerMessages.Version, new OpenApiInfo
        {
          Version = SwaggerMessages.Version,
          Title = SwaggerMessages.Title,
          Description = SwaggerMessages.Description,
          License = new OpenApiLicense
          {
            Name = SwaggerMessages.LicenceName,
          },
        });
        */

				c.IncludeXmlComments(Path.ChangeExtension(typeof(Startup).Assembly.Location, ".xml"));


				// Bu metot yeni. Enumları inline olarak kodluyor.
				//c.UseInlineDefinitionsForEnums();
				//c.DescribeAllEnumsAsStrings();
				// c.DescribeAllParametersInCamelCase();
				//c.DescribeAllEnumsAsStrings();
			});

			base.ConfigureServices(services);
		}

		// This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
		/// <summary>
		/// 
		/// </summary>
		/// <param name="app"></param>
		/// <param name="env"></param>
		public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
		{
			// ÇOK ÖNEMLİ. AddDependencyResolvers'dan build'i kaldırdığımız için Service provider'ı elle set edelim.
			// Bu arada aspectlerde statik metot çağırmamak için type alıp DI ile construct edebiliriz.
			ServiceTool.ServiceProvider = app.ApplicationServices;

			// Test ise fake store'u canlandir ve context'i hazirla
			var configurationManager = app.ApplicationServices.GetService<ConfigurationManager>();
			switch (configurationManager.Mode)
			{
				case ApplicationMode.Development:
				case ApplicationMode.Profiling:
				case ApplicationMode.Staging:
					//var fakeStore = app.ApplicationServices.GetService<Business.Fakes.HemFakeStore>();
					break;
				case ApplicationMode.Production:
					break;
			}

			if (env.IsDevelopment() || env.IsStaging())
			{
			}
			// TODO: Bu sadece development ve stagingde olmali. Production debug icin actik.
			app.UseDeveloperExceptionPage();

			app.ConfigureCustomExceptionMiddleware();

			app.UseDbOperationClaimCreator();
			app.UseSwagger();

			// Enable middleware to serve swagger-ui (HTML, JS, CSS, etc.),
			// specifying the Swagger JSON endpoint.
			app.UseSwaggerUI(c =>
			{
				c.SwaggerEndpoint("/WebAPI/swagger/v1/swagger.json", "SFw");
				//c.RoutePrefix = string.Empty;
			});
			app.UseCors("AllowOrigin");

			app.UseHttpsRedirection();

			app.UseRouting();

			app.UseAuthentication();

			app.UseAuthorization();

			// Türkçeyi varsayılan dil yap. Sunucuya göre değişmesin.
			app.UseRequestLocalization(new RequestLocalizationOptions
			{
				DefaultRequestCulture = new RequestCulture("tr-TR"),
				// Formatting numbers, dates, etc.
				// SupportedCultures = supportedCultures,
				// UI strings that we have localized.
				// SupportedUICultures = supportedCultures
			});

			// Dili Türkçeye set et.4
			var cultureInfo = new CultureInfo("tr-TR");
			cultureInfo.DateTimeFormat.ShortTimePattern = "HH:mm";

			CultureInfo.DefaultThreadCurrentCulture = cultureInfo;
			CultureInfo.DefaultThreadCurrentUICulture = cultureInfo;

			app.UseStaticFiles();

			app.UseEndpoints(endpoints =>
			{
				endpoints.MapControllers();
			});


		}
	}
}
