using Core.DataAccess.MongoDb.Abstract;
using DataAccess.Abstract;
using DataAccess.Concrete.MongoDb.Context;
using Entities.Concrete;

namespace DataAccess.Concrete.MongoDb
{
    public class CustomerMongoRepository : MongoDbRepositoryBase<Customer>, ICustomerMongoRepository
    {
        public CustomerMongoRepository(MongoDbContextBase mongoDbContext ,string collectionName):base(mongoDbContext.mongoConnectionSettings,collectionName)
        {

        }

        
    }
}
