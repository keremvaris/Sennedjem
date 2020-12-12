using DataAccess.Entities;

namespace Business.Services.Authentication
{
    public interface IAuthenticationCoordinator
    {
        IAuthenticationProvider SelectProvider(AuthenticationProviderType type);
    }
}