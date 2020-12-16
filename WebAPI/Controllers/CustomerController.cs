using Business.Handlers.Customers.Commands;
using Business.Handlers.Customers.Queries;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using MongoDB.Bson;
using System.Threading.Tasks;

namespace WebAPI.Controllers
{
    /// <summary>
    /// 
    /// </summary>
    [Route("api/[controller]")]
    [ApiController]

    public class CustomerController : BaseApiController
    {
        ///<summary>
        ///Customer listeler
        ///</summary>
        ///<remarks>bla bla bla Animals</remarks>
        ///<return>Animals Listesi</return>
        ///<response code="200"></response>  
        [HttpGet("getall")]
        public async Task<IActionResult> GetList()
        {
            var result = await Mediator.Send(new GetCustomersQuery());
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
        ///<return>Customer Listesi</return>
        ///<response code="200"></response>  
        [HttpGet("getbyid")]
        public async Task<IActionResult> GetById(ObjectId Id)
        {
            var result = await Mediator.Send(new GetCustomerQuery { Id = Id });
            if (result.Success)
            {
                return Ok(result.Data);
            }
            return BadRequest(result.Message);
        }

        /// <summary>
        /// Customer Ekler.
        /// </summary>
        /// <param name="createCustomer"></param>
        /// <returns></returns>
        [HttpPost]
        public async Task<IActionResult> Add([FromBody] CreateCustomerCommand createCustomer)
        {
            var result = await Mediator.Send(createCustomer);
            if (result.Success)
            {
                return Ok(result.Message);
            }
            return BadRequest(result.Message);
        }

        /// <summary>
        /// Customer Günceller.
        /// </summary>
        /// <param name="updateCustomer"></param>
        /// <returns></returns>
        [HttpPut]
        public async Task<IActionResult> Update([FromBody] UpdateCustomerCommand updateCustomer)
        {
            var result = await Mediator.Send(updateCustomer);
            if (result.Success)
            {
                return Ok(result.Message);
            }
            return BadRequest(result.Message);
        }

        /// <summary>
        /// Customer Siler.
        /// </summary>
        /// <param name="deleteCustomer"></param>
        /// <returns></returns>
        [HttpDelete]
        public async Task<IActionResult> Delete([FromBody] DeleteCustomerCommand deleteCustomer)
        {
            var result = await Mediator.Send(deleteCustomer);
            if (result.Success)
            {
                return Ok(result.Message);
            }
            return BadRequest(result.Message);
        }

    }
}
