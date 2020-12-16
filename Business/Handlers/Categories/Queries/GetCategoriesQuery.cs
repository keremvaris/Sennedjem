
using Business.BusinessAspects;
using Core.Aspects.Autofac.Performance;
using Core.Utilities.Results;
using DataAccess.Abstract;
using Entities.Concrete;
using MediatR;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;
using Core.Aspects.Autofac.Logging;
using Core.CrossCuttingConcerns.Logging.Serilog.Loggers;

namespace Business.Handlers.Categories.Queries
{
    [SecuredOperation]
    public class GetCategoriesQuery : IRequest<IDataResult<IEnumerable<Category>>>
    {
        public class GetCategoriesQueryHandler : IRequestHandler<GetCategoriesQuery, IDataResult<IEnumerable<Category>>>
        {
            private readonly ICategoryRepository _categoryRepository;
            private readonly IMediator _mediator;

            public GetCategoriesQueryHandler(ICategoryRepository categoryRepository, IMediator mediator)
            {
                _categoryRepository = categoryRepository;
                _mediator = mediator;
            }

            [PerformanceAspect(5)]
            //[CacheAspect(10)]
            [LogAspect(typeof(FileLogger))]
            public async Task<IDataResult<IEnumerable<Category>>> Handle(GetCategoriesQuery request, CancellationToken cancellationToken)
            {
                return new SuccessDataResult<IEnumerable<Category>>(await _categoryRepository.GetListAsync());
            }
        }
    }
}