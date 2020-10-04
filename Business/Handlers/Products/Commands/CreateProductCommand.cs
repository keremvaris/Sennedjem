using Business.BusinessAspects;
using Business.Constants;
using Business.Handlers.Animals.Queries;
using Business.ValidationRules.FluentValidation;
using Core.Aspects.Autofac.Caching;
using Core.Aspects.Autofac.Logging;
using Core.Aspects.Autofac.Validation;
using Core.CrossCuttingConcerns.Logging.Serilog.Loggers;
using Core.Utilities.Results;
using DataAccess.Abstract;
using Entities.Concrete;
using MediatR;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;


namespace Business.Handlers.Products.Commands
{
    /// <summary>
    /// 
    /// </summary>
    [SecuredOperation]
    public class CreateProductCommand : IRequest<IResult>
    {
        ///Request'ten gelecek değerler buraya yazılır. Örneğin:

        public string ProductName { get; set; }
        public int CategoryId { get; set; }

        public class CreateProductCommandHandler : IRequestHandler<CreateProductCommand, IResult>
        {
            private readonly IProductRepository _productRepository;
            private readonly IMediator _mediator;


            public CreateProductCommandHandler(IProductRepository productRepository, IMediator mediator, IAnimalRepository animalRepository)
            {
                _productRepository = productRepository;
                _mediator = mediator;
            }
            /// <summary>
            ///            
            /// </summary>
            /// <param name="request"></param>
            /// <param name="cancellationToken"></param>
            /// <returns></returns>
            [ValidationAspect(typeof(CreateProductValidator), Priority = 1)]
            [CacheRemoveAspect("Get")]
            [LogAspect(typeof(FileLogger))]
            public async Task<IResult> Handle(CreateProductCommand request, CancellationToken cancellationToken)
            {
                var urunVarmi = _productRepository.Query().Any(p => p.ProductName == request.ProductName);

                if (urunVarmi)
                    return new ErrorResult(Messages.NameAlreadyExist);

                var result = await _mediator.Send(new GetAnimalsCountQuery());
                if (result.Data.Count() > 4)
                {
                    return new ErrorResult(Messages.NameAlreadyExist);
                }

                var eklenecekUrun = new Product
                {
                    CategoryId = request.CategoryId,
                    ProductName = request.ProductName
                };

                _productRepository.Add(eklenecekUrun);
                await _productRepository.SaveChangesAsync();
                return new SuccessResult(Messages.Added);
            }
        }
    }
}