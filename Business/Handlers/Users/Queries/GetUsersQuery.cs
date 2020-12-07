using Business.BusinessAspects;
using Core.Aspects.Autofac.Logging;
using Core.Aspects.Autofac.Performance;
using Core.CrossCuttingConcerns.Logging.Serilog.Loggers;
using Core.Entities.Concrete;
using Core.Utilities.Results;
using DataAccess.Abstract;
using MediatR;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace Business.Handlers.Users.Queries
{
    [SecuredOperation]
    public class GetUsersQuery : IRequest<IDataResult<IEnumerable<User>>>
    {
        public class GetUsersQueryHandler : IRequestHandler<GetUsersQuery, IDataResult<IEnumerable<User>>>
        {
            private readonly IUserRepository _userRepository;

            public GetUsersQueryHandler(IUserRepository userRepository)
            {
                _userRepository = userRepository;
            }

            [PerformanceAspect(5)]
            //[CacheAspect(10)]
            [LogAspect(typeof(FileLogger))]
            public async Task<IDataResult<IEnumerable<User>>> Handle(GetUsersQuery request, CancellationToken cancellationToken)
            {
                //throw new System.Exception("test exception");
                return new SuccessDataResult<IEnumerable<User>>(await _userRepository.GetListAsync());
            }
        }
    }
}
