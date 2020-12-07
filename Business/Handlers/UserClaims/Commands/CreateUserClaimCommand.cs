using Business.BusinessAspects;
using Business.Constants;
using Core.Entities.Concrete;
using Core.Utilities.Results;
using DataAccess.Abstract;
using MediatR;
using System.Threading;
using System.Threading.Tasks;

namespace Business.Handlers.UserClaims.Commands
{
    [SecuredOperation]
    public class CreateUserClaimCommand : IRequest<IResult>
    {
        public int UserId { get; set; }
        public int ClaimId { get; set; }
        public class CreateUserClaimCommandHandler : IRequestHandler<CreateUserClaimCommand, IResult>
        {
            private readonly IUserClaimRepository _userClaimDal;

            public CreateUserClaimCommandHandler(IUserClaimRepository userClaimDal)
            {
                _userClaimDal = userClaimDal;
            }

            public async Task<IResult> Handle(CreateUserClaimCommand request, CancellationToken cancellationToken)
            {
                var userClaim = new UserClaim
                {
                    ClaimId = request.ClaimId,
                    UserId = request.UserId
                };
                _userClaimDal.Add(userClaim);
                await _userClaimDal.SaveChangesAsync();

                return new SuccessResult(Messages.UserClaimCreated);
            }
        }
    }
}
