using Core.Entities;
using System.Linq;

namespace Core.DataAccess
{
    public interface IQueryableRepositoryBase<out T> where T : class, IEntity, new()
    {
        IQueryable<T> Table { get; }
    }
}
