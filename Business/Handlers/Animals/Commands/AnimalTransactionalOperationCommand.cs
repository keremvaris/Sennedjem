using Business.BusinessAspects;
using Business.Constants;
using Business.ValidationRules.FluentValidation;
using Core.Aspects.Autofac.Caching;
using Core.Aspects.Autofac.Logging;
using Core.Aspects.Autofac.Transaction;
using Core.Aspects.Autofac.Validation;
using Core.CrossCuttingConcerns.Logging.Serilog.Loggers;
using Core.Utilities.Results;
using DataAccess.Abstract;
using Entities.Concrete;
using MediatR;
using System;
using System.Threading;
using System.Threading.Tasks;
using Microsoft.Extensions.DependencyInjection;
using DataAccess.Concrete.EntityFramework.Contexts;

namespace Business.Handlers.Animals.Commands
{
    /// <summary>
    /// 
    /// </summary>
    [SecuredOperation]
    public class AnimalTransactionalOperationCommand : IRequest<IResult>
    {
        ///Request'ten gelecek değerler buraya yazılır. Örneğin:

        public string AnimalName { get; set; }

        public class AnimalTransactionalOperationCommandHandler : IRequestHandler<AnimalTransactionalOperationCommand, IResult>
        {
            private IAnimalRepository _animalRepository;

            public AnimalTransactionalOperationCommandHandler(IAnimalRepository animalRepository)
            {
                _animalRepository = animalRepository;
            }

            /// <summary>
            ///            
            /// </summary>
            /// <param name="request"></param>
            /// <param name="cancellationToken"></param>
            /// <returns></returns>
            [ValidationAspect(typeof(CreateAnimalValidator), Priority = 1)]
            [CacheRemoveAspect("Get")]
            [LogAspect(typeof(FileLogger))]
            // [TransactionScopeAspectAsync(typeof(ProjectDbContext))]
            [TransactionScopeAspectAsync()]
            public async Task<IResult> Handle(AnimalTransactionalOperationCommand request, CancellationToken cancellationToken)
            {
                var isAnimalExits = await _animalRepository.GetAsync(u => u.AnimalName == request.AnimalName);

                if (isAnimalExits != null)
                    return new ErrorResult(Messages.NameAlreadyExist);

                var animal = new Animal
                {
                    AnimalName = request.AnimalName
                };
                _animalRepository.Add(animal);
                await _animalRepository.SaveChangesAsync();

                var animalUpdate = await _animalRepository.GetAsync(a => a.AnimalId == 12);
                animalUpdate.AnimalName = "Catx";
                _animalRepository.Update(animalUpdate);
                await _animalRepository.SaveChangesAsync();
                return new SuccessResult(Messages.Added);
            }
        }
    }
}