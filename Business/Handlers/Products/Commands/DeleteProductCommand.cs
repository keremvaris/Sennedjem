
using Business.BusinessAspects;
using Business.Constants;
using Core.Aspects.Autofac.Caching;
using Core.Aspects.Autofac.Logging;
using Core.CrossCuttingConcerns.Logging.Serilog.Loggers;
using Core.Utilities.Results;
using DataAccess.Abstract;
using MediatR;
using System.Threading;
using System.Threading.Tasks;

namespace Business.Handlers.Products.Commands
{
    /// <summary>
    /// CQRS yaklaşımında oluşturulmuş bir Command sınıfıdır. Bir kategorinin silinmesini sağlar
    /// </summary>
    [SecuredOperation]
    public class DeleteProductCommand : IRequest<IResult>
    {
        public int ProductId { get; set; }

        public class DeleteProductCommandHandler : IRequestHandler<DeleteProductCommand, IResult>
        {
            private readonly IProductRepository _productRepository;

            public DeleteProductCommandHandler(IProductRepository productRepository)
            {
                _productRepository = productRepository;
            }
            /// <summary>
            /// Aspectler her zaman hadler üzerinde kullanılmalıdır.
            /// Kullanıcı arayüzünden bir Id alır ve silinmek istenen kategori doğrulanır.
            /// Kategori silinebilirse sadece mesaj döner.
            /// iş kuralları burada yazılır.
            /// </summary>
            /// <param name="request"></param>
            /// <param name="cancellationToken"></param>
            /// <returns></returns>
            [CacheRemoveAspect("Get")]
            [LogAspect(typeof(FileLogger))]
            public async Task<IResult> Handle(DeleteProductCommand request, CancellationToken cancellationToken)
            {
                var productToDelete = _productRepository.Get(p => p.ProductId == request.ProductId);

                _productRepository.Delete(productToDelete);
                await _productRepository.SaveChangesAsync();
                return new SuccessResult(Messages.Deleted);
            }
        }
    }
}

