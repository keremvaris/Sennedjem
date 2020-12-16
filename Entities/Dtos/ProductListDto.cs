using Core.Entities;

namespace Entities.Dtos
{
    public class ProductListDto:IDto
    {
        public int ProductId { get; set; }
        public string CategoryName { get; set; }
        public string ProductName { get; set; }
    }
}