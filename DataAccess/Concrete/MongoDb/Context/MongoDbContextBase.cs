using Core.DataAccess.MongoDb.Concrete.Models;
using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.Text;

namespace DataAccess.Concrete.MongoDb.Context
{
    public abstract class MongoDbContextBase
    {
        IConfiguration configuration;
        public MongoConnectionSettings mongoConnectionSettings;

        protected MongoDbContextBase(IConfiguration configuration)
        {
            this.configuration = configuration;
            mongoConnectionSettings = configuration.GetSection("MongoDbSettings").Get<MongoConnectionSettings>();
        }
    }
}
