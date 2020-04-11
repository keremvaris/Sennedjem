using Business.Constants;
using Core.Aspects.Autofac.Caching;
using Core.Utilities.Results;
using DataAccess.Abstract;
using Entities.Concrete;
using MediatR;
using System.Threading;
using System.Threading.Tasks;

namespace Business.Handlers.Products.Commands.UpdateProduct
{
    public class UpdateProductCommand : IRequest<IResult>
    {
        //public Product ProductForUpdate { get; set; }
        public int ProductID { get; set; }
        public string ProductName { get; set; }
        public int CategoryId { get; set; }
        public string QuantityPerUnit { get; set; }
        public decimal UnitPrice { get; set; }
        public short UnitsInStock { get; set; }
        public class UpdateProductCommandHandler : IRequestHandler<UpdateProductCommand, IResult>
        {
            private readonly IProductDal _productDal;

            public UpdateProductCommandHandler(IProductDal productDal)
            {
                _productDal = productDal;
            }

            [CacheRemoveAspect("Get")]
            public async Task<IResult> Handle(UpdateProductCommand request, CancellationToken cancellationToken)
            {
                var productToUpdate = await _productDal.GetAsync(u => u.ProductID == request.ProductID);


                productToUpdate.CategoryId = request.CategoryId;
                productToUpdate.ProductName = request.ProductName;
                productToUpdate.QuantityPerUnit = request.QuantityPerUnit;
                productToUpdate.UnitPrice = request.UnitPrice;
                productToUpdate.UnitsInStock = request.UnitsInStock;

                await _productDal.UpdateAsync(productToUpdate);
                return new SuccessResult(Messages.ProductUpdated);
            }
        }
    }
}
