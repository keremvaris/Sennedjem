using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Threading.Tasks;
using Core.Entities;
using Microsoft.EntityFrameworkCore;

namespace Core.DataAccess.EntityFramework
{
    /// <summary>
    /// Repository Patternin implementasyonudur. CRUD operasyonlar için gerekli tüm toolkit burada implemente edilmiştir.
    /// ayrıca lifetimescope autofac tarafından yönetildiğinden metodların içinde bulunan usingler kaldırılmıştır.
    /// </summary>
    /// <typeparam name="TEntity"></typeparam>
    /// <typeparam name="TContext"></typeparam>
    public class EfEntityRepositoryBase<TEntity, TContext>
            : IEntityRepository<TEntity>
            where TEntity : class, IEntity
            where TContext : DbContext
    {
        protected readonly TContext context;

        public EfEntityRepositoryBase(TContext context)
        {
            this.context = context;
        }

        public TEntity Add(TEntity entity)
        {
            return context.Add(entity).Entity;
        }

        public TEntity Update(TEntity entity)
        {
            context.Update(entity);
            return entity;
        }

        public void Delete(TEntity entity)
        {
            context.Remove(entity);
        }

        public TEntity Get(Expression<Func<TEntity, bool>> expression)
        {
            return context.Set<TEntity>().FirstOrDefault(expression);
        }

        public async Task<TEntity> GetAsync(Expression<Func<TEntity, bool>> expression)
        {
            return await context.Set<TEntity>().FirstOrDefaultAsync(expression);
        }

        public IEnumerable<TEntity> GetList(Expression<Func<TEntity, bool>> expression = null)
        {
            return expression == null ? context.Set<TEntity>().AsNoTracking() : context.Set<TEntity>().Where(expression).AsNoTracking();
        }

        public async Task<IEnumerable<TEntity>> GetListAsync(Expression<Func<TEntity, bool>> expression = null)
        {
            return expression == null ? await context.Set<TEntity>().ToListAsync() :
                 await context.Set<TEntity>().Where(expression).ToListAsync();
        }

        public int SaveChanges()
        {
            return context.SaveChanges();
        }

        public Task<int> SaveChangesAsync()
        {
            return context.SaveChangesAsync();
        }

        public IQueryable<TEntity> Query()
        {
            return context.Set<TEntity>();
        }

        public Task<int> Execute(FormattableString interpolatedQueryString)
        {
            return context.Database.ExecuteSqlInterpolatedAsync(interpolatedQueryString);
        }
    }
}
