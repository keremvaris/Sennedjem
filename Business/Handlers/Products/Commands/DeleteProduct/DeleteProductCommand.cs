using Business.Constants;
using Core.Aspects.Autofac.Caching;
using Core.Aspects.Autofac.Logging;
using Core.CrossCuttingConcerns.Logging.NLog.Loggers;
using Core.Utilities.Results;
using DataAccess.Abstract;
using MediatR;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace Business.Handlers.Products.Commands.DeleteProduct
{
    public class DeleteProductCommand : IRequest<IResult>
    {
        public int ProductID { get; set; }

        public class DeleteProductCommandHandler : IRequestHandler<DeleteProductCommand, IResult>
        {
            private readonly IProductRepository _productDal;

            public DeleteProductCommandHandler(IProductRepository productDal)
            {
                _productDal = productDal;
            }
            [CacheRemoveAspect("Get")]
            [LogAspect(typeof(DbLogger))]
            public async Task<IResult> Handle(DeleteProductCommand request, CancellationToken cancellationToken)
            {
                var productToDelete = _productDal.Get(p => p.ProductID == request.ProductID);

                _productDal.Delete(productToDelete);
                await _productDal.SaveChangesAsync();
                return new SuccessResult(Messages.ProductDeleted);
            }
        }
    }
}
