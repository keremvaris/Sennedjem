using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.Text;

namespace DataAccess.Concrete.EntityFramework.Contexts
{
    public sealed class InMemoryContext : ProjectDbContext
    {
        public InMemoryContext(DbContextOptions options, IConfiguration configuration) : base(options, configuration)
        {
        }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
                base.OnConfiguring(optionsBuilder.UseInMemoryDatabase(databaseName: configuration.GetConnectionString("OASInMemoryContext").ToString()));
            }
        }
    }
}
