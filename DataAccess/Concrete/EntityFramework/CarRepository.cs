
using System;
using System.Linq;
using Core.DataAccess.EntityFramework;
using Entities.Concrete;
using DataAccess.Abstract;
using DataAccess.Concrete.EntityFramework.Contexts;

namespace DataAccess.Concrete.EntityFramework
{
    public class CarRepository : EfEntityRepositoryBase<Car, ProjectDbContext>, ICarRepository
    {
        public CarRepository(ProjectDbContext context) : base(context)
        {
        }
    }
}
