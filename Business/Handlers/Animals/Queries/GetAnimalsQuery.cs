using Business.BusinessAspects;
using Core.Aspects.Autofac.Logging;
using Core.Aspects.Autofac.Performance;
using Core.CrossCuttingConcerns.Logging.Serilog.Loggers;
using Core.Utilities.Results;
using DataAccess.Abstract;
using Entities.Concrete;
using MediatR;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;

namespace Business.Handlers.Animals.Queries
{
    [SecuredOperation]
    public class GetAnimalsQuery : IRequest<IDataResult<IEnumerable<Animal>>>
    {
        public class GetAnimalsQueryHandler : IRequestHandler<GetAnimalsQuery, IDataResult<IEnumerable<Animal>>>
        {
            private readonly IAnimalRepository _animalRepository;

            public GetAnimalsQueryHandler(IAnimalRepository animalRepository)
            {
                _animalRepository = animalRepository;
            }

            [PerformanceAspect(5)]
            //[CacheAspect(10)]
            [LogAspect(typeof(FileLogger))]
            public async Task<IDataResult<IEnumerable<Animal>>> Handle(GetAnimalsQuery request, CancellationToken cancellationToken)
            {
                //throw new System.Exception("test exception");
                return new SuccessDataResult<IEnumerable<Animal>>(await _animalRepository.GetListAsync());
            }
        }
    }
}