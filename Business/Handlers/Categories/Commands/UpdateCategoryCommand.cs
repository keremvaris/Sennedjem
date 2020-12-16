
using Business.Constants;
using Business.BusinessAspects;
using Core.Aspects.Autofac.Caching;
using Core.Aspects.Autofac.Logging;
using Core.CrossCuttingConcerns.Logging.Serilog.Loggers;
using Core.Utilities.Results;
using DataAccess.Abstract;
using Entities.Concrete;
using MediatR;
using System.Threading;
using System.Threading.Tasks;
using System.Linq;
using Core.Aspects.Autofac.Validation;
using Business.Handlers.Categories.ValidationRules;


namespace Business.Handlers.Categories.Commands
{
    /// <summary>
    /// CQRS yaklaşımında oluşturulmuş bir Command sınıfıdır. Bir kategorinin güncellenmesini sağlar
    /// </summary>
    [SecuredOperation]
    public class UpdateCategoryCommand : IRequest<IResult>
    {
        //Request olarak gelmesi beklenen propertyler buraya yazılacak
        public int CategoryId { get; set; }
        public string CategoryName { get; set; }

        public class UpdateCategoryCommandHandler : IRequestHandler<UpdateCategoryCommand, IResult>
        {
            private readonly ICategoryRepository _categoryRepository;
            private readonly IMediator _mediator;

            public UpdateCategoryCommandHandler(ICategoryRepository categoryRepository, IMediator mediator)
            {
                _categoryRepository = categoryRepository;
                _mediator = mediator;
            }

            /// <summary>
            /// Handler bir kategorinin var olup olmadığını doğrular
            /// eğer yoksa yeni bir kategorinin güncellenmesine izin verir.
            /// Aspectler her zaman hadler üzerinde kullanılmalıdır.
            /// Aşağıda validation, cacheremove ve log aspect Örnekleri kullanılmıştır.
            /// eğer kategori başarıyla eklenmişse sadece mesaj dÖner.
            /// Eğer farklı bir sınıf veya metod çağırılması gerekiyorsa MediatR kütüphanesi yardımıyla çağırılır
            /// Örneğin:  var result = await _mediator.Send(new GetAnimalsCountQuery());
            /// </summary>
            /// <param name="request"></param>
            /// <param name="cancellationToken"></param>
            /// <returns></returns>
            [ValidationAspect(typeof(CreateCategoryValidator), Priority = 1)]
            [CacheRemoveAspect("Get")]
            [LogAspect(typeof(FileLogger))]
            public async Task<IResult> Handle(UpdateCategoryCommand request, CancellationToken cancellationToken)
            {
                var isThereCategoryRecord = await _categoryRepository.GetAsync(u => u.CategoryId == request.CategoryId);

                //Güncellenmesi istenen alanlar aşağıdaki Örnekteki gibi yazılmalıdır.
                isThereCategoryRecord.CategoryId = request.CategoryId;
                isThereCategoryRecord.CategoryName = request.CategoryName;


                _categoryRepository.Update(isThereCategoryRecord);
                await _categoryRepository.SaveChangesAsync();
                return new SuccessResult(Messages.Updated);
            }
        }
    }
}

