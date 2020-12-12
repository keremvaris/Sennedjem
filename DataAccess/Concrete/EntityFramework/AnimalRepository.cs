using Core.DataAccess.EntityFramework;
using DataAccess.Abstract;
using DataAccess.Concrete.EntityFramework.Contexts;
using Entities.Concrete;

namespace DataAccess.Concrete.EntityFramework
{
    public class AnimalRepository : EfEntityRepositoryBase<Animal, ProjectDbContext>, IAnimalRepository
    {
        public AnimalRepository(ProjectDbContext context) : base(context)
        {
        }
    }
}
