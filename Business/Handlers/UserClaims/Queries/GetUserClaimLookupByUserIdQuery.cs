using Business.BusinessAspects;
using Business.Handlers.OperationClaims.Queries;
using Core.Entities.Concrete;
using Core.Utilities.Results;
using DataAccess.Abstract;
using DataAccess.Entities.Dtos;
using MediatR;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;

namespace Business.Handlers.UserClaims.Queries
{
    [SecuredOperation]
    public class GetUserClaimLookupByUserIdQuery : IRequest<IDataResult<IEnumerable<SelectionItem>>>
    {
        public int Id { get; set; }
        public class GetUserClaimLookupByUserIdQueryHandler : IRequestHandler<GetUserClaimLookupByUserIdQuery, IDataResult<IEnumerable<SelectionItem>>>
        {
            private readonly IUserClaimRepository _userClaimDal;
            private readonly IMediator _mediator;

            public GetUserClaimLookupByUserIdQueryHandler(IUserClaimRepository userClaimDal, IMediator mediator)
            {
                _userClaimDal = userClaimDal;
                _mediator = mediator;
            }

            public async Task<IDataResult<IEnumerable<SelectionItem>>> Handle(GetUserClaimLookupByUserIdQuery request, CancellationToken cancellationToken)
            {
                var data = await _userClaimDal.GetUserClaimSelectedList(request.Id);
                return new SuccessDataResult<IEnumerable<SelectionItem>>(data);
            }
        }
    }
}

