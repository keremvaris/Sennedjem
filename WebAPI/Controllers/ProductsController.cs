using Business.Handlers.Products.Commands.CreateProduct;
using Business.Handlers.Products.Commands.DeleteProduct;
using Business.Handlers.Products.Commands.UpdateProduct;
using Business.Handlers.Products.Queries.GetProduct;
using Business.Handlers.Products.Queries.GetProductByCategoryId;
using Business.Handlers.Products.Queries.GetProducts;
using MediatR;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System.Threading.Tasks;

namespace WebAPI.Controllers
{
    /// <summary>
    /// Products Controller
    /// </summary>
    /// 
    [Authorize]
    [Route("api/[controller]")]
    [ApiController]
    public class ProductsController : ControllerBase
    {
        private readonly IMediator _mediator;
        ///<summary>
        ///CRUD Controller for Products
        ///</summary>
        ///private readonly IProductService _productService;
        /// <summary>
        /// Service ile Business Katmanı injection yapar.
        /// </summary>
        /// <param name="mediator"></param>     

        public ProductsController(IMediator mediator)
        {
            _mediator = mediator;
        }

        ///<summary>
        ///Tüm ürünleri listeler
        ///</summary>
        ///<remarks>bla bla bla products</remarks>
        ///<return>Ürün Listesi</return>
        ///<response code="200"></response>  
        [HttpGet("getall")]
        public async Task<IActionResult> GetList()
        {
            var result = await _mediator.Send(new GetProductsQuery());
            //return Ok(result);
            //var result = _productService.GetList();
            if (result.Success)
            {
                return Ok(result.Data);
            }

            return BadRequest(result.Message);
        }

        ///<summary>
        ///Kategori Id sine göre tüm ürünleri listeler
        ///</summary>
        ///<remarks>bla bla bla products</remarks>
        ///<return>Ürün Listesi</return>
        ///<response code="200"></response>  
        [HttpGet("getlistbycategory")]
        public async Task<IActionResult> GetListByCategory(int categoryId)
        {
            var result = await _mediator.Send(new GetProductByCategoryIdQuery { CategoryId = categoryId });
            //return Ok(result);
            //var result = _productService.GetList();
            if (result.Success)
            {
                return Ok(result.Data);
            }
            return BadRequest(result.Message);
        }

        ///<summary>
        ///Id sine göre ürün detaylarını getirir.
        ///</summary>
        ///<remarks>bla bla bla products</remarks>
        ///<return>Ürün Listesi</return>
        ///<response code="200"></response>  
        [HttpGet("getbyid")]
        public async Task<IActionResult> GetById(int productId)
        {
            var result = await _mediator.Send(new GetProductQuery { ProductId = productId });
            //return Ok(result);
            //var result = _productService.GetList();
            if (result.Success)
            {
                return Ok(result.Data);
            }
            return BadRequest(result.Message);
        }

        /// <summary>
        /// Ürün Ekler.
        /// </summary>
        /// <param name="createProduct"></param>
        /// <returns></returns>
        [HttpPost]
        public async Task<IActionResult> Add([FromBody]CreateProductCommand createProduct)
        {
            var result = await _mediator.Send(createProduct);
            if (result.Success)
            {
                return Ok(result.Message);
            }
            return BadRequest(result.Message);
        }

        /// <summary>
        /// Ürün Günceller.
        /// </summary>
        /// <param name="updateProduct"></param>
        /// <returns></returns>
        [HttpPut]
        public async Task<IActionResult> Update([FromBody]UpdateProductCommand updateProduct)
        {
            var result = await _mediator.Send(updateProduct);
            if (result.Success)
            {
                return Ok(result.Message);
            }
            return BadRequest(result.Message);
        }

        /// <summary>
        /// Ürün Siler.
        /// </summary>
        /// <param name="deleteProduct"></param>
        /// <returns></returns>
        [HttpDelete]
        public async Task<IActionResult> Delete([FromBody]DeleteProductCommand deleteProduct)
        {
            var result = await _mediator.Send(deleteProduct);
            if (result.Success)
            {
                return Ok(result.Message);
            }
            return BadRequest(result.Message);
        }
    }
}