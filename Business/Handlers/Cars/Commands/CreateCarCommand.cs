
using Business.BusinessAspects;
using Business.Constants;
using Core.Aspects.Autofac.Caching;
using Core.Aspects.Autofac.Logging;
using Core.Aspects.Autofac.Validation;
using Core.CrossCuttingConcerns.Logging.Serilog.Loggers;
using Core.Utilities.Results;
using DataAccess.Abstract;
using Entities.Concrete;
using MediatR;
using System.Threading;
using System.Threading.Tasks;
using System.Linq;
using Business.Handlers.Cars.ValidationRules;
namespace Business.Handlers.Cars.Commands
{
    /// <summary>
    /// 
    /// </summary>
    [SecuredOperation]
    public class CreateCarCommand : IRequest<IResult>
    {
        ///Request'ten gelecek degerler buraya yazılır.Örneğin:

        public string CarName { get; set; }

        public class CreateCarCommandHandler : IRequestHandler<CreateCarCommand, IResult>
        {
            private readonly ICarRepository _carRepository;
            private readonly IMediator _mediator;
            public CreateCarCommandHandler(ICarRepository carRepository, IMediator mediator)
            {
                _carRepository = carRepository;
                _mediator = mediator;
            }
            /// <summary>
            /// Eğer farklı bir sınıf veya metod çağırılması gerekiyorsa MediatR kütüphanesi yardımıyla çağırılır
            /// Örneğin:  var result = await _mediator.Send(new GetAnimalsCountQuery());
            /// </summary>
            /// <param name="request"></param>
            /// <param name="cancellationToken"></param>
            /// <returns></returns>
            [ValidationAspect(typeof(CreateCarValidator), Priority = 1)]
            [CacheRemoveAspect("Get")]
            [LogAspect(typeof(FileLogger))]
            public async Task<IResult> Handle(CreateCarCommand request, CancellationToken cancellationToken)
            {
                var isThereCarRecord = _carRepository.Query().Any(u => u.CarName == request.CarName);

                if (isThereCarRecord == true)
                    return new ErrorResult(Messages.NameAlreadyExist);

                var addedCar = new Car
                {
                    CarName = request.CarName
                };

                _carRepository.Add(addedCar);
                await _carRepository.SaveChangesAsync();
                return new SuccessResult(Messages.Added);
            }
        }
    }
}