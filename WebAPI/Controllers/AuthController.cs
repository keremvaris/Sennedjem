using Business.Handlers.Authorizations.Commands.ForgotPassword;
using Business.Handlers.Authorizations.Commands.RegisterAuth;
using Business.Handlers.Authorizations.Queries.LoginUser;
using Business.Handlers.Authorizations.Queries.VerifyCid;
using MediatR;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System.Threading.Tasks;
using Core.Utilities.Security.Jwt;
using Microsoft.Extensions.Configuration;

namespace WebAPI.Controllers
{
    /// <summary>
    /// Authorization işlemlerini yapar
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
        [AllowAnonymous]
        [HttpPost("login")]
        public async Task<IActionResult> Login([FromBody]LoginUserQuery loginModel)
        {
            var result = await _mediator.Send(loginModel);
            if (result.Success)
                return Ok(result.Data);

            return BadRequest(result.Message);
        }

        /// <summary>
        /// Kişi TC Kimlik No Doğrulama.
        /// </summary>
        /// <param name="verifyCid"></param>
        /// <returns></returns>  

        [HttpPost("verifycid")]
        public async Task<IActionResult> VerifyCid([FromBody]VerifyCidQuery verifyCid)
        {
            var result = await _mediator.Send(verifyCid);
            if (result.Success)
                return Ok(result.Message);

            return BadRequest(result.Message);
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
    }
}
