
using Business.Handlers.Cars.Commands;
using Business.Handlers.Cars.Queries;
using Microsoft.AspNetCore.Mvc;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;

namespace WebAPI.Controllers
{
    /// <summary>
    /// Cars Controller Authorize olmayacaksa [AllowAnonymous] Kullanılır.
    /// </summary>
    [Route("api/[controller]")]
    [ApiController]
    public class CarsController : BaseApiController
    {
        ///<summary>
        ///Car listeler
        ///</summary>
        ///<remarks>bla bla bla Cars</remarks>
        ///<return>Cars Listesi</return>
        ///<response code="200"></response>  
        [HttpGet("getall")]
        public async Task<IActionResult> GetList()
        {
            var result = await Mediator.Send(new GetCarsQuery());
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
        ///<return>Car Listesi</return>
        ///<response code="200"></response>  
        [HttpGet("getbyid")]
        public async Task<IActionResult> GetById(int carId)
        {
            var result = await Mediator.Send(new GetCarQuery { CarId = carId });
            if (result.Success)
            {
                return Ok(result.Data);
            }
            return BadRequest(result.Message);
        }

        /// <summary>
        /// Car Ekler.
        /// </summary>
        /// <param name="createCar"></param>
        /// <returns></returns>
        [HttpPost]
        public async Task<IActionResult> Add([FromBody] CreateCarCommand createCar)
        {
            var result = await Mediator.Send(createCar);
            if (result.Success)
            {
                return Ok(result.Message);
            }
            return BadRequest(result.Message);
        }

        /// <summary>
        /// Car Günceller.
        /// </summary>
        /// <param name="updateCar"></param>
        /// <returns></returns>
        [HttpPut]
        public async Task<IActionResult> Update([FromBody] UpdateCarCommand updateCar)
        {
            var result = await Mediator.Send(updateCar);
            if (result.Success)
            {
                return Ok(result.Message);
            }
            return BadRequest(result.Message);
        }

        /// <summary>
        /// Car Siler.
        /// </summary>
        /// <param name="deleteCar"></param>
        /// <returns></returns>
        [HttpDelete]
        public async Task<IActionResult> Delete([FromBody] DeleteCarCommand deleteCar)
        {
            var result = await Mediator.Send(deleteCar);
            if (result.Success)
            {
                return Ok(result.Message);
            }
            return BadRequest(result.Message);
        }
    }
}
