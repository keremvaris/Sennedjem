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
        where TEntity : class, IEntity, new()
        where TContext : DbContext, new()
    {
        public TEntity Add(TEntity entity)
        {
            using (TContext context = new TContext())
            {
                var addedEntity = context.Entry(entity);
                addedEntity.State = EntityState.Added;
                context.SaveChanges();
                return entity;
            }
        }

        public async Task<TEntity> AddAsync(TEntity entity)
        {
            using (TContext context = new TContext())
            {
                var addedEntity = context.Entry(entity);
                addedEntity.State = EntityState.Added;
                await context.SaveChangesAsync();
                return entity;
            }
        }

        public void Delete(TEntity entity)
        {
            using (TContext context = new TContext())
            {
                var deletedEntity = context.Entry(entity);
                deletedEntity.State = EntityState.Deleted;
                context.SaveChanges();
            }
        }

        public async Task DeleteAsync(TEntity entity)
        {
            using (TContext context = new TContext())
            {
                var deletedEntity = context.Entry(entity);
                deletedEntity.State = EntityState.Deleted;
                await context.SaveChangesAsync();
            }
        }

        public TEntity Get(Expression<Func<TEntity, bool>> expression)
        {
            using (TContext context = new TContext())
            {
                return context.Set<TEntity>().FirstOrDefault(expression);
            }
        }

        public async Task<TEntity> GetAsync(Expression<Func<TEntity, bool>> expression)
        {
            using (TContext context = new TContext())
            {
                return await context.Set<TEntity>().FirstOrDefaultAsync(expression);
            }
        }

        public IEnumerable<TEntity> GetList(Expression<Func<TEntity, bool>> expression = null)
        {
            using (TContext context = new TContext())
            {
                return expression == null ? context.Set<TEntity>().AsNoTracking() : context.Set<TEntity>().Where(expression).AsNoTracking();
            }
        }

        public async Task<IEnumerable<TEntity>> GetListAsync(Expression<Func<TEntity, bool>> expression = null)
        {
            using (TContext context = new TContext())
            {
                return expression == null ? await context.Set<TEntity>().ToListAsync() :
                   await context.Set<TEntity>().Where(expression).ToListAsync();
            }
        }

        public TEntity Update(TEntity entity)
        {
            using (TContext context = new TContext())
            {
                var modifiedEntity = context.Entry(entity);
                modifiedEntity.State = EntityState.Modified;
                context.SaveChanges();
                return entity;
            }
        }

        public async Task<TEntity> UpdateAsync(TEntity entity)
        {
            using (TContext context = new TContext())
            {
                var modifiedEntity = context.Entry(entity);
                modifiedEntity.State = EntityState.Modified;
                await context.SaveChangesAsync();
                return entity;
            }
        }
    }
}
