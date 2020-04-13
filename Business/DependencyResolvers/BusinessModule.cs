
using Core.Utilities.IoC;
using DataAccess.Abstract;
using DataAccess.Concrete.EntityFramework;
using DataAccess.Concrete.EntityFramework.Contexts;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;

namespace Business.DependencyResolvers
{
    public class BusinessModule : ICoreModule
    {
        public void Load(IServiceCollection services, IConfiguration configuration)
        {
            // Db erişim nesnelerini scoped olarak eklemek gerekiyor.
            // O nedenle Autofac modulune alindi


            /*
            Bu taklada projectdbcontext gordugun yere MsDbContext yarat demek ve hatta su da mumkun
            Misal development Sql, Production PgSql
            if(Debug)
              services.AddDbContext<ProjectDbContext, MsDbContext>();
            else
              services.AddDbContext<ProjectDbContext>(options => options.UseNpgsql(configuration.GetConnectionString("OASContext"));
            */

            /*
            SennedjemFw default olarak PostgreSql ile çalışır. 
            Eğer MultipleContext Override edilecekse aşağıdaki şekilde yazılır.
            services.AddDbContext<ProjectDbContext, MsDbContext>();
            Edilmeyedecekse bu şekilde bırakılır.
            services.AddDbContext<ProjectDbContext>();
             */
            services.AddDbContext<ProjectDbContext>();
            services.AddSingleton<ProjectDbContext>();
            services.AddSingleton<IOperationClaimDal, PgOperationClaimDal>();
        }
    }
}
