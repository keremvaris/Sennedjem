using Core.DataAccess.MongoDb.Abstract;
using Entities.Concrete;


namespace DataAccess.Abstract
{
    public interface ICustomerMongoRepository : IMongoDbRepository<Customer>
    {

    }
}
