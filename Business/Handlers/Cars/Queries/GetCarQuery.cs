
using Business.BusinessAspects;
using Core.Utilities.Results;
using DataAccess.Abstract;
using Entities.Concrete;
using MediatR;
using System.Threading;
using System.Threading.Tasks;
using Core.Aspects.Autofac.Logging;
using Core.CrossCuttingConcerns.Logging.Serilog.Loggers;

namespace Business.Handlers.Cars.Queries
{
    [SecuredOperation]
    public class GetCarQuery : IRequest<IDataResult<Car>>
    {
        public int CarId { get; set; }

        public class GetCarQueryHandler : IRequestHandler<GetCarQuery, IDataResult<Car>>
        {
            private readonly ICarRepository _carRepository;
            private readonly IMediator _mediator;

            public GetCarQueryHandler(ICarRepository carRepository, IMediator mediator)
            {
                _carRepository = carRepository;
                _mediator = mediator;
            }
            [LogAspect(typeof(FileLogger))]
            public async Task<IDataResult<Car>> Handle(GetCarQuery request, CancellationToken cancellationToken)
            {
                var car = await _carRepository.GetAsync(p => p.CarId == request.CarId);
                return new SuccessDataResult<Car>(car);
            }
        }
    }
}
