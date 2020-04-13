using Core.DataAccess.EntityFramework;
using Core.Entities.Concrete;
using DataAccess.Abstract;


namespace DataAccess.Concrete.NpgSql
{
  public class EfOperationClaimDal : EfEntityRepositoryBase<OperationClaim, NorthwindContext>, IOperationClaimDal
  {

  }
}
