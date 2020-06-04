using Autofac;
using Autofac.Extensions.DependencyInjection;
using Core.DependencyResolvers;
using Core.Utilities.Security.Encyption;
using Core.Utilities.Security.Jwt;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc.Testing;
using Microsoft.AspNetCore.TestHost;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Logging;
using Microsoft.IdentityModel.Protocols.OpenIdConnect;
using Microsoft.IdentityModel.Tokens;
using NUnit.Framework;
using System;
using System.Collections.Generic;
using System.Configuration;

using System.IdentityModel.Tokens.Jwt;
using System.Net.Http;
using System.Text;
using WebAPI;

namespace SennedjemTests.Helpers.TokenHelpers
{
    [TestFixture]
    public abstract class BaseIntegrationTest:WebApplicationFactory<Startup>
    {

        protected HttpClient _client;

        protected WebApplicationFactory<Startup> Factory => new WebApplicationFactory<Startup>();

        public  string Issuer { get; } = "www.kizilay.org.tr";
        public  string Audience { get; } = "www.kizilay.org.tr";

        public  SigningCredentials SigningCredentials { get; }

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
