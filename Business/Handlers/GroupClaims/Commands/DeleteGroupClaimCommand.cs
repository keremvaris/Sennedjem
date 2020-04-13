using Business.BusinessAspects.Autofac;
using Business.Constants;
using Core.Utilities.Results;
using DataAccess.Abstract;
using MediatR;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace Business.Handlers.GroupClaims.Commands
{
  [SecuredOperation]
  public class DeleteGroupClaimCommand : IRequest<IResult>
  {
    public int Id { get; set; }

    public class DeleteGroupClaimCommandHandler : IRequestHandler<DeleteGroupClaimCommand, IResult>
    {
      private readonly IGroupClaimDal _groupClaimDal;

      public DeleteGroupClaimCommandHandler(IGroupClaimDal groupClaimDal)
      {
        _groupClaimDal = groupClaimDal;
      }

      public async Task<IResult> Handle(DeleteGroupClaimCommand request, CancellationToken cancellationToken)
      {
        var groupClaimToDelete = await _groupClaimDal.GetAsync(x => x.Id == request.Id);

        await _groupClaimDal.DeleteAsync(groupClaimToDelete);

        return new SuccessResult(Messages.GroupClaimDeleted);
      }
    }
  }
}
