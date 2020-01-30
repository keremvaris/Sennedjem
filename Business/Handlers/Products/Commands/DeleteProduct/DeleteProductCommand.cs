using Business.Constants;
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
    public class DeleteCategoryCommand : IRequest<IResult>
    {
        public int ProductID { get; set; }

        public class DeleteProductCommandHandler : IRequestHandler<DeleteCategoryCommand, IResult>
        {
            private readonly IProductDal _productDal;

            public DeleteProductCommandHandler(IProductDal productDal)
            {
                _productDal = productDal;
            }

            public async Task<IResult> Handle(DeleteCategoryCommand request, CancellationToken cancellationToken)
            {
                var productToDelete = _productDal.Get(p => p.ProductID == request.ProductID);

                await _productDal.DeleteAsync(productToDelete);
                return new SuccessResult(Messages.ProductDeleted);
            }
        }
    }
}
