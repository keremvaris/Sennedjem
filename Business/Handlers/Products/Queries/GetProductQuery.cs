
using Business.BusinessAspects;
using Core.Utilities.Results;
using DataAccess.Abstract;
using Entities.Concrete;
using MediatR;
using System.Threading;
using System.Threading.Tasks;

namespace Business.Handlers.Products.Queries
{
    [SecuredOperation]
    public class GetProductQuery : IRequest<IDataResult<Product>>
    {
        public int ProductId { get; set; }

        public class GetProductQueryHandler : IRequestHandler<GetProductQuery, IDataResult<Product>>
        {
            private readonly IProductRepository _productRepository;

            public GetProductQueryHandler(IProductRepository productRepository)
            {
                _productRepository = productRepository;
            }

            public async Task<IDataResult<Product>> Handle(GetProductQuery request, CancellationToken cancellationToken)
            {
                var product = await _productRepository.GetAsync(p => p.ProductId == request.ProductId);
                return new SuccessDataResult<Product>(product);
            }
        }
    }
}
