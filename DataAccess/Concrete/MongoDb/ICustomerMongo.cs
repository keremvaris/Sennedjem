using Core.DataAccess.MongoDb.Abstract;
using Entities.Concrete;


namespace DataAccess.Concrete.MongoDb
{
    public interface ICustomerMongo: IMongoDbRepository<Customer>
    {

    }
}
