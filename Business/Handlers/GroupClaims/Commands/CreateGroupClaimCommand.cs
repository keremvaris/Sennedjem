using Business.BusinessAspects;
using Business.Constants;
using Core.Entities.Concrete;
using Core.Utilities.Results;
using DataAccess.Abstract;
using MediatR;
using System.Threading;
using System.Threading.Tasks;

namespace Business.Handlers.GroupClaims.Commands
{
    [SecuredOperation]
    public class CreateGroupClaimCommand : IRequest<IResult>
    {
        public string ClaimName { get; set; }

        public class CreateGroupClaimCommandHandler : IRequestHandler<CreateGroupClaimCommand, IResult>
        {
            private readonly IOperationClaimRepository _operationClaimDal;

            public CreateGroupClaimCommandHandler(IOperationClaimRepository operationClaimDal)
            {
                _operationClaimDal = operationClaimDal;
            }

            public async Task<IResult> Handle(CreateGroupClaimCommand request, CancellationToken cancellationToken)
            {

                if (IsClaimExists(request.ClaimName))
                    return new ErrorResult(Messages.OperationClaimExists);

                var operationClaim = new OperationClaim
                {
                    Name = request.ClaimName
                };
                _operationClaimDal.Add(operationClaim);
                await _operationClaimDal.SaveChangesAsync();

                return new SuccessResult(Messages.OperationClaimAdded);
            }
            private bool IsClaimExists(string claimName)
            {
                return !(_operationClaimDal.Get(x => x.Name == claimName) is null);
            }
        }
    }
}
