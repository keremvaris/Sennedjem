using Core.DataAccess.EntityFramework;
using DataAccess.Abstract;
using DataAccess.Concrete.EntityFramework.Contexts;
using Entities.Concrete;

namespace DataAccess.Concrete.NpgSql
{
    public class PgCategoryDal : EfEntityRepositoryBase<Category, ProjectDbContext>, ICategoryDal
    {
        public PgCategoryDal(ProjectDbContext context) : base(context)
        {
        }
    }
}