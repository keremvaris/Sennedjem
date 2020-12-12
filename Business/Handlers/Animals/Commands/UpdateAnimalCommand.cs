
using Business.BusinessAspects;
using Business.Constants;
using Core.Aspects.Autofac.Caching;
using Core.Utilities.Results;
using DataAccess.Abstract;
using MediatR;
using System.Threading;
using System.Threading.Tasks;

namespace Business.Handlers.Animals.Commands
{
    /// <summary>
    /// CQRS yaklaşımında oluşturulmuş bir Command sınıfıdır. Bir kategorinin güncellenmesini sağlar
    /// </summary>
    [SecuredOperation]
    public class UpdateAnimalCommand : IRequest<IResult>
    {

        public int AnimalId { get; set; }
        public string AnimalName { get; set; }
        public class UpdateAnimalCommandHandler : IRequestHandler<UpdateAnimalCommand, IResult>
        {
            private readonly IAnimalRepository _animalRepository;

            public UpdateAnimalCommandHandler(IAnimalRepository animalRepository)
            {
                _animalRepository = animalRepository;
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

            public async Task<IResult> Handle(UpdateAnimalCommand request, CancellationToken cancellationToken)
            {
                var isanimalExits = await _animalRepository.GetAsync(u => u.AnimalId == request.AnimalId);

                //Tüm alanlar aşağıdaki örnekteki gibi yazılacak
                isanimalExits.AnimalName = request.AnimalName;

                _animalRepository.Update(isanimalExits);
                await _animalRepository.SaveChangesAsync();
                return new SuccessResult(Messages.Updated);
            }
        }
    }
}

