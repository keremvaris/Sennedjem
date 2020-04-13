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
    public class GetGroupClaimQuery:IRequest<IDataResult<GroupClaim>>
    {
        public int Id { get; set; }

        public class GetGroupClaimQueryHandler : IRequestHandler<GetGroupClaimQuery, IDataResult<GroupClaim>>
        {
            private readonly IGroupClaimDal _groupClaimDal;

            public GetGroupClaimQueryHandler(IGroupClaimDal groupClaimDal)
            {
                _groupClaimDal = groupClaimDal;
            }

            public async Task<IDataResult<GroupClaim>> Handle(GetGroupClaimQuery request, CancellationToken cancellationToken)
            {
                return new SuccessDataResult<GroupClaim>(await _groupClaimDal.GetAsync(x => x.Id == request.Id));
            }
        }
    }
}
