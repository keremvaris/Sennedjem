using Business.BusinessAspects;
using Core.Aspects.Autofac.Logging;
using Core.CrossCuttingConcerns.Logging.Serilog.Loggers;
using Core.Entities.Concrete;
using Core.Utilities.Results;
using DataAccess.Abstract;
using MediatR;
using System.Threading;
using System.Threading.Tasks;

namespace Business.Handlers.Users.Queries
{
    [SecuredOperation]
    public class GetUserQuery : IRequest<IDataResult<User>>
    {
        public int UserId { get; set; }

        public class GetAnimalQueryHandler : IRequestHandler<GetUserQuery, IDataResult<User>>
        {
            private readonly IUserRepository _userRepository;

            public GetAnimalQueryHandler(IUserRepository userRepository)
            {
                _userRepository = userRepository;
            }

            [LogAspect(typeof(LogstashLogger))]
            public async Task<IDataResult<User>> Handle(GetUserQuery request, CancellationToken cancellationToken)
            {
                var user = await _userRepository.GetAsync(p => p.UserId == request.UserId);
                return new SuccessDataResult<User>(user);
            }
        }
    }
}
