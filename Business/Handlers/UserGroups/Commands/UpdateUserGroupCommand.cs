using Business.BusinessAspects;
using Business.Constants;
using Core.Entities.Concrete;
using Core.Utilities.Results;
using DataAccess.Abstract;
using MediatR;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;

namespace Business.Handlers.UserGroups.Commands
{
    [SecuredOperation]
    public class UpdateUserGroupCommand : IRequest<IResult>
    {
        public int Id { get; set; }
        public int UserId { get; set; }
        public int[] GroupId { get; set; }

        public class UpdateUserGroupCommandHandler : IRequestHandler<UpdateUserGroupCommand, IResult>
        {
            private readonly IUserGroupRepository _userGroupDal;

            public UpdateUserGroupCommandHandler(IUserGroupRepository userGroupDal)
            {
                _userGroupDal = userGroupDal;
            }

            public async Task<IResult> Handle(UpdateUserGroupCommand request, CancellationToken cancellationToken)
            {

                var userGroupList = request.GroupId.Select(x => new UserGroup() { GroupId = x, UserId = request.UserId });

                await _userGroupDal.BulkInsert(request.UserId, userGroupList);
                await _userGroupDal.SaveChangesAsync();
                return new SuccessResult(Messages.UserGroupUpdated);

            }
        }
    }
}
