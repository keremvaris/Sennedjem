
using Business.Constants;
using Business.BusinessAspects;
using Core.Aspects.Autofac.Caching;
using Core.Aspects.Autofac.Logging;
using Core.CrossCuttingConcerns.Logging.Serilog.Loggers;
using Core.Utilities.Results;
using DataAccess.Abstract;
using Entities.Concrete;
using MediatR;
using System.Threading;
using System.Threading.Tasks;
using System.Linq;
using Core.Aspects.Autofac.Validation;
using Business.Handlers.Cars.ValidationRules;
namespace Business.Handlers.Cars.Commands
{
    /// <summary>
    /// CQRS yaklaşımında oluşturulmuş bir Command sınıfıdır. Bir kategorinin güncellenmesini sağlar
    /// </summary>
    [SecuredOperation]
    public class UpdateCarCommand : IRequest<IResult>
    {
        //Request olarak gelmesi beklenen propertyler buraya yazılacak
        //Aşağıdaki alanlar Örnek olması için otomatik olarak yazılmıştır.
        public int CarId { get; set; }
        public string CarName { get; set; }
        public class UpdateCarCommandHandler : IRequestHandler<UpdateCarCommand, IResult>
        {
            private readonly ICarRepository _carRepository;
            private readonly IMediator _mediator;

            public UpdateCarCommandHandler(ICarRepository carRepository, IMediator mediator)
            {
                _carRepository = carRepository;
                _mediator = mediator;
            }

            /// <summary>
            /// Handler bir kategorinin var olup olmadığını doğrular
            /// eğer yoksa yeni bir kategorinin güncellenmesine izin verir.
            /// Aspectler her zaman hadler üzerinde kullanılmalıdır.
            /// Aşağıda validation, cacheremove ve log aspect Örnekleri kullanılmıştır.
            /// eğer kategori başarıyla eklenmişse sadece mesaj dÖner.
            /// Eğer farklı bir sınıf veya metod çağırılması gerekiyorsa MediatR kütüphanesi yardımıyla çağırılır
            /// Örneğin:  var result = await _mediator.Send(new GetAnimalsCountQuery());
            /// </summary>
            /// <param name="request"></param>
            /// <param name="cancellationToken"></param>
            /// <returns></returns>
            [ValidationAspect(typeof(CreateCarValidator), Priority = 1)]
            [CacheRemoveAspect("Get")]
            [LogAspect(typeof(FileLogger))]
            public async Task<IResult> Handle(UpdateCarCommand request, CancellationToken cancellationToken)
            {
                var isThereCarRecord = await _carRepository.GetAsync(u => u.CarId == request.CarId);

                //Güncellenmesi istenen alanlar aşağıdaki Örnekteki gibi yazılmalıdır.
                //isThereCarRecord.CarName = request.CarName;               

                _carRepository.Update(isThereCarRecord);
                await _carRepository.SaveChangesAsync();
                return new SuccessResult(Messages.Updated);
            }
        }
    }
}

