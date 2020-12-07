using Business.BusinessAspects;
using Core.Entities.Concrete;
using Core.Utilities.Results;
using DataAccess.Abstract;
using MediatR;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;

namespace Business.Handlers.UserClaims.Queries
{
    [SecuredOperation]
    public class GetUserClaimQuery : IRequest<IDataResult<IEnumerable<UserClaim>>>
    {
        public int Id { get; set; }
        public class GetUserClaimQueryHandler : IRequestHandler<GetUserClaimQuery, IDataResult<IEnumerable<UserClaim>>>
        {
            private readonly IUserClaimRepository _userClaimDal;

            public GetUserClaimQueryHandler(IUserClaimRepository userClaimDal)
            {
                _userClaimDal = userClaimDal;
            }

            public async Task<IDataResult<IEnumerable<UserClaim>>> Handle(GetUserClaimQuery request, CancellationToken cancellationToken)
            {
                var userClaims = await _userClaimDal.GetListAsync(x => x.UserId == request.Id);

                return new SuccessDataResult<IEnumerable<UserClaim>>(userClaims.ToList());
            }
        }
    }
}

