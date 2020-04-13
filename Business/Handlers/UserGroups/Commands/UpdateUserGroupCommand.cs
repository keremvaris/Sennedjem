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
      private readonly IUserGroupDal _userGroupDal;

      public UpdateUserGroupCommandHandler(IUserGroupDal userGroupDal)
      {
        _userGroupDal = userGroupDal;
      }

      public async Task<IResult> Handle(UpdateUserGroupCommand request, CancellationToken cancellationToken)
      {
        var userGroupToUpdate = new UserGroup
        {
          GroupId = request.GroupId,
          UserId = request.UserId,
          Id = request.Id
        };

        await _userGroupDal.UpdateAsync(userGroupToUpdate);

        return new SuccessResult(Messages.UserGroupUpdated);

      }
    }
  }
}
