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

namespace Business.Handlers.GroupClaims.Commands
{
  public class UpdateGroupClaimCommand : IRequest<IResult>
  {
    public int Id { get; set; }
    public int GroupId { get; set; }
    public int ClaimId { get; set; }
    public class UpdateGroupClaimCommandHandler : IRequestHandler<UpdateGroupClaimCommand, IResult>
    {
      private readonly IGroupClaimRepository _groupClaimDal;

      public UpdateGroupClaimCommandHandler(IGroupClaimRepository groupClaimDal)
      {
        _groupClaimDal = groupClaimDal;
      }

      public async Task<IResult> Handle(UpdateGroupClaimCommand request, CancellationToken cancellationToken)
      {
        var entityToUpdate = new GroupClaim
        {
          ClaimId = request.ClaimId,
          GroupId = request.GroupId,
        };
        _groupClaimDal.Update(entityToUpdate);
        await _groupClaimDal.SaveChangesAsync();

        return new SuccessResult(Messages.GroupClaimUpdated);
      }
    }
  }
}
