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
      services.AddSingleton<ProjectDbContext>();
      services.AddSingleton<IOperationClaimDal, PgOperationClaimDal>();
    }
  }
}
