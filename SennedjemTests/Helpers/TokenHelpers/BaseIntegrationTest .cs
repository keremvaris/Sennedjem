using Microsoft.AspNetCore.Mvc.Testing;
using Microsoft.IdentityModel.Tokens;
using NUnit.Framework;
using System.IdentityModel.Tokens.Jwt;
using System.Net.Http;
using WebAPI;

namespace SennedjemTests.Helpers.TokenHelpers
{
    [TestFixture]
    public abstract class BaseIntegrationTest : WebApplicationFactory<Startup>
    {

        protected HttpClient _client;

        protected WebApplicationFactory<Startup> Factory => new WebApplicationFactory<Startup>();

        public string Issuer { get; } = "www.keremvaris.com";
        public string Audience { get; } = "www.keremvaris.com";

        public SigningCredentials SigningCredentials { get; }

        private static readonly JwtSecurityTokenHandler s_tokenHandler = new JwtSecurityTokenHandler();
        private static string KeyString = "!z2x3C4v5B*_*!z2x3C4v5B*_*";


        //protected override void ConfigureWebHost(IWebHostBuilder builder)
        //{

        //    builder.ConfigureServices(services =>
        //    {

        //        var keyByte = Encoding.UTF8.GetBytes(KeyString);
        //        SymmetricSecurityKey symmetricSecurityKey = new SymmetricSecurityKey(keyByte);

        //        services.AddAuthentication(JwtBearerDefaults.AuthenticationScheme)
        //                .AddJwtBearer(options =>
        //                {
        //                    options.TokenValidationParameters = new TokenValidationParameters
        //                    {
        //                        ValidateIssuer = true,
        //                        ValidateAudience = true,
        //                        ValidateLifetime = true,
        //                        ValidIssuer = Issuer,
        //                        ValidAudience = Audience,
        //                        ValidateIssuerSigningKey = true,
        //                        IssuerSigningKey = symmetricSecurityKey
        //                    };
        //                });
        //    });


        //    base.ConfigureWebHost(builder);
        //}

        //[SetUp]
        //public void Setup()
        //{
        //    //var builder = new WebHostBuilder()
        //    //    .UseEnvironment("Development")
        //    //    .ConfigureServices(x => x.AddAutofac())
        //    //   .UseStartup<Startup>();

        //    _client = this.CreateClient();
        //}


        [SetUp]
        public void Setup()
        {
            //var builder = new WebHostBuilder()
            //    .UseEnvironment("Development")
            //    .ConfigureServices(x => x.AddAutofac())
            //   .UseStartup<Startup>();

            _client = this.CreateClient();
        }
    }
}
