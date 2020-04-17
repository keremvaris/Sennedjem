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

namespace Business.Handlers.Products.Commands.CreateProduct
{
    public class CreateProductCommand : IRequest<IResult>
    {
        //public Product ProductForAdd { get; set; }
        public int ProductID { get; set; }
        public string ProductName { get; set; }
        public int CategoryId { get; set; }
        public string QuantityPerUnit { get; set; }
        public decimal UnitPrice { get; set; }
        public short UnitsInStock { get; set; }

        public class CreateProductCommandHandler : IRequestHandler<CreateProductCommand, IResult>
        {
            private readonly IProductDal _productDal;

            public CreateProductCommandHandler(IProductDal productDal)
            {
                _productDal = productDal;
            }

            [ValidationAspect(typeof(CreateProductValidator), Priority = 1)]
            [CacheRemoveAspect("Get")]
            [LogAspect(typeof(PgSqlLogger))]
            public async Task<IResult> Handle(CreateProductCommand request, CancellationToken cancellationToken)
            {
                var productExits = await _productDal.GetAsync(u => u.ProductName == request.ProductName);

                if (productExits != null)
                    return new ErrorResult(Messages.NameAlreadyExist);

                var productToCreate = new Product
                {
                    CategoryId = request.CategoryId,
                    ProductName = request.ProductName,
                    QuantityPerUnit = request.QuantityPerUnit,
                    UnitPrice = request.UnitPrice,
                    UnitsInStock = request.UnitsInStock
                };
                _productDal.Add(productToCreate);
                await _productDal.SaveChangesAsync();
                return new SuccessResult(Messages.ProductAdded);
            }
        }
    }
}
