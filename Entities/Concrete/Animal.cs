using Core.Entities;

namespace Entities.Concrete
{
    public class Animal : IEntity
    {
        public int AnimalId { get; set; }
        public string AnimalName { get; set; }
    }
}
