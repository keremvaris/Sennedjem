using Business.BusinessAspects.Autofac;
using Business.Handlers.OperationClaims.Commands;
using Core.Utilities.IoC;
using MediatR;
using Microsoft.AspNetCore.Builder;
using Microsoft.Extensions.DependencyInjection;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;

namespace Business.Helpers
{
  public static class OperationClaimCreatorMiddleware
  {
    public static void UseDbOperationClaimCreator(this IApplicationBuilder app)
    {
      var mediator = ServiceTool.ServiceProvider.GetService<IMediator>();

      try
      {
        foreach (var operationName in GetOperationNames())
        {
          mediator.Send(new CreateOperationClaimCommand
          {
            ClaimName = operationName
          });
        }
      }
      catch (System.Exception)
      {

        throw;
      }
    }

    private static IEnumerable<string> GetOperationNames()
    {
      var assemblyNames = Assembly.GetExecutingAssembly().GetTypes()
          .Where(x => 
          // runtime generated anonmous type'larin assemblysi olmadigi icin null cek yap
          x.Namespace != null && x.Namespace.StartsWith("Business.Handlers") && (x.Name.EndsWith("Command") || x.Name.EndsWith("Query"))
        && x.CustomAttributes.Any(a => a.AttributeType == typeof(SecuredOperation)))
      .Select(x => x.Name);
      return assemblyNames;
    }
  }
}
