using Business.Handlers.Authorizations.Commands.RegisterAuth;
using Business.Handlers.Authorizations.Queries.LoginUser;
using MediatR;
using Microsoft.AspNetCore.Mvc;
using System.Threading.Tasks;

namespace WebAPI.Controllers
{
    /// <summary>
    /// Authorization işlemlerini yapar
    /// </summary>
    [Route("api/[controller]")]
    [ApiController]
    public class AuthController : Controller
    {
        //private IAuthService _authService;
        private IMediator _mediator;

        /// <summary>
        /// Dependency injection constructor injection ile sağlanır.
        /// </summary>
        /// <param name="mediator"></param>
        public AuthController(IMediator mediator)
        {
            _mediator = mediator;
        }

        /// <summary>
        /// Kullanıcı Giriş Metodu İşlemlerini Yapar.
        /// </summary>
        /// <param name="loginModel"></param>
        /// <returns></returns>  

        [HttpPost("login")]
        public async Task<IActionResult> Login([FromBody]LoginUserQuery loginModel)
        {
            var result = await _mediator.Send(loginModel);
            if (result.Success)
                return Ok(result.Data);

            return BadRequest(result.Message);
        }

        /// <summary>
        ///  Kullanıcı Kayıt Metodu İşlemlerini yapar.
        /// </summary>
        /// <param name="createUser"></param>
        /// <returns></returns>
        [HttpPost("register")]
        public async Task<IActionResult> Register([FromBody]RegisterUser.Command createUser)
        {
            var result = await _mediator.Send(createUser);
            if (result.Success)
                return Ok(result);

            return BadRequest(result);
        }
    }
}
