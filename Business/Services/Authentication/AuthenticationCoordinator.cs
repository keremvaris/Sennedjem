using DataAccess.Entities;
using System;
using System.Collections.Generic;
using System.Text;

namespace Business.Services.Authentication
{
  public class AuthenticationCoordinator : IAuthenticationCoordinator
  {
    private readonly IServiceProvider serviceProvider;

    public AuthenticationCoordinator(IServiceProvider serviceProvider)
    {
      this.serviceProvider = serviceProvider;
    }

    // TODO: Çok hızlı yazmak zorunda kaldım, refactor gerekecek.
    public IAuthenticationProvider SelectProvider(AuthenticationProviderType type)
    {
      switch (type)
      {
        case AuthenticationProviderType.Person:
          return (IAuthenticationProvider)serviceProvider.GetService(typeof(PersonAuthenticationProvider));
        case AuthenticationProviderType.Agent:
          return (IAuthenticationProvider)serviceProvider.GetService(typeof(AgentAuthenticationProvider));
        default:
          throw new ApplicationException($"Authentication provider not found: {type}");
      }
    }
  }

}
