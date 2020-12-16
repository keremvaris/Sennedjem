using Core.DataAccess;
using Entities.Concrete;
using System.Threading.Tasks;
using System.Collections;
using Entities.Dtos;
using System.Collections.Generic;

namespace DataAccess.Abstract
{
    public interface IProductRepository : IEntityRepository<Product>
    {
        Task<IEnumerable<ProductListDto>> GetProdutDtoList();
    }
}