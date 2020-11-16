
using Business.BusinessAspects;
using Core.Aspects.Autofac.Performance;
using Core.Utilities.Results;
using DataAccess.Abstract;
using Entities.Concrete;
using MediatR;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;
using Core.Aspects.Autofac.Logging;
using Core.CrossCuttingConcerns.Logging.Serilog.Loggers;

namespace Business.Handlers.Cars.Queries
{
    [SecuredOperation]
    public class GetCarsQuery : IRequest<IDataResult<IEnumerable<Car>>>
    {
        public class GetCarsQueryHandler : IRequestHandler<GetCarsQuery, IDataResult<IEnumerable<Car>>>
        {
            private readonly ICarRepository _carRepository;
            private readonly IMediator _mediator;

            public GetCarsQueryHandler(ICarRepository carRepository, IMediator mediator)
            {
                _carRepository = carRepository;
                _mediator = mediator;
            }

            [PerformanceAspect(5)]
            //[CacheAspect(10)]
            [LogAspect(typeof(FileLogger))]
            public async Task<IDataResult<IEnumerable<Car>>> Handle(GetCarsQuery request, CancellationToken cancellationToken)
            {
                return new SuccessDataResult<IEnumerable<Car>>(await _carRepository.GetListAsync());
            }
        }
    }
}