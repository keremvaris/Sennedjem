using Business.Adapters;
using Business.Adapters.SmsService;
using Business.Constants;
using Core.Entities.Concrete;
using Core.Utilities.Results;
using Core.Utilities.Security.Jwt;
using Core.Utilities.Toolkit;
using DataAccess.Abstract;
using Entities.Concrete;
using Microsoft.EntityFrameworkCore;
using System;
using System.Linq;
using System.Threading.Tasks;

namespace Business.Services.Authentication
{
    public abstract class AuthenticationProviderBase : IAuthenticationProvider
    {
        private readonly IMobileLoginRepository logins;
        private readonly ISmsService smsService;

        public AuthenticationProviderBase(IMobileLoginRepository logins, ISmsService smsService)
        {
            this.logins = logins;
            this.smsService = smsService;
        }

        public abstract Task<LoginUserResult> Login(LoginUserCommand command);
        protected abstract Task<AccessToken> CreateToken(string externalUserId);

        protected virtual async Task<LoginUserResult> PrepareOneTimePassword(AuthenticationProviderType providerType, string cellPhone, string externalUserId)
        {
            var oneTimePassword = await logins.Query()
                .Where(m => m.Provider == providerType && m.ExternalUserId == externalUserId && m.IsUsed == false)
                .Select(m => m.Code)
                .FirstOrDefaultAsync();
            int mobileCode;
            if (oneTimePassword == default)
            {
                mobileCode = RandomPassword.RandomNumberGenerator();
                try
                {
                    var sendSms = await smsService.SendAsist($"SAAT {DateTime.Now.ToShortTimeString()} TALEP ETTIGINIZ TURK KIZILAY ONLINE RANDEVU " +
                        $"SISTEMI 24 SAAT GECERLI PAROLANIZ : {mobileCode}", cellPhone);
                    logins.Add(new MobileLogin
                    {
                        Code = mobileCode,
                        IsSend = sendSms,
                        SendDate = DateTime.Now,
                        ExternalUserId = externalUserId,
                        Provider = providerType,
                        IsUsed = false
                    });
                    await logins.SaveChangesAsync();
                }
                catch (Exception ex)
                {
                    return new LoginUserResult { Message = Messages.SmsServiceNotFound, Status = LoginUserResult.LoginStatus.ServiceError };
                }
            }
            else
            {
                mobileCode = oneTimePassword;
            }
            return new LoginUserResult { Message = Messages.SendMobileCode + mobileCode, Status = LoginUserResult.LoginStatus.Ok };
        }

        public async Task<IDataResult<AccessToken>> Verify(VerifyOTPCommand request)
        {
            var login = await logins.GetAsync(m => m.Code == request.Code && m.ExternalUserId == request.ExternalUserId && m.SendDate.AddHours(24) > DateTime.Now);

            if (login == null)
            {
                return new ErrorDataResult<AccessToken>(Messages.InvalidCode);
            }
            var accessToken = await CreateToken(login.ExternalUserId);

            login.IsUsed = true;
            logins.Update(login);
            await logins.SaveChangesAsync();


            return new SuccessDataResult<AccessToken>(accessToken, Messages.SuccessfulLogin);

        }

    }
}