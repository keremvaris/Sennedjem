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
    public class UpdateGroupClaimCommand : IRequest<IResult>
    {
        public int Id { get; set; }
        public int GroupId { get; set; }
        public int ClaimId { get; set; }
        public class UpdateGroupClaimCommandHandler : IRequestHandler<UpdateGroupClaimCommand, IResult>
        {
            private readonly IGroupClaimRepository _groupClaimRepository;

            public UpdateGroupClaimCommandHandler(IGroupClaimRepository groupClaimRepository)
            {
                _groupClaimRepository = groupClaimRepository;
            }

            public async Task<IResult> Handle(UpdateGroupClaimCommand request, CancellationToken cancellationToken)
            {
                var entityToUpdate = new GroupClaim
                {
                    ClaimId = request.ClaimId,
                    GroupId = request.GroupId,
                };
                _groupClaimRepository.Update(entityToUpdate);
                await _groupClaimRepository.SaveChangesAsync();

                return new SuccessResult(Messages.GroupClaimUpdated);
            }
        }
    }
}
