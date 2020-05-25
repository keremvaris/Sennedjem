using Business.Constants;
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
  public class DeleteUserGroupCommand : IRequest<IResult>
  {
    public int Id { get; set; }

    public class DeleteUserGroupCommandHandler : IRequestHandler<DeleteUserGroupCommand, IResult>
    {
      private readonly IUserGroupRepository _userGroupDal;

      public DeleteUserGroupCommandHandler(IUserGroupRepository userGroupDal)
      {
        _userGroupDal = userGroupDal;
      }

      public async Task<IResult> Handle(DeleteUserGroupCommand request, CancellationToken cancellationToken)
      {
        var entityToDelete = await _userGroupDal.GetAsync(x => x.UserId == request.Id);

        _userGroupDal.Delete(entityToDelete);
        await _userGroupDal.SaveChangesAsync();

        return new SuccessResult(Messages.UserGroupDeleted);
      }
    }
  }
}
