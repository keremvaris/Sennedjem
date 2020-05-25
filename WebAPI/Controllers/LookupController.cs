using Business.Handlers.Lookups;
using Entities.Dtos;
using MediatR;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebAPI.Controllers
{
	/// <summary>
	/// Sistem genelindeki basit lookupların her biri içi bir controller yazmak
	/// yerine lookup isminden liste almak için kullanılır.
	/// </summary>
	[Authorize]
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
		/// Verilen lookupName'e ait elemanları listeler.
		///</summary>
		///<return>Lookup elemanları.</return>
		///<response code="200"></response>  
		[ProducesResponseType(typeof(IEnumerable<SelectionItem>), 200)]
		[HttpGet]
		public async Task<IActionResult> Get(LookupType lookupType, int? parentId)
		{
			var result = await _mediator.Send(new Query { LookupType = lookupType, ParentId = parentId });
			if (result.Success)
				return Ok(result.Data);
			return Unauthorized(result.Message);
		}

	}
}
