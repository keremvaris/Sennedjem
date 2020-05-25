using Business.Adapters.SmsService;
using Core.Entities.Concrete;
using Core.Utilities.Security.Jwt;
using DataAccess.Abstract;
using DataAccess.Entities;
using Microsoft.EntityFrameworkCore;
using System.Linq;
using System.Threading.Tasks;

namespace Business.Services.Authentication
{
	/// <summary>
	/// SFw veritabanını kullanarak login olan provider dır.
	/// </summary>
	public class PersonAuthenticationProvider : AuthenticationProviderBase, IAuthenticationProvider
	{
		private readonly IUserRepository users;
		private readonly ISmsService smsService;
		private readonly ITokenHelper tokenHelper;
		public AuthenticationProviderType ProviderType { get; }
		public PersonAuthenticationProvider(AuthenticationProviderType providerType, IUserRepository users, IMobileLoginRepository mobileLogins, ITokenHelper tokenHelper, ISmsService smsService)
						: base(mobileLogins, smsService)
		{
			this.users = users;
			ProviderType = providerType;
			this.tokenHelper = tokenHelper;
		}

		public override async Task<LoginUserResult> Login(LoginUserCommand command)
		{
			var citizenId = command.AsCitizenId();
			var user = await users.Query()
							.Where(u => u.CitizenId == citizenId)
							.FirstOrDefaultAsync();
			if (user == null)
			{
				// Bakalim hemonline'da var mi?
				var cid = command.ExternalUserId;
				var mobilePhone = user.MobilePhones;
				return new LoginUserResult { Status = LoginUserResult.LoginStatus.UserNotFound, MobilePhones = new string[] { mobilePhone } };
			}

			// Bu provider icin external id tckimlik string halidir.
			if (command.IsPhoneValid)
				// Bu provider icin external id hemonline login nameidir'sidir.
				return await PrepareOneTimePassword(AuthenticationProviderType.Person, user.MobilePhones, user.CitizenId.ToString());
			else
				return new LoginUserResult
				{
					Message = "Bilgiler doğru. Cep telefonu gerekiyor.",
					Status = LoginUserResult.LoginStatus.PhoneNumberRequired,
					MobilePhones = new string[] { user.MobilePhones }
				};
		}

		public override async Task<SFwToken> CreateToken(VerifyOTPCommand command)
		{
			var citizenId = long.Parse(command.ExternalUserId);
			var user = await users.GetAsync(u => u.CitizenId == citizenId);
			user.AuthenticationProviderType = ProviderType.ToString();

			var claims = users.GetClaims(user.UserId);
			var accessToken = tokenHelper.CreateToken<SFwToken>(user, claims);
			accessToken.Provider = ProviderType;
			return accessToken;
		}


	}
}
