using Core.DataAccess.EntityFramework;
using Core.Entities.Concrete;
using DataAccess.Abstract;


namespace DataAccess.Concrete.EntityFramework
{
  public class EfUserGroupDal : EfEntityRepositoryBase<UserGroup, NorthwindContext>, IUserGroupDal
  {

  }
}
