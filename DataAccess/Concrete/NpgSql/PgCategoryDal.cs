using System;
using System.Collections.Generic;
using System.Text;
using Core.DataAccess.EntityFramework;
using DataAccess.Abstract;
using DataAccess.Concrete.EntityFramework.Contexts;
using DataAccess.Concrete.NpgSql.Contexts;
using Entities.Concrete;

namespace DataAccess.Concrete.NpgSql {
    public class PgCategoryDal : EfEntityRepositoryBase<Category, NorthwindNPgSqlDbContext>, ICategoryDal
    {
        public PgCategoryDal(NorthwindNPgSqlDbContext context) : base(context)
        {
        }
    }
}