using Business.BusinessAspects;
using Core.Utilities.Results;
using DataAccess.Abstract;
using DataAccess.Entities.Dtos;
using MediatR;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace Business.Handlers.GroupClaims.Queries
{
    [SecuredOperation]
    public class GetGroupClaimsLookupByGroupIdQuery : IRequest<IDataResult<IEnumerable<SelectionItem>>>
    {
        public int GroupId { get; set; }
        public class GetGroupClaimsLookupByGroupIdQueryHandler : IRequestHandler<GetGroupClaimsLookupByGroupIdQuery, IDataResult<IEnumerable<SelectionItem>>>
        {
            private readonly IGroupClaimRepository _groupClaimDal;

            public GetGroupClaimsLookupByGroupIdQueryHandler(IGroupClaimRepository groupClaimDal)
            {
                _groupClaimDal = groupClaimDal;
            }

            public async Task<IDataResult<IEnumerable<SelectionItem>>> Handle(GetGroupClaimsLookupByGroupIdQuery request, CancellationToken cancellationToken)
            {
                var data = await _groupClaimDal.GetGroupClaimsSelectedList(request.GroupId);
                return new SuccessDataResult<IEnumerable<SelectionItem>>(data);

            }
        }
    }
}
