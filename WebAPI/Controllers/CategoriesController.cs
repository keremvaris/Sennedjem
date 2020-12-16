
using Business.Handlers.Categories.Commands;
using Business.Handlers.Categories.Queries;
using Microsoft.AspNetCore.Mvc;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;

namespace WebAPI.Controllers
{
    /// <summary>
    /// Categories Controller Authorize olmayacaksa [AllowAnonymous] Kullanılır.
    /// </summary>
    [Route("api/[controller]")]
    [ApiController]
    public class CategoriesController : BaseApiController
    {
        ///<summary>
        ///Categorie listeler
        ///</summary>
        ///<remarks>bla bla bla Categories</remarks>
        ///<return>Categories Listesi</return>
        ///<response code="200"></response>  
        [HttpGet("getall")]
        public async Task<IActionResult> GetList()
        {
            var result = await Mediator.Send(new GetCategoriesQuery());
            if (result.Success)
            {
                return Ok(result.Data);
            }
            return BadRequest(result.Message);
        }

        ///<summary>
        ///Category lookup listeler
        ///</summary>
        ///<remarks>bla bla bla Categories</remarks>
        ///<return>Categories Listesi</return>
        ///<response code="200"></response>  
        [HttpGet("getcategorylookupquery")]
        public async Task<IActionResult> GetCategoryLookUpQuery()
        {
            var result = await Mediator.Send(new GetCategoryLookUpQuery());
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
        ///<return>Categorie Listesi</return>
        ///<response code="200"></response>  
        [HttpGet("getbyid")]
        public async Task<IActionResult> GetById(int categoryId)
        {
            var result = await Mediator.Send(new GetCategoryQuery { CategoryId = categoryId });
            if (result.Success)
            {
                return Ok(result.Data);
            }
            return BadRequest(result.Message);
        }

        /// <summary>
        /// Category Ekler.
        /// </summary>
        /// <param name="createCategory"></param>
        /// <returns></returns>
        [HttpPost]
        public async Task<IActionResult> Add([FromBody] CreateCategoryCommand createCategory)
        {
            var result = await Mediator.Send(createCategory);
            if (result.Success)
            {
                return Ok(result.Message);
            }
            return BadRequest(result.Message);
        }

        /// <summary>
        /// Category Günceller.
        /// </summary>
        /// <param name="updateCategory"></param>
        /// <returns></returns>
        [HttpPut]
        public async Task<IActionResult> Update([FromBody] UpdateCategoryCommand updateCategory)
        {
            var result = await Mediator.Send(updateCategory);
            if (result.Success)
            {
                return Ok(result.Message);
            }
            return BadRequest(result.Message);
        }

        /// <summary>
        /// Category Siler.
        /// </summary>
        /// <param name="deleteCategory"></param>
        /// <returns></returns>
        [HttpDelete]
        public async Task<IActionResult> Delete([FromBody] DeleteCategoryCommand deleteCategory)
        {
            var result = await Mediator.Send(deleteCategory);
            if (result.Success)
            {
                return Ok(result.Message);
            }
            return BadRequest(result.Message);
        }
    }
}
