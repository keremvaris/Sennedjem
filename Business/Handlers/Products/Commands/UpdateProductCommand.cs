
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
    /// CQRS yaklaşımında oluşturulmuş bir Command sınıfıdır. Bir kategorinin güncellenmesini sağlar
    /// </summary>
    [SecuredOperation]
    public class UpdateProductCommand : IRequest<IResult>
    {

        public int ProductId { get; set; }
        public int CategoryId { get; set; }
        public string ProductName { get; set; }

        public class UpdateProductCommandHandler : IRequestHandler<UpdateProductCommand, IResult>
        {
            private readonly IProductRepository _productRepository;

            public UpdateProductCommandHandler(IProductRepository productRepository)
            {
                _productRepository = productRepository;
            }

            /// <summary>
            /// Handler bir kategorinin var olup olmadığını doğrular
            /// eğer yoksa yeni bir kategorinin güncellenmesine izin verir.
            /// Aspectler her zaman hadler üzerinde kullanılmalıdır.
            /// Aşağıda validation, cacheremove ve log aspect örnekleri kullanılmıştır.
            /// eğer kategori başarıyla eklenmişse sadece mesaj döner.
            /// </summary>
            /// <param name="request"></param>
            /// <param name="cancellationToken"></param>
            /// <returns></returns>
            //[ValidationAspect(typeof(CreateProductValidator), Priority = 1)]
            [CacheRemoveAspect("Get")]
            [LogAspect(typeof(FileLogger))]
            public async Task<IResult> Handle(UpdateProductCommand request, CancellationToken cancellationToken)
            {
                var isproductExits = await _productRepository.GetAsync(u => u.ProductId == request.ProductId);

                //Tüm alanlar aşağıdaki örnekteki gibi yazılacak
                isproductExits.ProductName = request.ProductName;

                _productRepository.Update(isproductExits);
                await _productRepository.SaveChangesAsync();
                return new SuccessResult(Messages.Updated);
            }
        }
    }
}

