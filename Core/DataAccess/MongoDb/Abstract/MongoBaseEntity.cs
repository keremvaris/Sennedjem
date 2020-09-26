using MongoDB.Bson;

namespace Core.DataAccess.MongoDb.Abstract
{
    public abstract class MongoBaseEntity
    {
        public ObjectId Id { get; set; }
    }
}
