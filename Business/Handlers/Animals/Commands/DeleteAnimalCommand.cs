
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
    /// CQRS yaklaşımında oluşturulmuş bir Command sınıfıdır. Bir kategorinin silinmesini sağlar
    /// </summary>
    [SecuredOperation]
    public class DeleteAnimalCommand : IRequest<IResult>
    {
        public int AnimalId { get; set; }

        public class DeleteAnimalCommandHandler : IRequestHandler<DeleteAnimalCommand, IResult>
        {
            private readonly IAnimalRepository _animalRepository;

            public DeleteAnimalCommandHandler(IAnimalRepository animalRepository)
            {
                _animalRepository = animalRepository;
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

            public async Task<IResult> Handle(DeleteAnimalCommand request, CancellationToken cancellationToken)
            {
                var animalToDelete = _animalRepository.Get(p => p.AnimalId == request.AnimalId);

                _animalRepository.Delete(animalToDelete);
                await _animalRepository.SaveChangesAsync();
                return new SuccessResult(Messages.Deleted);
            }
        }
    }
}

