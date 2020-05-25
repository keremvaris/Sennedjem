using Core.DataAccess.EntityFramework;
using Core.Entities.Concrete;
using DataAccess.Abstract;
using DataAccess.Concrete.EntityFramework.Contexts;

namespace DataAccess.Concrete.EntityFramework
{
  public class UserGroupRepository : EfEntityRepositoryBase<UserGroup, ProjectDbContext>, IUserGroupRepository
  {
    public UserGroupRepository(ProjectDbContext context) : base(context)
    {
    }
  }
}
