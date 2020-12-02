using Microsoft.EntityFrameworkCore.Design;
using Microsoft.EntityFrameworkCore.Scaffolding.Internal;
using Microsoft.Extensions.DependencyInjection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebAPI.EntityBaseOverride
{
    /// <summary>
    /// 
    /// </summary>
    public class ServiceInjection : IDesignTimeServices
    {
        /// <summary>
        /// 
        /// </summary>
        /// <param name="serviceCollection"></param>
        public void ConfigureDesignTimeServices(IServiceCollection serviceCollection)
        {
            serviceCollection.AddSingleton<ICSharpEntityTypeGenerator, OverrideBase>();
        }
    }
}

