
using System;
using Core.DataAccess;
using Entities.Concrete;
namespace DataAccess.Abstract
{
    public interface IAnimalDal : IEntityRepository<Animal>
    {
    }
}