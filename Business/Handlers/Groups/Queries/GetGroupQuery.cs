using Core.Entities.Concrete;
using Core.Utilities.Results;
using DataAccess.Abstract;
using MediatR;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace Business.Handlers.Groups.Queries
{
    public class GetGroupQuery : IRequest<IDataResult<Group>>
    {
        public int GroupId { get; set; }

        public class GetGroupQueryHandler : IRequestHandler<GetGroupQuery, IDataResult<Group>>
        {
            private readonly IGroupDal _groupDal;

            public GetGroupQueryHandler(IGroupDal groupDal)
            {
                _groupDal = groupDal;
            }

            public async Task<IDataResult<Group>> Handle(GetGroupQuery request, CancellationToken cancellationToken)
            {
                var group = await _groupDal.GetAsync(x => x.Id == request.GroupId);

                return new SuccessDataResult<Group>(group);
            }
        }
    }
}
