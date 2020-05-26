using Business.Constants;
using Core.Entities.Concrete;
using Core.Utilities.Results;
using DataAccess.Abstract;
using MediatR;
using System.Threading;
using System.Threading.Tasks;

namespace Business.Handlers.OperationClaims.Commands
{
    public class UpdateOperationClaimCommand : IRequest<IResult>
    {
        public int Id { get; set; }
        public string ClaimName { get; set; }
        public class UpdateOperationClaimCommandHandler : IRequestHandler<UpdateOperationClaimCommand, IResult>
        {
            private readonly IOperationClaimRepository _operationClaimDal;

            public UpdateOperationClaimCommandHandler(IOperationClaimRepository operationClaimDal)
            {
                _operationClaimDal = operationClaimDal;
            }

            public async Task<IResult> Handle(UpdateOperationClaimCommand request, CancellationToken cancellationToken)
            {
                var claimToUpdate = new OperationClaim
                {
                    Id = request.Id,
                    Name = request.ClaimName
                };
                _operationClaimDal.Update(claimToUpdate);
                await _operationClaimDal.SaveChangesAsync();

                return new SuccessResult(Messages.OperationClaimUpdated);
            }
        }
    }
}
