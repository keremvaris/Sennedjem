using Business.Constants;
using Core.Aspects.Autofac.Caching;
using Core.Aspects.Autofac.Logging;
using Core.CrossCuttingConcerns.Logging.NLog.Loggers;
using Core.Utilities.Results;
using DataAccess.Abstract;
using MediatR;
using System.Threading;
using System.Threading.Tasks;

namespace Business.Handlers.Categories.Commands.DeleteCategory
{
    public class DeleteCategoryCommand : IRequest<IResult>
    {
        public int CategoryId { get; set; }

        public class DeleteCategoryCommandHandler : IRequestHandler<DeleteCategoryCommand, IResult>
        {
            private readonly ICategoryDal _categoryDal;

            public DeleteCategoryCommandHandler(ICategoryDal categoryDal)
            {
                _categoryDal = categoryDal;
            }
            [CacheRemoveAspect("Get")]
            [LogAspect(typeof(PgSqlLogger))]
            public async Task<IResult> Handle(DeleteCategoryCommand request, CancellationToken cancellationToken)
            {
                var categoryToDelete = _categoryDal.Get(p => p.CategoryId == request.CategoryId);

                _categoryDal.Delete(categoryToDelete);
                await _categoryDal.SaveChangesAsync();
                return new SuccessResult(Messages.Deleted);
            }
        }
    }
}
