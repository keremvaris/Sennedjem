
using Business.Constants;
using Core.Aspects.Autofac.Caching;
using Core.Aspects.Autofac.Logging;
using Core.CrossCuttingConcerns.Logging.NLog.Loggers;
using Core.Utilities.Results;
using DataAccess.Abstract;
using Entities.Concrete;
using MediatR;
using System.Threading;
using System.Threading.Tasks;

namespace Business.Handlers.Animals.Commands
{
    /// <summary>
    /// CQRS yaklaşımında oluşturulmuş bir Command sınıfıdır. Bir kategorinin güncellenmesini sağlar
    /// </summary>
    public class UpdateAnimalCommand : IRequest<IResult>
    {

        public int AnimalId { get; set; }
        public string AnimalName { get; set; }
        public class UpdateAnimalCommandHandler : IRequestHandler<UpdateAnimalCommand, IResult>
        {
            private readonly IAnimalDal _animalDal;

            public UpdateAnimalCommandHandler(IAnimalDal animalDal)
            {
                _animalDal = animalDal;
            }

            /// <summary>
            /// Handler bir kategorinin var olup olmadığını doğrular
            /// eğer yoksa yeni bir kategorinin güncellenmesine izin verir.
            /// Aspectler her zaman hadler üzerinde kullanılmalıdır.
            /// Aşağıda validation, cacheremove ve log aspect örnekleri kullanılmıştır.
            /// eğer kategori başarıyla eklenmişse sadece mesaj döner.
            /// </summary>
            /// <param name="request"></param>
            /// <param name="cancellationToken"></param>
            /// <returns></returns>
            //[ValidationAspect(typeof(CreateAnimalValidator), Priority = 1)]
            [CacheRemoveAspect("Get")]
            [LogAspect(typeof(PgSqlLogger))]
            public async Task<IResult> Handle(UpdateAnimalCommand request, CancellationToken cancellationToken)
            {
                var isanimalExits = await _animalDal.GetAsync(u => u.AnimalId == request.AnimalId);

                //Tüm alanlar aşağıdaki örnekteki gibi yazılacak
                isanimalExits.AnimalName = request.AnimalName;

                _animalDal.Update(isanimalExits);
                await _animalDal.SaveChangesAsync();
                return new SuccessResult(Messages.Updated);
            }
        }
    }
}

