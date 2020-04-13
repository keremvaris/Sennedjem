using Business.Constants;
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
    public class DeleteGroupCommand : IRequest<IResult>
    {
        public int Id { get; set; }
        public class DeleteGroupCommandHandler : IRequestHandler<DeleteGroupCommand, IResult>
        {
            private readonly IGroupDal _groupDal;

            public DeleteGroupCommandHandler(IGroupDal groupDal)
            {
                _groupDal = groupDal;
            }

            public async Task<IResult> Handle(DeleteGroupCommand request, CancellationToken cancellationToken)
            {
                var groupToDelete = await _groupDal.GetAsync(x => x.Id == request.Id);

                await _groupDal.DeleteAsync(groupToDelete);

                return new SuccessResult(Messages.GroupDeleted);
            }
        }
    }
}
