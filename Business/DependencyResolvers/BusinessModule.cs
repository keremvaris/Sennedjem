using Core.Utilities.IoC;
using DataAccess.Abstract;
using DataAccess.Concrete.EntityFramework;
using DataAccess.Concrete.EntityFramework.Contexts;
using Microsoft.Extensions.DependencyInjection;

namespace Business.DependencyResolvers
{
    public class BusinessModule : ICoreModule
    {
        public void Load(IServiceCollection services)
        {
            /*
            Eğer PostgreSql Kullanılacaksa aşağıdaki gibi
            services.AddSingleton<ProjectDbContext>();
            Eğer MsSql Kullanılacaksa bu şekilde kullanılır
            services.AddDbContext<ProjectDbContext, MsDbContext>(); 
            Eğer InMemoryDb kullanılacaksa
            services.AddDbContext<ProjectDbContext, InMemoryContext>();
            */
            services.AddDbContext<ProjectDbContext>();

            //[SecuredOperation] eklenen metodun otomatik taranarak db ye yetki olarak eklenmesi için burası gereklidir.   
            services.AddSingleton<IOperationClaimDal, PgOperationClaimDal>();
        }
    }
}
