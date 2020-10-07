using Core.DataAccess.MongoDb.Abstract;
using Entities.Concrete;


namespace DataAccess.Abstract
{
    public interface ICustomerRepository : IMongoDbRepository<Customer>
    {

    }
}
