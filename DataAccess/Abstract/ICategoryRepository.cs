
using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Core.DataAccess;
using DataAccess.Entities.Dtos;
using Entities.Concrete;
namespace DataAccess.Abstract
{
    public interface ICategoryRepository : IEntityRepository<Category>
    {
        Task<IEnumerable<SelectionItem>> GetCategoryLookUp();
    }
}