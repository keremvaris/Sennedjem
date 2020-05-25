
using Business.Handlers.Authorizations.Commands;
using Business.Handlers.Authorizations.Commands.RegisterAuth;
using Business.Services.Authentication;
using Core.Utilities.Security.Jwt;
using MediatR;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using System.Threading.Tasks;

namespace WebAPI.Controllers
{
    /// <summary>
    /// Authorization işlemlerini yapar
    /// </summary>
    [Authorize]
    [Route("api/[controller]")]
    [ApiController]
    public class AuthController : Controller
    {
        private readonly IMediator _mediator;
        private readonly IConfiguration configuration;

        /// <summary>
        /// Dependency injection constructor injection ile sağlanır.
        /// </summary>
        /// <param name="mediator"></param>
        /// <param name="configuration"></param>
        public AuthController(IMediator mediator, IConfiguration configuration)
        {
            _mediator = mediator;
            this.configuration = configuration;
        }

        /// <summary>
        /// Kullanıcı Giriş Metodu İşlemlerini Yapar.
        /// </summary>
        /// <param name="loginModel"></param>
        /// <returns></returns>  
        [ProducesResponseType(typeof(LoginUserResult), 200)]
        [AllowAnonymous]
        [HttpPost("login")]
        public async Task<IActionResult> Login([FromBody]LoginUserQuery loginModel)
        {
            var result = await _mediator.Send(loginModel);
            if (result.Success)
                return Ok(result.Data);
            return Unauthorized(result.Message);
        }


        /// <summary>
        /// Mobil Giriş.
        /// </summary>
        /// <param name="mobileLogin"></param>
        /// <returns></returns>
        [ProducesResponseType(typeof(SFwToken), 200)]
        [AllowAnonymous]
        [HttpPost("verify")]
        public async Task<IActionResult> Verification([FromBody]VerifyOTPCommand mobileLogin)
        {
            var result = await _mediator.Send(mobileLogin);
            if (result.Success)
                return Ok(result.Data);
            return Unauthorized(result.Message);
        }

        /// <summary>
        ///  Kullanıcı Kayıt Metodu İşlemlerini yapar.
        /// </summary>
        /// <param name="createUser"></param>
        /// <returns></returns>        
        [AllowAnonymous]
        [HttpPost("register")]
        public async Task<IActionResult> Register([FromBody]RegisterUser.Command createUser)
        {
            var result = await _mediator.Send(createUser);
            if (result.Success)
                return Ok(result);

            return BadRequest(result);
        }
        ///<summary>
        ///Parolamı Unuttum.
        ///</summary>
        ///<remarks>tckimlikno</remarks>
        ///<return></return>
        ///<response code="200"></response>   
        [HttpPut("forgotpassword")]
        public async Task<IActionResult> ForgotPassword([FromBody]ForgotPasswordCommand forgotPassword)
        {
            var result = await _mediator.Send(forgotPassword);
            if (result.Success)
                return Ok(result);

            return BadRequest(result);
        }


        /// <summary>
        /// Sisteme giriş yapıldıktan sonra erişilebilen ve token gerektiren kaynak.
        /// </summary>
        /// <returns></returns>
        [HttpPost("test")]
        public IActionResult LoginTest()
        {
            var auth = Request.Headers["Authorization"];
            var token = new JwtHelper(configuration).DecodeToken(auth);
            return Ok(token);
        }

        /*

				/// <summary>
				///  Kullanıcı Kayıt İşlemlerini yapar.
				/// </summary>
				/// <param name="createUser"></param>
				/// <returns></returns>
				[AllowAnonymous]
				[HttpPost("register")]
				public async Task<IActionResult> Register([FromBody]RegisterUser.Command createUser)
				{
					var result = await _mediator.Send(createUser);
					if (result.Success)
						return Ok(result);

					return BadRequest(result);
				}

				///<summary>
				///Parolamı Unuttum.
				///</summary>
				///<remarks>tckimlikno</remarks>
				///<return></return>
				///<response code="200"></response>   
				[HttpPut("forgotpassword")]
				public async Task<IActionResult> ForgotPassword([FromBody]ForgotPasswordCommand forgotPassword)
				{
					var result = await _mediator.Send(forgotPassword);
					if (result.Success)
						return Ok(result);

					return BadRequest(result);
				}

			*/
    }
}
