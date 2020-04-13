using Business.Constants;
using Core.Entities.Concrete;
using Core.Utilities.Results;
using DataAccess.Abstract;
using MediatR;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace Business.Handlers.OperationClaims.Commands
{
  public class DeleteOperationClaimCommand : IRequest<IResult>
  {
    public int Id { get; set; }
    public class DeleteOperationClaimCommandHandler : IRequestHandler<DeleteOperationClaimCommand, IResult>
    {
      private readonly IOperationClaimDal _operationClaimDal;

      public DeleteOperationClaimCommandHandler(IOperationClaimDal operationClaimDal)
      {
        _operationClaimDal = operationClaimDal;
      }

      public async Task<IResult> Handle(DeleteOperationClaimCommand request, CancellationToken cancellationToken)
      {
        var claimToDelete = await _operationClaimDal.GetAsync(x => x.Id == request.Id);
        await _operationClaimDal.DeleteAsync(claimToDelete);

        return new SuccessResult(Messages.OperationClaimDeleted);
      }
    }
  }
}
