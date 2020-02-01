using System.Collections.Generic;
using System.Linq;
using Core.DataAccess.EntityFramework;
using Core.Entities.Concrete;
using DataAccess.Abstract;
using DataAccess.Concrete.EntityFramework.Contexts;

namespace DataAccess.Concrete.EntityFramework {
    public class EfUserDal : EfEntityRepositoryBase<User, NorthwindContext>, IUserDal {
        public EfUserDal(NorthwindContext context) : base(context)
        {
        }

        public List<OperationClaim> GetClaims (User user) {
            using (var context = new NorthwindContext ()) {
                var result = from operationClaim in context.OperationClaims
                join userOperationClaim in context.UserOperationClaims
                on operationClaim.Id equals userOperationClaim.OperationClaimId
                where userOperationClaim.UserId == user.Id
                select new OperationClaim { Id = operationClaim.Id, Name = operationClaim.Name };
                return result.ToList ();

            }
        }
    }
}