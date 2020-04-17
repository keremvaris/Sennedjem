
using Business.BusinessAspects.Autofac;
using Core.Aspects.Autofac.Performance;
using Core.Utilities.Results;
using DataAccess.Concrete.EntityFramework.Contexts;
using MediatR;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;

namespace Business.Handlers.Animals.Queries
{
    [SecuredOperation]
    public class GetAnimalsFromRawSqlQuery : IRequest<IDataResult<IEnumerable<Dictionary<string, object>>>>
    {
        public class GetAnimalsQueryFromRawSqlHandler : IRequestHandler<GetAnimalsFromRawSqlQuery, IDataResult<IEnumerable<Dictionary<string, object>>>>
        {

            private readonly ProjectDbContext _context;
            public GetAnimalsQueryFromRawSqlHandler(ProjectDbContext context)
            {
                _context = context;
            }

            [PerformanceAspect(5)]
            //[CacheAspect(10)]
            public async Task<IDataResult<IEnumerable<Dictionary<string, object>>>> Handle(GetAnimalsFromRawSqlQuery request, CancellationToken cancellationToken)
            {
                //Aşağıdaki sql sorgusu PostgreSql'e özgün bir sql sorgusudur. MSSql için düz sql yazmanı yeterlidir.
                var postGreSql = "SELECT * FROM public.\"Animals\"";
                var msSql = "select * from Animals";

                var queryResult = await _context.FwExecuteQueryAsync(postGreSql);
                return new SuccessDataResult<IEnumerable<Dictionary<string, object>>>(queryResult);
            }
        }
    }
}