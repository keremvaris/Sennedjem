
using Business.BusinessAspects;
using Core.Aspects.Autofac.Logging;
using Core.Aspects.Autofac.Performance;
using Core.CrossCuttingConcerns.Logging.Serilog.Loggers;
using Core.Utilities.Results;
using DataAccess.Abstract;
using Entities.Concrete;
using MediatR;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;

namespace Business.Handlers.Products.Queries
{
    [SecuredOperation]
    public class GetProductsQuery : IRequest<IDataResult<IEnumerable<Product>>>
    {
        public class GetProductsQueryHandler : IRequestHandler<GetProductsQuery, IDataResult<IEnumerable<Product>>>
        {
            private readonly IProductRepository _productRepository;

            public GetProductsQueryHandler(IProductRepository productRepository)
            {
                _productRepository = productRepository;
            }

            [PerformanceAspect(5)]
            //[CacheAspect(10)]
            [LogAspect(typeof(PostgreSqlLogger))]
            public async Task<IDataResult<IEnumerable<Product>>> Handle(GetProductsQuery request, CancellationToken cancellationToken)
            {
                return new SuccessDataResult<IEnumerable<Product>>(await _productRepository.GetListAsync());
            }
        }
    }
}