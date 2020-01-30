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
            private readonly ICategoryDal _categoryDal;



            public UpdateCategoryCommandHandler(ICategoryDal categoryDal)
            {
                _categoryDal = categoryDal;
            }



            //[ValidationAspect(typeof(CreateCategoryValidator), Priority = 1)]
            [CacheRemoveAspect("Get")]
            [LogAspect(typeof(PgSqlLogger))]
            public async Task<IResult> Handle(UpdateCategoryCommand request, CancellationToken cancellationToken)
            {
                var categoryExits = await _categoryDal.GetAsync(u => u.CategoryName == request.CategoryName);

                if (categoryExits != null)
                    return new ErrorResult(Messages.NameAlreadyExist);

                var category = new Category
                {
                    CategoryName = request.CategoryName,
                    CategoryId = request.CategoryId
                };
                await _categoryDal.UpdateAsync(category);
                return new SuccessResult(Messages.Updated);
            }
        }
    }
}

