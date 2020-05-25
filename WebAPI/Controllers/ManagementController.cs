using Business.BusinessAspects;
using MediatR;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace WebAPI.Controllers
{
	/// <summary>
	/// Uygulamanın performans metriklerini sunar.
	/// </summary>
	[Authorize]
	[Route("api/[controller]")]
	[ApiController]
	public class ManagementController : ControllerBase
	{
		private readonly IActivityMonitor monitor;
		private readonly IMediator mediator;

		/// <summary>
		/// 
		/// </summary>
		/// <param name="monitor"></param>
		/// <param name="mediator"></param>
		public ManagementController(IActivityMonitor monitor, IMediator mediator)
		{
			this.monitor = monitor;
			this.mediator = mediator;
		}

		/// <summary>
		/// Metot çağırma ve kullanıcı istatistiklerini verir.
		/// </summary>
		/// <returns></returns>
		[ProducesResponseType(typeof(ActivityMonitor.ActivitySummary), 200)]
		[HttpGet("performance")]
		public ActionResult Performance()
		{
			return Ok(monitor.Summarize());
		}



	}
}
