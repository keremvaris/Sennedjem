using Business.Constants;
using Core.Aspects.Autofac.Caching;
using Core.Aspects.Autofac.Logging;
using Core.CrossCuttingConcerns.Logging.NLog.Loggers;
using Core.Utilities.Results;
using DataAccess.Abstract;
using Entities.Concrete;
using MediatR;
using System.Threading;
using System.Threading.Tasks;

namespace Business.Handlers.Categories.Commands.UpdateCategory
{
    public class UpdateCategoryCommand : IRequest<IResult>
    {
        //public Category CategoryForUpdate { get; set; }
        public int CategoryId { get; set; }
        public string CategoryName { get; set; }
        public class UpdateCategoryCommandHandler : IRequestHandler<UpdateCategoryCommand, IResult>
        {
            private readonly ICategoryRepository _categoryDal;

            public UpdateCategoryCommandHandler(ICategoryRepository categoryDal)
            {
                _categoryDal = categoryDal;
            }

            //[ValidationAspect(typeof(CreateCategoryValidator), Priority = 1)]
            [CacheRemoveAspect("Get")]
            [LogAspect(typeof(DbLogger))]
            public async Task<IResult> Handle(UpdateCategoryCommand request, CancellationToken cancellationToken)
            {
                var categoryToUpdate = await _categoryDal.GetAsync(u => u.CategoryId == request.CategoryId);

                categoryToUpdate.CategoryName = request.CategoryName;
                categoryToUpdate.CategoryId = request.CategoryId;

                _categoryDal.Update(categoryToUpdate);
                await _categoryDal.SaveChangesAsync();
                return new SuccessResult(Messages.Updated);
            }
        }
    }
}

