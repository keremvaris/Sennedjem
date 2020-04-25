using Core.Utilities.Results;
using Core.Utilities.Security.Jwt;
using Entities.Concrete;
using MediatR;

namespace Business.Services.Authentication
{
	/// <summary>
	/// Kullanıcıya gönderilen One Time Password'ü kontrol etmek gönderilen komuttur.
	/// </summary>
	public class VerifyOTPCommand : IRequest<IDataResult<AccessToken>>
  {
		public AuthenticationProviderType Provider { get; set; }
    public string ExternalUserId { get; set; }
    public int Code { get; set; }
  }
}
