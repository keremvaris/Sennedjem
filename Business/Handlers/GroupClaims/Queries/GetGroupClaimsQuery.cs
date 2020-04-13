using Core.Entities.Concrete;
using Core.Utilities.Results;
using DataAccess.Abstract;
using MediatR;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace Business.Handlers.GroupClaims.Queries
{
    public class GetGroupClaimsQuery:IRequest<IDataResult<IEnumerable<GroupClaim>>>
    {

        public class GetGroupClaimsQueryHandler : IRequestHandler<GetGroupClaimsQuery, IDataResult<IEnumerable<GroupClaim>>>
        {
            private readonly IGroupClaimDal _groupClaimDal;

            public GetGroupClaimsQueryHandler(IGroupClaimDal groupClaimDal)
            {
                _groupClaimDal = groupClaimDal;
            }

            public async Task<IDataResult<IEnumerable<GroupClaim>>> Handle(GetGroupClaimsQuery request, CancellationToken cancellationToken)
            {
                return new SuccessDataResult<IEnumerable<GroupClaim>>(await _groupClaimDal.GetListAsync());
            }
        }
    }
}
