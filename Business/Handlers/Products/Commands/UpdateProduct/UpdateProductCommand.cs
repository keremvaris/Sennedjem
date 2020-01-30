using Business.Constants;
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

            public async Task<IResult> Handle(UpdateProductCommand request, CancellationToken cancellationToken)
            {
                var productExits = await _productDal.GetAsync(u => u.ProductName == request.ProductName);

                if (productExits != null)
                    return new ErrorResult(Messages.NameAlreadyExist);

                var productToUpdate = new Product
                {
                    CategoryId = request.CategoryId,
                    ProductName = request.ProductName,
                    QuantityPerUnit = request.QuantityPerUnit,
                    UnitPrice = request.UnitPrice,
                    UnitsInStock = request.UnitsInStock
                };
                await _productDal.UpdateAsync(productToUpdate);
                return new SuccessResult(Messages.ProductUpdated);
            }
        }
    }
}
