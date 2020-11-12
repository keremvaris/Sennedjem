
using System;
using System.Linq;
using Core.DataAccess.EntityFramework;
using Entities.Concrete;
using DataAccess.Abstract;
using DataAccess.Concrete.EntityFramework.Contexts;

namespace DataAccess.Concrete.EntityFramework
{
    public class AnimalRepository : EfEntityRepositoryBase<Animal, ProjectDbContext>, IAnimalRepository
    {
        public AnimalRepository(ProjectDbContext context) : base(context)
        {
        }
    }
}
