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
    public class UpdateGroupCommand:IRequest<IResult>
    {
        public int Id { get; set; }
        public string GroupName { get; set; }

        public class UpdateGroupCommandHandler : IRequestHandler<UpdateGroupCommand, IResult>
        {
            private readonly IGroupDal _groupDal;

            public UpdateGroupCommandHandler(IGroupDal groupDal)
            {
                _groupDal = groupDal;
            }

            public async Task<IResult> Handle(UpdateGroupCommand request, CancellationToken cancellationToken)
            {
                var groupToUpdate = new Group
                {
                    Id = request.Id,
                    GroupName = request.GroupName
                };

                await _groupDal.UpdateAsync(groupToUpdate);
                return new SuccessResult(Messages.GroupUpdated);
            }
        }
    }
}
