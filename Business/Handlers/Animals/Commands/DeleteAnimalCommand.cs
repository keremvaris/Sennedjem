
using Business.Constants;
using Core.Aspects.Autofac.Caching;
using Core.Aspects.Autofac.Logging;
using Core.CrossCuttingConcerns.Logging.NLog.Loggers;
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
    public class DeleteAnimalCommand : IRequest<IResult>
    {
        public int AnimalId { get; set; }

        public class DeleteAnimalCommandHandler : IRequestHandler<DeleteAnimalCommand, IResult>
        {
            private readonly IAnimalDal _animalDal;

            public DeleteAnimalCommandHandler(IAnimalDal animalDal)
            {
                _animalDal = animalDal;
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
            [LogAspect(typeof(PgSqlLogger))]
            public async Task<IResult> Handle(DeleteAnimalCommand request, CancellationToken cancellationToken)
            {
                var animalToDelete = _animalDal.Get(p => p.AnimalId == request.AnimalId);

                await _animalDal.DeleteAsync(animalToDelete);
                return new SuccessResult(Messages.Deleted);
            }
        }
    }
}

