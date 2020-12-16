
using Business.Handlers.Products.Commands;
using Business.Handlers.Products.Queries;
using Core.Utilities.Results;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System.Threading.Tasks;

namespace WebAPI.Controllers
{
    /// <summary>
    /// Product Controller Authorize olmayacaksa [AllowAnonymous] Kullanılır.
    /// </summary>
    [Route("api/[controller]")]
    [ApiController]
    public class ProductsController : BaseApiController
    {
        ///<summary>
        ///Products listeler
        ///</summary>
        ///<remarks>bla bla bla Products</remarks>
        ///<return>Products Listesi</return>
        ///<response code="200"></response>  
        [HttpGet("getall")]
        public async Task<IActionResult> GetList()
        {
            var result = await Mediator.Send(new GetProductsQuery());
            if (result.Success)
            {
                return Ok(result.Data);
            }
            return BadRequest(result.Message);
        }


        ///<summary>
        ///Grupları listeler
        ///</summary>
        ///<remarks>bla bla bla Groups</remarks>
        ///<return>Grup Listesi</return>
        ///<response code="200"></response>  
        [HttpGet("getproductdtolist")]
        //[AllowAnonymous]
        public async Task<IActionResult> GetProductDtoList()
        {
            var result = await Mediator.Send(new GetProdcutDtoListQuery());
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
        ///<return>Products Listesi</return>
        ///<response code="200"></response>  
        [HttpGet("getbyid")]
        public async Task<IActionResult> GetById(int productId)
        {
            var result = await Mediator.Send(new GetProductQuery { ProductId = productId });
            if (result.Success)
            {
                return Ok(result.Data);
            }
            return BadRequest(result.Message);
        }

        /// <summary>
        /// Product Ekler.
        /// </summary>
        /// <param name="createProduct"></param>
        /// <returns></returns>
        [HttpPost]
        [ProducesResponseType(200, Type = typeof(SuccessResult))]
        [ProducesResponseType(400, Type = typeof(ErrorResult))]
        public async Task<IActionResult> Add([FromBody] CreateProductCommand createProduct)
        {
            var result = await Mediator.Send(createProduct);
            if (result.Success)
            {
                return Ok(result.Message);
            }
            return BadRequest(result.Message);
        }

        /// <summary>
        /// Product Günceller.
        /// </summary>
        /// <param name="updateProduct"></param>
        /// <returns></returns>
        [HttpPut]
        public async Task<IActionResult> Update([FromBody] UpdateProductCommand updateProduct)
        {
            var result = await Mediator.Send(updateProduct);
            if (result.Success)
            {
                return Ok(result.Message);
            }
            return BadRequest(result.Message);
        }

        /// <summary>
        /// Product Siler.
        /// </summary>
        /// <param name="deleteProduct"></param>
        /// <returns></returns>
        [HttpDelete]
        public async Task<IActionResult> Delete([FromBody] DeleteProductCommand deleteProduct)
        {
            var result = await Mediator.Send(deleteProduct);
            if (result.Success)
            {
                return Ok(result.Message);
            }
            return BadRequest(result.Message);
        }
    }
}
