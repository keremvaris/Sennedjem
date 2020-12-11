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

namespace Business.Handlers.UserGroups.Queries
{
    [SecuredOperation]
    public class GetUserGroupLookupQuery : IRequest<IDataResult<IEnumerable<SelectionItem>>>
    {
        public int UserId;
        public class GetUserGroupLookupQueryHandler : IRequestHandler<GetUserGroupLookupQuery, IDataResult<IEnumerable<SelectionItem>>>
        {
            private readonly IUserGroupRepository _userGroupDal;

            public GetUserGroupLookupQueryHandler(IUserGroupRepository userGroupDal)
            {
                _userGroupDal = userGroupDal;
            }

            public async Task<IDataResult<IEnumerable<SelectionItem>>> Handle(GetUserGroupLookupQuery request, CancellationToken cancellationToken)
            {
                var data = await _userGroupDal.GetUserGroupSelectedList(request.UserId);
                return new SuccessDataResult<IEnumerable<SelectionItem>>(data);

            }
        }
    }
}
