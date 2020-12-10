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
    public class GetUserGroupSelectedListQuery : IRequest<IDataResult<IEnumerable<SelectionItem>>>
    {
        public int UserId;
        public class GetUserGroupSelectedListQueryHandler : IRequestHandler<GetUserGroupSelectedListQuery, IDataResult<IEnumerable<SelectionItem>>>
        {
            private readonly IUserGroupRepository _userGroupDal;

            public GetUserGroupSelectedListQueryHandler(IUserGroupRepository userGroupDal)
            {
                _userGroupDal = userGroupDal;
            }

            public async Task<IDataResult<IEnumerable<SelectionItem>>> Handle(GetUserGroupSelectedListQuery request, CancellationToken cancellationToken)
            {
                var data= await _userGroupDal.GetUserGroupSelectedList(request.UserId);
                return new SuccessDataResult<IEnumerable<SelectionItem>>(data);
            }
        }
    }
}
