using Core.DataAccess.MongoDb.Abstract;
using Core.DataAccess.MongoDb.Concrete.Models;
using DataAccess.Concrete.MongoDb.Context;
using Entities.Concrete;

namespace DataAccess.Concrete.MongoDb
{
    public class CustomerMongoRepository : MongoDbRepositoryBase<Customer>, ICustomerMongo
    {
        public CustomerMongoRepository(MongoDbContextBase mongoDbContext ,string collectionName):base(mongoDbContext.mongoConnectionSettings,collectionName)
        {

        }

        
    }
}
