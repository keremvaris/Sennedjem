
using Business.BusinessAspects.Autofac;
using Core.Aspects.Autofac.Performance;
using Core.Utilities.Results;
using DataAccess.Abstract;
using Entities.Concrete;
using MediatR;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;

namespace Business.Handlers.Animals.Queries
{
    [SecuredOperation]
    public class GetAnimalsQuery : IRequest<IDataResult<IEnumerable<Animal>>>
    {
        public class GetAnimalsQueryHandler : IRequestHandler<GetAnimalsQuery, IDataResult<IEnumerable<Animal>>>
        {
            private readonly IAnimalDal _animalDal;

            public GetAnimalsQueryHandler(IAnimalDal animalDal)
            {
                _animalDal = animalDal;
            }

            [PerformanceAspect(5)]
            //[CacheAspect(10)]
            public async Task<IDataResult<IEnumerable<Animal>>> Handle(GetAnimalsQuery request, CancellationToken cancellationToken)
            {
                return new SuccessDataResult<IEnumerable<Animal>>(await _animalDal.GetListAsync());
            }
        }
    }
}