
using Business.BusinessAspects;
using Business.Constants;
using Core.Aspects.Autofac.Caching;
using Core.Aspects.Autofac.Logging;
using Core.Aspects.Autofac.Validation;
using Core.CrossCuttingConcerns.Logging.Serilog.Loggers;
using Core.Utilities.Results;
using DataAccess.Abstract;
using Entities.Concrete;
using MediatR;
using System.Threading;
using System.Threading.Tasks;
using System.Linq;
using Business.Handlers.Categories.ValidationRules;
namespace Business.Handlers.Categories.Commands
{
    /// <summary>
    /// 
    /// </summary>
    [SecuredOperation]
    public class CreateCategoryCommand : IRequest<IResult>
    {
        ///Request'ten gelecek degerler buraya yazılır.Örneğin:

        public string CategoryName { get; set; }


        public class CreateCategoryCommandHandler : IRequestHandler<CreateCategoryCommand, IResult>
        {
            private readonly ICategoryRepository _categoryRepository;
            private readonly IMediator _mediator;
            public CreateCategoryCommandHandler(ICategoryRepository categoryRepository, IMediator mediator)
            {
                _categoryRepository = categoryRepository;
                _mediator = mediator;
            }
            /// <summary>
            /// Eğer farklı bir sınıf veya metod çağırılması gerekiyorsa MediatR kütüphanesi yardımıyla çağırılır
            /// Örneğin:  var result = await _mediator.Send(new GetAnimalsCountQuery());
            /// </summary>
            /// <param name="request"></param>
            /// <param name="cancellationToken"></param>
            /// <returns></returns>
            [ValidationAspect(typeof(CreateCategoryValidator), Priority = 1)]
            [CacheRemoveAspect("Get")]
            [LogAspect(typeof(FileLogger))]
            public async Task<IResult> Handle(CreateCategoryCommand request, CancellationToken cancellationToken)
            {
                var isThereCategoryRecord = _categoryRepository.Query().Any(u => u.CategoryName == request.CategoryName);

                if (isThereCategoryRecord == true)
                    return new ErrorResult(Messages.NameAlreadyExist);

                var addedCategory = new Category
                {
                    CategoryName = request.CategoryName,

                };

                _categoryRepository.Add(addedCategory);
                await _categoryRepository.SaveChangesAsync();
                return new SuccessResult(Messages.Added);
            }
        }
    }
}