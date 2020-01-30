using Business.Constants;
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

            public async Task<IResult> Handle(DeleteCategoryCommand request, CancellationToken cancellationToken)
            {
                var categoryToDelete = _categoryDal.Get(p => p.CategoryId == request.CategoryId);

                await _categoryDal.DeleteAsync(categoryToDelete);
                return new SuccessResult(Messages.Deleted);
            }
        }
    }
}
