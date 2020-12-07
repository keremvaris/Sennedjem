using Business.BusinessAspects;
using Core.Entities.Concrete;
using Core.Utilities.Results;
using DataAccess.Abstract;
using MediatR;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;

namespace Business.Handlers.UserClaims.Queries
{
    [SecuredOperation]
    public class GetUserClaimsQuery : IRequest<IDataResult<IEnumerable<UserClaim>>>
    {

        public class GetUserClaimsQueryHandler : IRequestHandler<GetUserClaimsQuery, IDataResult<IEnumerable<UserClaim>>>
        {
            private readonly IUserClaimRepository _userClaimDal;

            public GetUserClaimsQueryHandler(IUserClaimRepository userClaimDal)
            {
                _userClaimDal = userClaimDal;
            }

            public async Task<IDataResult<IEnumerable<UserClaim>>> Handle(GetUserClaimsQuery request, CancellationToken cancellationToken)
            {
                return new SuccessDataResult<IEnumerable<UserClaim>>(await _userClaimDal.GetListAsync());
            }
        }
    }
}
