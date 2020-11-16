
using Business.Constants;
using Core.Aspects.Autofac.Caching;
using Business.BusinessAspects;
using Core.Aspects.Autofac.Logging;
using Core.CrossCuttingConcerns.Logging.Serilog.Loggers;
using Core.Utilities.Results;
using DataAccess.Abstract;
using MediatR;
using System.Threading;
using System.Threading.Tasks;

namespace Business.Handlers.Cars.Commands
{
    /// <summary>
    /// CQRS yaklaşımında oluşturulmuş bir Command sınıftır. Bir kategorinin silinmesini sağlar
    /// </summary>
    [SecuredOperation]
    public class DeleteCarCommand : IRequest<IResult>
    {
        public int CarId { get; set; }

        public class DeleteCarCommandHandler : IRequestHandler<DeleteCarCommand, IResult>
        {
            private readonly ICarRepository _carRepository;
            private readonly IMediator _mediator;

            public DeleteCarCommandHandler(ICarRepository carRepository, IMediator mediator)
            {
                _carRepository = carRepository;
                _mediator = mediator;
            }
            /// <summary>
            /// Aspectler her zaman hadler üzerinde kullanılmalıdır.
            /// Kullanıcı arayüzünden bir Id alır ve silinmek istenen kategori doğrulanır.
            /// Kategori silinebilirse sadece mesaj döner.
            /// iş kuralları burada yazılır.
            /// </summary>
            /// <param name="request"></param>
            /// <param name="cancellationToken"></param>
            /// <returns></returns>
            [CacheRemoveAspect("Get")]
            [LogAspect(typeof(FileLogger))]
            public async Task<IResult> Handle(DeleteCarCommand request, CancellationToken cancellationToken)
            {
                var carToDelete = _carRepository.Get(p => p.CarId == request.CarId);

                _carRepository.Delete(carToDelete);
                await _carRepository.SaveChangesAsync();
                return new SuccessResult(Messages.Deleted);
            }
        }
    }
}

