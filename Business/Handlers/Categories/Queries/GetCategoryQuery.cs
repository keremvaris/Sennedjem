
using Business.BusinessAspects;
using Core.Utilities.Results;
using DataAccess.Abstract;
using Entities.Concrete;
using MediatR;
using System.Threading;
using System.Threading.Tasks;
using Core.Aspects.Autofac.Logging;
using Core.CrossCuttingConcerns.Logging.Serilog.Loggers;
using MongoDB.Bson;

namespace Business.Handlers.Categories.Queries
{
    [SecuredOperation]
    public class GetCategoryQuery : IRequest<IDataResult<Category>>
    {
        public int CategoryId { get; set; }

        public class GetCategoryQueryHandler : IRequestHandler<GetCategoryQuery, IDataResult<Category>>
        {
            private readonly ICategoryRepository _categoryRepository;
            private readonly IMediator _mediator;

            public GetCategoryQueryHandler(ICategoryRepository categoryRepository, IMediator mediator)
            {
                _categoryRepository = categoryRepository;
                _mediator = mediator;
            }
            [LogAspect(typeof(FileLogger))]
            public async Task<IDataResult<Category>> Handle(GetCategoryQuery request, CancellationToken cancellationToken)
            {
                var category = await _categoryRepository.GetAsync(p => p.CategoryId == request.CategoryId);
                return new SuccessDataResult<Category>(category);
            }
        }
    }
}
