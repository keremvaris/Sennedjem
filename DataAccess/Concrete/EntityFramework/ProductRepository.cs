using Core.DataAccess.EntityFramework;
using DataAccess.Abstract;
using DataAccess.Concrete.EntityFramework.Contexts;
using Entities.Concrete;
using Entities.Dtos;
using System.Collections.Generic;
using System.Threading.Tasks;
using System.Linq;
using Microsoft.EntityFrameworkCore;

namespace DataAccess.Concrete.EntityFramework
{
    public class ProductRepository : EfEntityRepositoryBase<Product, ProjectDbContext>, IProductRepository
    {
        public ProductRepository(ProjectDbContext context) : base(context)
        {
        }

        public async Task<IEnumerable<ProductListDto>> GetProdutDtoList()
        {
            var productList = await (from prd in context.Products
                               join ctr in context.Categories on prd.CategoryId equals ctr.CategoryId
                               select new ProductListDto()
                               {
                                   CategoryName = ctr.CategoryName,
                                   ProductId = prd.ProductId,
                                   ProductName = prd.ProductName
                               }).ToListAsync();

            return productList;
        }
    }
}
