using Core.Entities;


namespace Entities.Concrete
{
    public class Car : IEntity
    {
        public int CarId { get; set; }
        public string CarName { get; set; }
    }
}
