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

namespace Business.Handlers.Groups.Commands
{
  public class CreateGroupCommand : IRequest<IResult>
  {
    public string GroupName { get; set; }
    public class CreateGroupCommandHandler : IRequestHandler<CreateGroupCommand, IResult>
    {
      private readonly IGroupRepository _groupDal;

      public CreateGroupCommandHandler(IGroupRepository groupDal)
      {
        _groupDal = groupDal;
      }

      public async Task<IResult> Handle(CreateGroupCommand request, CancellationToken cancellationToken)
      {
        var group = new Group
        {
          GroupName = request.GroupName
        };
        _groupDal.Add(group);
        await _groupDal.SaveChangesAsync();
        return new SuccessResult(Messages.GroupAdded);
      }
    }
  }
}
