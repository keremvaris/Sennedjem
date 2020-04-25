using Core.Aspects.Autofac.Caching;
using Core.Aspects.Autofac.Performance;
using Core.CrossCuttingConcerns.Caching.Redis;
using Core.Utilities.Results;
using DataAccess.Abstract;
using Entities.Concrete;
using MediatR;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace Business.Handlers.Categories.Queries.GetCategories
{
    public class GetCategoriesQuery : IRequest<IDataResult<IEnumerable<Category>>>
    {
        public class GetCategoriesQueryHandler : IRequestHandler<GetCategoriesQuery, IDataResult<IEnumerable<Category>>>
        {
            private readonly ICategoryRepository _categoryDal;

            public GetCategoriesQueryHandler(ICategoryRepository categoryDal)
            {
                _categoryDal = categoryDal;
            }

            [PerformanceAspect(5)]
            [CacheAspect(10)]
            public async Task<IDataResult<IEnumerable<Category>>> Handle(GetCategoriesQuery request, CancellationToken cancellationToken)
            {
                return new SuccessDataResult<IEnumerable<Category>>(await _categoryDal.GetListAsync());
            }
        }
    }
}
