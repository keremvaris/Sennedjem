
using Business.BusinessAspects.Autofac;
using Business.Constants;
using Business.ValidationRules.FluentValidation;
using Core.Aspects.Autofac.Caching;
using Core.Aspects.Autofac.Logging;
using Core.Aspects.Autofac.Validation;
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
    /// 
    /// </summary>
    [SecuredOperation]
    public class CreateAnimalCommand : IRequest<IResult>
    {
        ///Request'ten gelecek değerler buraya yazılır. Örneğin:

        public string AnimalName { get; set; }

        public class CreateAnimalCommandHandler : IRequestHandler<CreateAnimalCommand, IResult>
        {
            private readonly IAnimalDal _animalDal;

            public CreateAnimalCommandHandler(IAnimalDal animalDal)
            {
                _animalDal = animalDal;
            }
            /// <summary>
            ///            
            /// </summary>
            /// <param name="request"></param>
            /// <param name="cancellationToken"></param>
            /// <returns></returns>
            [ValidationAspect(typeof(CreateAnimalValidator), Priority = 1)]
            [CacheRemoveAspect("Get")]
            [LogAspect(typeof(PgSqlLogger))]
            public async Task<IResult> Handle(CreateAnimalCommand request, CancellationToken cancellationToken)
            {
                var isAnimalExits = await _animalDal.GetAsync(u => u.AnimalName == request.AnimalName);

                if (isAnimalExits != null)
                    return new ErrorResult(Messages.NameAlreadyExist);

                var animal = new Animal
                {
                    //classın özellikleri buraya yazılır.
                    AnimalName = request.AnimalName

                };
                await _animalDal.AddAsync(animal);
                return new SuccessResult(Messages.Added);
            }
        }
    }
}