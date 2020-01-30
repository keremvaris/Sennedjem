using Core.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Core.DataAccess
{
    public interface IQueryableRepositoryBase<T> where T : class, IEntity, new()
    {
        IQueryable<T> Table { get; }
    }
}
