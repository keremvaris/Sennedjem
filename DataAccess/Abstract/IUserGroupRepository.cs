using Core.DataAccess;
using Core.Entities.Concrete;
using DataAccess.Entities.Dtos;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace DataAccess.Abstract
{
    public interface IUserGroupRepository : IEntityRepository<UserGroup>
    {
        Task<IEnumerable<SelectionItem>> GetUserGroupSelectedList(int userId);
        Task<IEnumerable<UserGroup>> BulkInsert(int userId, IEnumerable<UserGroup> userGroups);
    }
}
