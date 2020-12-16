
using Business.Constants;
using Core.Aspects.Autofac.Caching;
using Business.BusinessAspects;
using Core.Aspects.Autofac.Logging;
using Core.CrossCuttingConcerns.Logging.Serilog.Loggers;
using Core.Utilities.Results;
using DataAccess.Abstract;
using MediatR;
using System.Threading;
using System.Threading.Tasks;


namespace Business.Handlers.Categories.Commands
{
    /// <summary>
    /// CQRS yaklaşımında oluşturulmuş bir Command sınıftır. Bir kategorinin silinmesini sağlar
    /// </summary>
    [SecuredOperation]
    public class DeleteCategoryCommand : IRequest<IResult>
    {
        public int CategoryId { get; set; }

        public class DeleteCategoryCommandHandler : IRequestHandler<DeleteCategoryCommand, IResult>
        {
            private readonly ICategoryRepository _categoryRepository;
            private readonly IMediator _mediator;

            public DeleteCategoryCommandHandler(ICategoryRepository categoryRepository, IMediator mediator)
            {
                _categoryRepository = categoryRepository;
                _mediator = mediator;
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
            public async Task<IResult> Handle(DeleteCategoryCommand request, CancellationToken cancellationToken)
            {
                var categoryToDelete = _categoryRepository.Get(p => p.CategoryId == request.CategoryId);

                _categoryRepository.Delete(categoryToDelete);
                await _categoryRepository.SaveChangesAsync();
                return new SuccessResult(Messages.Deleted);
            }
        }
    }
}

