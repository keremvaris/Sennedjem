using Core.Utilities.Results;
using DataAccess.Abstract;
using DataAccess.Entities.Dtos;
using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace Business.Handlers.Groups.Queries
{
    public class GetGroupSelectListQuery: IRequest<IDataResult<IEnumerable<SelectionItem>>>
    {
        public class GetGroupSelectListQueryHandler : IRequestHandler<GetGroupSelectListQuery, IDataResult<IEnumerable<SelectionItem>>>
        {
            IGroupRepository _groupRepository;
            public GetGroupSelectListQueryHandler(IGroupRepository groupRepository)
            {
                _groupRepository = groupRepository;
            }
            public async Task<IDataResult<IEnumerable<SelectionItem>>> Handle(GetGroupSelectListQuery request, CancellationToken cancellationToken)
            {
                return new SuccessDataResult<IEnumerable<SelectionItem>>
                    (_groupRepository.GetList().Select(x => new SelectionItem()
                    {
                        Id = x.Id.ToString(),
                        Label = x.GroupName
                    }));  
            }
        }
    }
}
