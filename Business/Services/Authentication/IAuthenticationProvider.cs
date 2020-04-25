using Core.Utilities.Results;
using Core.Utilities.Security.Jwt;
using System.Threading.Tasks;

namespace Business.Services.Authentication
{
	public interface IAuthenticationProvider
	{
		Task<LoginUserResult> Login(LoginUserCommand command);
		Task<IDataResult<AccessToken>> Verify(VerifyOTPCommand request);
	}
}