using Business.Constants;
using Business.ValidationRules.FluentValidation;
using Core.Aspects.Autofac.Caching;
using Core.Aspects.Autofac.Logging;
using Core.Aspects.Autofac.Validation;
using Core.CrossCuttingConcerns.Logging.NLog.Loggers;
using Core.Utilities.Results;
using DataAccess.Abstract;
using Entities.Concrete;
using MediatR;
using System.Threading;
using System.Threading.Tasks;

namespace Business.Handlers.Categories.Commands.CreateCategory
{
    public class CreateCategoryCommand : IRequest<IResult>
    {
        //public Category CategoryForAdd { get; set; }
        //public int CategoryId { get; set; }
        public string CategoryName { get; set; }

        public class CreateCategoryCommandHandler : IRequestHandler<CreateCategoryCommand, IResult>
        {
            private readonly ICategoryDal _categoryDal;



            public CreateCategoryCommandHandler(ICategoryDal categoryDal)
            {
                _categoryDal = categoryDal;
            }



            [ValidationAspect(typeof(CreateCategoryValidator), Priority = 1)]
            [CacheRemoveAspect("Get")]
            [LogAspect(typeof(PgSqlLogger))]
            public async Task<IResult> Handle(CreateCategoryCommand request, CancellationToken cancellationToken)
            {
                var categoryExits = await _categoryDal.GetAsync(u => u.CategoryName == request.CategoryName);

                if (categoryExits != null)
                    return new ErrorResult(Messages.NameAlreadyExist);

                var category = new Category
                {
                    CategoryName = request.CategoryName
                };
                await _categoryDal.AddAsync(category);
                return new SuccessResult(Messages.Added);
            }
        }
    }
}

