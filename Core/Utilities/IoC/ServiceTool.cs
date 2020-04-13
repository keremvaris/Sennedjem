using Microsoft.Extensions.DependencyInjection;
using System;

namespace Core.Utilities.IoC
{
  public static class ServiceTool
  {
    public static IServiceProvider ServiceProvider { get; set; }
    public static IServiceCollection Create(IServiceCollection services)
    {
      ServiceProvider = services.BuildServiceProvider();
      return services;
    }
  }
}
