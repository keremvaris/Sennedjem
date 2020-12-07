﻿using Business.BusinessAspects;
using Business.Constants;
using Core.Entities.Concrete;
using Core.Utilities.Results;
using DataAccess.Abstract;
using MediatR;
using System.Threading;
using System.Threading.Tasks;

namespace Business.Handlers.UserGroups.Commands
{
    [SecuredOperation]
    public class CreateUserGroupCommand : IRequest<IResult>
    {

        public int GroupId { get; set; }
        public int UserId { get; set; }

        public class CreateUserGroupCommandHandler : IRequestHandler<CreateUserGroupCommand, IResult>
        {
            private readonly IUserGroupRepository _userGroupDal;

            public CreateUserGroupCommandHandler(IUserGroupRepository userGroupDal)
            {
                _userGroupDal = userGroupDal;
            }

            public async Task<IResult> Handle(CreateUserGroupCommand request, CancellationToken cancellationToken)
            {
                var userGroup = new UserGroup
                {
                    GroupId = request.GroupId,
                    UserId = request.UserId
                };

                _userGroupDal.Add(userGroup);
                await _userGroupDal.SaveChangesAsync();

                return new SuccessResult(Messages.UserGroupAdded);
            }
        }
    }
}
