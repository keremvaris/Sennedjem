using Core.DataAccess.EntityFramework;
using Core.Entities.Concrete;
using DataAccess.Abstract;
using DataAccess.Concrete.EntityFramework.Contexts;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace DataAccess.Concrete.EntityFramework
{
  public class UserClaimRepository : EfEntityRepositoryBase<UserClaim, ProjectDbContext>, IUserClaimRepository
  {
    public UserClaimRepository(ProjectDbContext context) : base(context)
    {
    }

        public async Task<IEnumerable<UserClaim>> BulkInsert(int userId, IEnumerable<UserClaim> userClaims)
        {
            var dbClaimList = context.UserClaims.Where(x => x.UserId == userId);

            context.UserClaims.RemoveRange(dbClaimList);
            await context.UserClaims.AddRangeAsync(userClaims);
            return userClaims;
        }
    }
}
