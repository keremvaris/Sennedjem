using Core.DataAccess;
using Core.Entities.Concrete;

namespace DataAccess.Abstract
{
  public interface IUserClaimDal : IEntityRepository<UserClaim>
  {
  }
}
