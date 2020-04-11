using System.Collections.Generic;
using System.Linq;
using Core.DataAccess.EntityFramework;
using Core.Entities.Concrete;
using DataAccess.Abstract;
using DataAccess.Concrete.EntityFramework.Contexts;
using DataAccess.Concrete.NpgSql.Contexts;

namespace DataAccess.Concrete.NpgSql
{
    public class PgUserDal : EfEntityRepositoryBase<User, NorthwindNPgSqlDbContext>, IUserDal
    {
        public PgUserDal(NorthwindNPgSqlDbContext context) : base(context)
        {
        }

        public List<OperationClaim> GetClaims(User user)
        {
            using (var context = new NorthwindNPgSqlDbContext())
            {
                var result = from operationClaim in context.OperationClaims
                             join userOperationClaim in context.UserOperationClaims
                             on operationClaim.Id equals userOperationClaim.OperationClaimId
                             where userOperationClaim.UserId == user.Id
                             select new OperationClaim { Id = operationClaim.Id, Name = operationClaim.Name };
                return result.ToList();

            }
        }
    }
}