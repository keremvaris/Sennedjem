using Core.DataAccess.EntityFramework;
using Core.Entities.Concrete;
using DataAccess.Abstract;
using DataAccess.Concrete.EntityFramework.Contexts;
using DataAccess.Entities.Dtos;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace DataAccess.Concrete.EntityFramework
{
    public class UserGroupRepository : EfEntityRepositoryBase<UserGroup, ProjectDbContext>, IUserGroupRepository
    {
        public UserGroupRepository(ProjectDbContext context) : base(context)
        {
        }

        public async Task<IEnumerable<UserGroup>> BulkInsert(int userId, IEnumerable<UserGroup> userGroups)
        {
            var dbUserGroupList = context.UserGroups.Where(x => x.UserId == userId);

            context.UserGroups.RemoveRange(dbUserGroupList);
            await context.UserGroups.AddRangeAsync(userGroups);
            return userGroups;

        }

        public async Task<IEnumerable<SelectionItem>> GetUserGroupSelectedList(int userId)
        {
            var list = await (from grp in context.Groups
                              join userGroup in context.UserGroups on grp.Id equals userGroup.GroupId
                              where userGroup.UserId == userId
                              select new SelectionItem()
                              {
                                  Id = grp.Id.ToString(),
                                  Label = grp.GroupName
                              }).ToListAsync();

            return list;
        }
    }
}
