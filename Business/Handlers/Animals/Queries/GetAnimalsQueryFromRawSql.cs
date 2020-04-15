
using Business.BusinessAspects.Autofac;
using Core.Aspects.Autofac.Performance;
using Core.Utilities.Results;
using DataAccess.Abstract;
using DataAccess.Concrete.EntityFramework.Contexts;
using Entities.Concrete;
using MediatR;
using SqlKata;
using SqlKata.Compilers;
using SqlKata.Execution;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;

namespace Business.Handlers.Animals.Queries
{
    [SecuredOperation]
    public class GetAnimalsQueryFromRawSql : IRequest<IDataResult<IEnumerable<Dictionary<string, object>>>>
    {
        public class GetAnimalsQueryFromRawSqlHandler : IRequestHandler<GetAnimalsQueryFromRawSql, IDataResult<IEnumerable<Dictionary<string, object>>>>
        {

            private readonly ProjectDbContext _context;
            public GetAnimalsQueryFromRawSqlHandler(ProjectDbContext context)
            {
                _context = context;
            }

            [PerformanceAspect(5)]
            //[CacheAspect(10)]
            public async Task<IDataResult<IEnumerable<Dictionary<string, object>>>> Handle(GetAnimalsQueryFromRawSql request, CancellationToken cancellationToken)
            {
                //Aşağıdaki sql sorgusu PostgreSql'e özgün bir sql sorgusudur. MSSql için düz sql yazmanı yeterlidir.
                var postGreSql = "SELECT * FROM public.\"Animals\"";
                var sql = "select * from Animals";

                var queryResult = await _context.FwExecuteQueryAsync(sql);
                return new SuccessDataResult<IEnumerable<Dictionary<string, object>>>(queryResult);
            }
        }
    }
}