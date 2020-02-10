using Core.Entities;
using Microsoft.EntityFrameworkCore;
using System.Linq;

namespace Core.DataAccess.EntityFramework
{
    public class EfQueryableRepositoryBase<T> : IQueryableRepositoryBase<T>
        where T : class, IEntity, new()
    {
        private readonly DbContext _context;
        private DbSet<T> _entities;
        public EfQueryableRepositoryBase(DbContext context)
        {
            _context = context;
        }

        public IQueryable<T> Table => Entities;

        protected virtual DbSet<T> Entities
        {
            get { return _entities ?? (_entities = _context.Set<T>()); }
        }
    }
}
