using Business.Handlers.Animals.Commands;
using Business.Handlers.Animals.Queries;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System.Threading.Tasks;

namespace WebAPI.Controllers
{
    /// <summary>
    /// Animal Controller
    /// </summary>
    [Route("api/[controller]")]
    [ApiController]
    public class AnimalsController : BaseApiController
    {
        ///<summary>
        ///Animals listeler
        ///</summary>
        ///<remarks>bla bla bla Animals</remarks>
        ///<return>Animals Listesi</return>
        ///<response code="200"></response>  
        [HttpGet("getall")]
        //[AllowAnonymous]
        public async Task<IActionResult> GetList()
        {
            var result = await Mediator.Send(new GetAnimalsQuery());
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
        [AllowAnonymous]
        public async Task<IActionResult> GetById(int animalId)
        {
            var result = await Mediator.Send(new GetAnimalQuery { AnimalId = animalId });
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
        [AllowAnonymous]
        public async Task<IActionResult> Add([FromBody] CreateAnimalCommand createAnimal)
        {
            var result = await Mediator.Send(createAnimal);
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
        public async Task<IActionResult> Update([FromBody] UpdateAnimalCommand updateAnimal)
        {
            var result = await Mediator.Send(updateAnimal);
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
        public async Task<IActionResult> Delete([FromBody] DeleteAnimalCommand deleteAnimal)
        {
            var result = await Mediator.Send(deleteAnimal);
            if (result.Success)
            {
                return Ok(result.Message);
            }
            return BadRequest(result.Message);
        }
        /// <summary>
        /// Transactional Operation Test. 
        /// Transanctional Operasyonlar InMemoryDb'de çalıştırılamaz.  
        /// IISDevelopment ortamında çalıştırmayınız!
        /// </summary>
        /// <param name="transactionalCreateAnimal"></param>
        /// <returns></returns>
        [HttpPost("transactionalAdd")]
        [AllowAnonymous]
        public async Task<IActionResult> TransactionalAdd([FromBody] AnimalTransactionalOperationCommand transactionalCreateAnimal)
        {
            var result = await Mediator.Send(transactionalCreateAnimal);
            if (result.Success)
            {
                return Ok(result.Message);
            }
            return BadRequest(result.Message);
        }
    }
}
