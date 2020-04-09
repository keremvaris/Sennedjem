using Business.BusinessAspects.Autofac;
using Core.Aspects.Autofac.Caching;
using Core.Aspects.Autofac.Logging;
using Core.Aspects.Autofac.Performance;
using Core.CrossCuttingConcerns.Logging.NLog.Loggers;
using Core.Utilities.MessageBrokers.RabbitMq;
using Core.Utilities.Results;
using DataAccess.Abstract;
using Entities.Concrete;
using MediatR;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace Business.Handlers.Products.Queries.GetProducts
{
    public class GetProductsQuery : IRequest<IDataResult<IEnumerable<Product>>>
    {
        class GetProductsQueryHandler : IRequestHandler<GetProductsQuery, IDataResult<IEnumerable<Product>>>
        {
            readonly IProductDal _productDal;
            private readonly IMessageBrokerHelper _messageBrokerHelper;

            public GetProductsQueryHandler(IProductDal productDal, IMessageBrokerHelper messageBrokerHelper)
            {
                _productDal = productDal;
                _messageBrokerHelper = messageBrokerHelper;
            }
            //[SecuredOperation("Product.List,Admin")]
            [LogAspect(typeof(PgSqlLogger))]
            [CacheAspect(10)]
            public async Task<IDataResult<IEnumerable<Product>>> Handle(GetProductsQuery request, CancellationToken cancellationToken)
            {
                var result = new SuccessDataResult<IEnumerable<Product>>(await _productDal.GetListAsync());
                _messageBrokerHelper.QueueMessage($"GetProductsQuery Komutuyla Bütün Ürünler Sorgulandı.");
                return result;
            }
        }
    }
}
