using Core.DataAccess;
using Core.Entities.Concrete;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace DataAccess.Abstract
{
  public interface IUserClaimRepository : IEntityRepository<UserClaim>
  {
        Task<IEnumerable<UserClaim>> BulkInsert(int userId, IEnumerable<UserClaim> userClaims);
  }
}
