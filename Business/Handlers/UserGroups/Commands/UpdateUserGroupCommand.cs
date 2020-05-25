using Business.Constants;
using Core.Entities.Concrete;
using Core.Utilities.Results;
using DataAccess.Abstract;
using MediatR;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace Business.Handlers.UserGroups.Commands
{
  public class UpdateUserGroupCommand : IRequest<IResult>
  {
    public int Id { get; set; }
    public int UserId { get; set; }
    public int GroupId { get; set; }

    public class UpdateUserGroupCommandHandler : IRequestHandler<UpdateUserGroupCommand, IResult>
    {
      private readonly IUserGroupRepository _userGroupDal;

      public UpdateUserGroupCommandHandler(IUserGroupRepository userGroupDal)
      {
        _userGroupDal = userGroupDal;
      }

      public async Task<IResult> Handle(UpdateUserGroupCommand request, CancellationToken cancellationToken)
      {
        var userGroupToUpdate = new UserGroup
        {
          GroupId = request.GroupId,
          UserId = request.UserId,
        };

        _userGroupDal.Update(userGroupToUpdate);
        await _userGroupDal.SaveChangesAsync();
        return new SuccessResult(Messages.UserGroupUpdated);

      }
    }
  }
}
