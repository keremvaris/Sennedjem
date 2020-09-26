using MongoDB.Bson;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Threading.Tasks;

namespace Core.DataAccess.MongoDb.Abstract
{
    public interface IMongoDbRepository<T> where T: MongoBaseEntity
    {
        void Insert(T entity);
        IQueryable<T> LoadRecords(Expression<Func<T, bool>> predicate = null);
        T GetById(ObjectId id);
        void InsertMany(IEnumerable<T> entities);
        void Update(ObjectId id, T record);
        void Update(T record, Expression<Func<T, bool>> predicate);
        void Delete(ObjectId id);
        void Delete(T record);
        Task InsertAsync(T entity);
        Task<IQueryable<T>> LoadRecordsAsync(Expression<Func<T, bool>> predicate = null);
        Task<T> GetByIdAsync(ObjectId id);
        Task InsertManyAsync(IEnumerable<T> entities);
        Task UpdateAsync(ObjectId id, T record);
        Task UpdateAsync(T record, Expression<Func<T, bool>> predicate);
        Task DeleteAsync(ObjectId id);
        Task DeleteAsync(T record);



    }
}
