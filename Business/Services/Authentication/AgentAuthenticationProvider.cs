using Core.Utilities.Results;
using Core.Utilities.Security.Jwt;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace Business.Services.Authentication
{
	public class AgentAuthenticationProvider : IAuthenticationProvider
	{
		public Task<LoginUserResult> Login(LoginUserCommand command)
		{
			throw new NotImplementedException();
		}

		public Task<IDataResult<AccessToken>> Verify(VerifyOTPCommand request)
		{
			throw new NotImplementedException();
		}
	}
}
