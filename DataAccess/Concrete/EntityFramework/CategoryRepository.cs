
using System;
using System.Linq;
using Core.DataAccess.EntityFramework;
using Entities.Concrete;
using DataAccess.Abstract;
using DataAccess.Concrete.EntityFramework.Contexts;
using System.Threading.Tasks;
using System.Collections.Generic;
using DataAccess.Entities.Dtos;
using Microsoft.EntityFrameworkCore;

namespace DataAccess.Concrete.EntityFramework
{
    public class CategoryRepository : EfEntityRepositoryBase<Category, ProjectDbContext>, ICategoryRepository
    {
        public CategoryRepository(ProjectDbContext context) : base(context)
        {
        }

        public async Task<IEnumerable<SelectionItem>> GetCategoryLookUp()
        {
            var list = await (from ctr in context.Categories
                        select new SelectionItem()
                        {
                            Id = ctr.CategoryId.ToString(),
                            Label = ctr.CategoryName
                        }).ToListAsync();
            return list;
        }
    }
}
