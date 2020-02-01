using System;
using System.Collections.Generic;
using System.Linq.Expressions;
using System.Text;
using Core.DataAccess.EntityFramework;
using DataAccess.Abstract;
using DataAccess.Concrete.EntityFramework.Contexts;
using DataAccess.Concrete.NpgSql.Contexts;
using Entities.Concrete;

namespace DataAccess.Concrete.NpgSql {
    public class PgProductDal : EfEntityRepositoryBase<Product, NorthwindNPgSqlDbContext>, IProductDal
    {
        public PgProductDal(NorthwindNPgSqlDbContext context) : base(context)
        {
        }
    }
}