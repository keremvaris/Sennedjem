using Business.Adapters.SmsService;
using Core.Utilities.Security.Jwt;
using DataAccess.Abstract;
using Entities.Concrete;
using Microsoft.EntityFrameworkCore;
using System.Linq;
using System.Threading.Tasks;

namespace Business.Services.Authentication
{
    /// <summary>
    /// OAS veritabanını kullanarak login olan provider dır.
    /// </summary>
    public class PersonAuthenticationProvider : AuthenticationProviderBase, IAuthenticationProvider
    {
        private readonly IUserRepository users;
        private readonly ISmsService smsService;
        private readonly ITokenHelper tokenHelper;

        public PersonAuthenticationProvider(IUserRepository users, IMobileLoginRepository mobileLogins, ITokenHelper tokenHelper, ISmsService smsService)
            : base(mobileLogins, smsService)
        {
            this.users = users;

            this.tokenHelper = tokenHelper;
        }

        public override async Task<LoginUserResult> Login(LoginUserCommand command)
        {
            var citizenId = command.AsCitizenId();
            var user = await users.Query()
                .Where(u => u.TCKimlikNo == citizenId)
                .FirstOrDefaultAsync();
            if (user == null)
            {
                // Bakalim hemonline'da var mi?
                var cid = command.ExternalUserId;
                var mobilePhone = user.CepTelefonu;
                return new LoginUserResult { Status = LoginUserResult.LoginStatus.UserNotFound, MobilePhones = new string[] { mobilePhone } };
            }

            // Bu provider icin external id tckimlik string halidir.
            if (command.IsPhoneValid)
                // Bu provider icin external id hemonline login nameidir'sidir.
                return await PrepareOneTimePassword(AuthenticationProviderType.Person, user.CepTelefonu, user.TCKimlikNo.ToString());
            else
                return new LoginUserResult
                {
                    Message = "Bilgiler doğru. Cep telefonu gerekiyor.",
                    Status = LoginUserResult.LoginStatus.PhoneNumberRequired,
                    MobilePhones = new string[] { user.CepTelefonu }
                };
        }

        protected override async Task<AccessToken> CreateToken(string externalUserId)
        {
            var citizenId = long.Parse(externalUserId);
            var user = await users.GetAsync(u => u.TCKimlikNo == citizenId);
            var claims = users.GetClaims(user.UserId);
            var accessToken = tokenHelper.CreateToken(user, claims);
            return accessToken;
        }

    }
}
