using Core.Entities.Concrete;
using Core.Utilities.Results;
using DataAccess.Abstract;
using MediatR;
using System.Threading;
using System.Threading.Tasks;

namespace Business.Handlers.UserClaims.Queries
{
    public class GetUserClaimQuery : IRequest<IDataResult<UserClaim>>
    {
        public int Id { get; set; }
        public class GetUserClaimQueryHandler : IRequestHandler<GetUserClaimQuery, IDataResult<UserClaim>>
        {
            private readonly IUserClaimRepository _userClaimDal;

            public GetUserClaimQueryHandler(IUserClaimRepository userClaimDal)
            {
                _userClaimDal = userClaimDal;
            }

            public async Task<IDataResult<UserClaim>> Handle(GetUserClaimQuery request, CancellationToken cancellationToken)
            {
                return new SuccessDataResult<UserClaim>(await _userClaimDal.GetAsync(x => x.UserId == request.Id));
            }
        }
    }
}
