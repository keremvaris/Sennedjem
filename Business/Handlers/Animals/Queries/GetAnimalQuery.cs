
using Business.BusinessAspects.Autofac;
using Core.Utilities.Results;
using DataAccess.Abstract;
using Entities.Concrete;
using MediatR;
using System.Threading;
using System.Threading.Tasks;

namespace Business.Handlers.Animals.Queries
{
    [SecuredOperation]
    public class GetAnimalQuery : IRequest<IDataResult<Animal>>
    {
        public int AnimalId { get; set; }

        class GetAnimalQueryHandler : IRequestHandler<GetAnimalQuery, IDataResult<Animal>>
        {
            private readonly IAnimalDal _animalDal;

            public GetAnimalQueryHandler(IAnimalDal animalDal)
            {
                _animalDal = animalDal;
            }

            public async Task<IDataResult<Animal>> Handle(GetAnimalQuery request, CancellationToken cancellationToken)
            {
                var animal = await _animalDal.GetAsync(p => p.AnimalId == request.AnimalId);
                return new SuccessDataResult<Animal>(animal);
            }
        }
    }
}
