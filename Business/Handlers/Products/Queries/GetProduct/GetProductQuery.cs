using Core.Utilities.Results;
using DataAccess.Abstract;
using Entities.Concrete;
using MediatR;
using System.Threading;
using System.Threading.Tasks;

namespace Business.Handlers.Products.Queries.GetProduct
{
    public class GetProductQuery : IRequest<IDataResult<Product>>
    {
        public int ProductId { get; set; }

        class GetProductQueryHandler : IRequestHandler<GetProductQuery, IDataResult<Product>>
        {
            private readonly IProductRepository _productDal;

            public GetProductQueryHandler(IProductRepository productDal)
            {
                _productDal = productDal;
            }

            public async Task<IDataResult<Product>> Handle(GetProductQuery request, CancellationToken cancellationToken)
            {
                var product = await _productDal.GetAsync(p => p.ProductID == request.ProductId);
                return new SuccessDataResult<Product>(product);
            }
        }
    }
}
