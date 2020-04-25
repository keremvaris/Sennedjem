
using Business.Handlers.Animals.Commands;
using Business.Handlers.Animals.Queries;
using MediatR;
using Microsoft.AspNetCore.Mvc;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;

namespace WebAPI.Controllers
{
    /// <summary>
    /// Animal Controller
    /// </summary>
    [Authorize]
    [Route("api/[controller]")]
    [ApiController]
    public class AnimalsController : ControllerBase
    {
        private readonly IMediator _mediator;
        ///<summary>
        ///CRUD Controller for Animals       
        /// <param name="mediator"></param>     

        public AnimalsController(IMediator mediator)
        {
            _mediator = mediator;
        }

        ///<summary>
        ///Animals listeler
        ///</summary>
        ///<remarks>bla bla bla Animals</remarks>
        ///<return>Animals Listesi</return>
        ///<response code="200"></response>  
        [HttpGet("getall")]
        public async Task<IActionResult> GetList()
        {
            var result = await _mediator.Send(new GetAnimalsQuery());
            if (result.Success)
            {
                return Ok(result.Data);
            }
            return BadRequest(result.Message);
        }

        ///<summary>
        ///Id sine göre detaylarını getirir.
        ///</summary>
        ///<remarks>bla bla bla </remarks>
        ///<return>Animals Listesi</return>
        ///<response code="200"></response>  
        [HttpGet("getbyid")]
        public async Task<IActionResult> GetById(int animalId)
        {
            var result = await _mediator.Send(new GetAnimalQuery { AnimalId = animalId });
            if (result.Success)
            {
                return Ok(result.Data);
            }
            return BadRequest(result.Message);
        }

        /// <summary>
        /// Animal Ekler.
        /// </summary>
        /// <param name="createAnimal"></param>
        /// <returns></returns>
        [HttpPost]
        public async Task<IActionResult> Add([FromBody]CreateAnimalCommand createAnimal)
        {
            var result = await _mediator.Send(createAnimal);
            if (result.Success)
            {
                return Ok(result.Message);
            }
            return BadRequest(result.Message);
        }

        /// <summary>
        /// Animal Günceller.
        /// </summary>
        /// <param name="updateAnimal"></param>
        /// <returns></returns>
        [HttpPut]
        public async Task<IActionResult> Update([FromBody]UpdateAnimalCommand updateAnimal)
        {
            var result = await _mediator.Send(updateAnimal);
            if (result.Success)
            {
                return Ok(result.Message);
            }
            return BadRequest(result.Message);
        }

        /// <summary>
        /// Animal Siler.
        /// </summary>
        /// <param name="deleteAnimal"></param>
        /// <returns></returns>
        [HttpDelete]
        public async Task<IActionResult> Delete([FromBody]DeleteAnimalCommand deleteAnimal)
        {
            var result = await _mediator.Send(deleteAnimal);
            if (result.Success)
            {
                return Ok(result.Message);
            }
            return BadRequest(result.Message);
        }
    }
}
