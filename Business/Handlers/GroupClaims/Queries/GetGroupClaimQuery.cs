using Core.Entities.Concrete;
using Core.Utilities.Results;
using DataAccess.Abstract;
using MediatR;
using System.Threading;
using System.Threading.Tasks;

namespace Business.Handlers.GroupClaims.Queries
{
    public class GetGroupClaimQuery : IRequest<IDataResult<GroupClaim>>
    {
        public int Id { get; set; }

        public class GetGroupClaimQueryHandler : IRequestHandler<GetGroupClaimQuery, IDataResult<GroupClaim>>
        {
            private readonly IGroupClaimRepository _groupClaimDal;

            public GetGroupClaimQueryHandler(IGroupClaimRepository groupClaimDal)
            {
                _groupClaimDal = groupClaimDal;
            }

            public async Task<IDataResult<GroupClaim>> Handle(GetGroupClaimQuery request, CancellationToken cancellationToken)
            {
                return new SuccessDataResult<GroupClaim>(await _groupClaimDal.GetAsync(x => x.GroupId == request.Id));
            }
        }
    }
}
