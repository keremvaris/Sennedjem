using Business.Handlers.Lookups;
using MediatR;
using Microsoft.AspNetCore.Mvc;
using System.Threading.Tasks;

namespace WebAPI.Controllers
{
    /// <summary>
    /// Sistem genelindeki basit lookupların her biri içi bir controller yazmak
    /// yerine lookup isminden liste almak için kullanılır.
    /// </summary>
    [Route("api/[controller]")]
    [ApiController]
    public class LookupController : ControllerBase
    {
        private readonly IMediator _mediator;
        ///<summary>
        /// Constructor
        ///</summary>
        /// <param name="mediator"></param>     
        public LookupController(IMediator mediator)
        {
            _mediator = mediator;
        }

        ///<summary>
        /// Verilen lookupName'e ait listeyi döner.
        ///</summary>
        ///<return>Lookup elemanları.</return>
        ///<response code="200"></response>  
        [HttpGet]
        public async Task<IActionResult> Get(string lookupName)
        {
            var result = await _mediator.Send(new Query { SimpleLookupName = lookupName });

            result = await _mediator.Send(new Query { SimpleLookupName = lookupName });
            if (result.Success)
            {
                return Ok(result.Data);
            }
            return BadRequest(result.Message);
        }

    }
}
