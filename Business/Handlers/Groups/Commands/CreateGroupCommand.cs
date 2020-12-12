using Business.BusinessAspects;
using Business.Constants;
using Core.Entities.Concrete;
using Core.Utilities.Results;
using DataAccess.Abstract;
using MediatR;
using System.Threading;
using System.Threading.Tasks;

namespace Business.Handlers.Groups.Commands
{
    [SecuredOperation]
    public class CreateGroupCommand : IRequest<IResult>
    {
        public string Name { get; set; }
        public class CreateGroupCommandHandler : IRequestHandler<CreateGroupCommand, IResult>
        {
            private readonly IGroupRepository _groupRepository;

            public CreateGroupCommandHandler(IGroupRepository groupRepository)
            {
                _groupRepository = groupRepository;
            }

            public async Task<IResult> Handle(CreateGroupCommand request, CancellationToken cancellationToken)
            {
                var group = new Group
                {
                    GroupName = request.Name
                };
                _groupRepository.Add(group);
                await _groupRepository.SaveChangesAsync();
                return new SuccessResult(Messages.GroupAdded);
            }
        }
    }
}
