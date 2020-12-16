
using Business.BusinessAspects;
using Core.Utilities.Results;
using DataAccess.Abstract;
using Entities.Concrete;
using System.Threading;
using System.Threading.Tasks;
using Core.CrossCuttingConcerns.Logging.Serilog.Loggers;
using Core.Aspects.Autofac.Logging;
using DataAccess.Entities.Dtos;
using MediatR;
using System.Collections.Generic;

namespace Business.Handlers.Categories.Queries
{
    [SecuredOperation]
    public class GetCategoryLookUpQuery : IRequest<IDataResult<IEnumerable<SelectionItem>>>
    {

        public class GetCategoryLookUpQueryHandler : IRequestHandler<GetCategoryLookUpQuery, IDataResult<IEnumerable<SelectionItem>>>
        {
            private readonly ICategoryRepository _categoryRepository;
            private readonly IMediator _mediator;

            public GetCategoryLookUpQueryHandler(ICategoryRepository categoryRepository, IMediator mediator)
            {
                _categoryRepository = categoryRepository;
                _mediator = mediator;
            }
            [LogAspect(typeof(FileLogger))]
            public async Task<IDataResult<IEnumerable<SelectionItem>>> Handle(GetCategoryLookUpQuery request, CancellationToken cancellationToken)
            {
                var list = await _categoryRepository.GetCategoryLookUp();
                return new SuccessDataResult<IEnumerable<SelectionItem>>(list);
            }
        }
    }
}
