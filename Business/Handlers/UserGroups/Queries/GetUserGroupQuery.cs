
using Business.BusinessAspects;
using Core.Entities.Concrete;
using Core.Utilities.Results;
using DataAccess.Abstract;
using Entities.Concrete;
using MediatR;
using System.Threading;
using System.Threading.Tasks;

namespace Business.Handlers.UserGroups.Queries
{
    [SecuredOperation]
    public class GetProductQuery : IRequest<IDataResult<UserGroup>>
    {
        public int UserId { get; set; }

        public class GetProductQueryHandler : IRequestHandler<GetProductQuery, IDataResult<UserGroup>>
        {
            private readonly IUserGroupRepository _userGroupDal;

            public GetProductQueryHandler(IUserGroupRepository userGroupDal)
            {
                _userGroupDal = userGroupDal;
            }

            public async Task<IDataResult<UserGroup>> Handle(GetProductQuery request, CancellationToken cancellationToken)
            {
                var userGroup = await _userGroupDal.GetAsync(p => p.UserId == request.UserId);
                return new SuccessDataResult<UserGroup>(userGroup);
            }
        }
    }
}
