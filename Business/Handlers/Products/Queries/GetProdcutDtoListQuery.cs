
using Business.BusinessAspects;
using Core.Utilities.Results;
using Core.Aspects.Autofac.Performance;
using DataAccess.Abstract;
using Entities.Concrete;
using MediatR;
using System.Threading;
using System.Threading.Tasks;
using System.Collections.Generic;
using Core.CrossCuttingConcerns.Logging.Serilog.Loggers;
using Core.Aspects.Autofac.Logging;
using Entities.Dtos;

namespace Business.Handlers.Products.Queries
{
    [SecuredOperation]
    public class GetProdcutDtoListQuery : IRequest<IDataResult<IEnumerable<ProductListDto>>>
    {
        public class GetProdcutDtoListQueryHandler : IRequestHandler<GetProdcutDtoListQuery, IDataResult<IEnumerable<ProductListDto>>>
        {
            private readonly IProductRepository _productRepository;
            private readonly IMediator _mediator;

            public GetProdcutDtoListQueryHandler(IProductRepository productRepository, IMediator mediator)
            {
                _productRepository = productRepository;
                _mediator = mediator;
            }

            [PerformanceAspect(5)]
            //[CacheAspect(10)]
            [LogAspect(typeof(FileLogger))]
            public async Task<IDataResult<IEnumerable<ProductListDto>>> Handle(GetProdcutDtoListQuery request, CancellationToken cancellationToken)
            {
                return new SuccessDataResult<IEnumerable<ProductListDto>>(await _productRepository.GetProdutDtoList());
            }
        }
    }
}