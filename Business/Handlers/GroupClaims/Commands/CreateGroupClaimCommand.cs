using Business.Constants;
using Core.Entities.Concrete;
using Core.Utilities.Results;
using DataAccess.Abstract;
using MediatR;
using System.Threading;
using System.Threading.Tasks;

namespace Business.Handlers.GroupClaims.Commands
{
  public class CreateGroupClaimCommand : IRequest<IResult>
  {
    public string ClaimName { get; set; }

    public class CreateGroupClaimCommandHandler : IRequestHandler<CreateGroupClaimCommand, IResult>
    {
      private readonly IOperationClaimDal _operationClaimDal;

      public CreateGroupClaimCommandHandler(IOperationClaimDal operationClaimDal)
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
        await _operationClaimDal.AddAsync(operationClaim);

        return new SuccessResult(Messages.OperationClaimAdded);
      }
      private bool IsClaimExists(string claimName)
      {
        return _operationClaimDal.Get(x => x.Name == claimName) is null ? false : true;
      }
    }
  }
}
