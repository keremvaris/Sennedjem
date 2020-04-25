using Business.Adapters;
using Core.Entities.Concrete;
using Core.Utilities.Results;
using Core.Utilities.Security.Jwt;
using DataAccess.Abstract;
using HemOnline.DN;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Business.Services.Authentication
{
	/// <summary>
	/// HemOnline sistemi üzerinden login olan hizmet sağlayıcıdır.
	/// </summary>
	public class StaffAuthenticationProvider : AuthenticationProviderBase, IAuthenticationProvider
	{
		private readonly DonationContext context;
		private readonly ITokenHelper tokenHelper;

		public StaffAuthenticationProvider(DonationContext context, IMobileLoginRepository mobileLogins, ITokenHelper tokenHelper, ISmsService smsService)
			: base(mobileLogins, smsService)
		{
			this.context = context;
			this.tokenHelper = tokenHelper;
		}

		/// <summary>
		/// Akış:
		/// 
		/// - HemOnline kullanıcısı sicil ve şifresiyle logini çağırır
		/// - Sistem cep telefonu bulamamışsa Hata döner
		///		- Sonraki çağırımda cep telefonu ile gelir ve OTP oluşturularak tele gönderilir.
		///	- Cep telefonu bulunmuşsa OTP oluşturularak tele gönderilir.
		/// 
		/// </summary>
		/// <param name="command"></param>
		/// <returns></returns>
		public override async Task<LoginUserResult> Login(LoginUserCommand command)
		{
			var provider = new FrameworkLoginProvider(context);
			var result = provider.CheckPassword(command.ExternalUserId, command.Password);
			var user = result.Data;
			// Eger telefon numarasi verilmisse guncelle ve devam et
			if (command.IsPhoneValid)
			{
				// Eger esitse bosuna db'yi yorma.
				if (user.UpdateMobilePhone(command.MobilePhone))
					await context.SaveChangesAsync();
			}
			if (result.Success)
			{
				if (command.IsPhoneValid)
					// Bu provider icin external id hemonline login name idir.
					return await PrepareOneTimePassword(Entities.Concrete.AuthenticationProviderType.Staff, user.MobilePhone, user.LoginName);
				else
					return new LoginUserResult
					{
						Message = "Bilgiler doğru. Cep telefonu gerekiyor.",
						Status = LoginUserResult.LoginStatus.PhoneNumberRequired,
						MobilePhones = new string[] { user.MobilePhone }
					};
			}
			else
				return new LoginUserResult { Message = result.Message, Status = LoginUserResult.LoginStatus.WrongCredentials };
		}

		protected override async Task<AccessToken> CreateToken(string externalUserId)
		{
			var user = await context.Users
				.Where(u => u.LoginName == externalUserId)
				// Herseyi getirmeye gerek yok
				// İç modele dönüştür.
				.Select(user =>
					new Core.Entities.Concrete.User
					{
						UserId = user.Id,
						Email = user.Email,
						FullName = user.FullName,
						// Hemonline'da vatandaslik cogunda dolu olmadigi icin ic user id'yi aliyoruz.
						CitizenId = user.Id,
						MobilePhones = user.MobilePhone
					})
				.SingleAsync();
			// HemOnline tarafinda su an claim yok.
			var claims = new List<OperationClaim>();
			var accessToken = tokenHelper.CreateToken(user, claims);
			return accessToken;
		}

	}
}
