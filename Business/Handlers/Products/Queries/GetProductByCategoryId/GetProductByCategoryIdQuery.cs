using Core.Aspects.Autofac.Logging;
using Core.CrossCuttingConcerns.Logging.NLog.Loggers;
using Core.Utilities.Results;
using DataAccess.Abstract;
using Entities.Concrete;
using MediatR;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;

namespace Business.Handlers.Products.Queries.GetProductByCategoryId
{
    public class GetProductByCategoryIdQuery : IRequest<IDataResult<IEnumerable<Product>>>
    {
        public int CategoryId { get; set; }

        class GetProductQueryHandler : IRequestHandler<GetProductByCategoryIdQuery, IDataResult<IEnumerable<Product>>>
        {
            private readonly IProductDal _productDal;

            public GetProductQueryHandler(IProductDal productDal)
            {
                _productDal = productDal;
            }

            //[SecuredOperation("Product.List,Admin")]
            [LogAspect(typeof(PgSqlLogger))]
            public async Task<IDataResult<IEnumerable<Product>>> Handle(GetProductByCategoryIdQuery request, CancellationToken cancellationToken)
            {
                var product = await _productDal.GetListAsync(p => p.CategoryId == request.CategoryId);
                return new SuccessDataResult<IEnumerable<Product>>(product);
            }
        }
    }
}
