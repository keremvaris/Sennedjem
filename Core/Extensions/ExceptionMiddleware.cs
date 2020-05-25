using Core.Utilities.Messages;
using FluentValidation;
using Microsoft.AspNetCore.Http;
using System;
using System.Net;
using System.Threading.Tasks;

namespace Core.Extensions
{

	public class ExceptionMiddleware
	{
		private readonly RequestDelegate _next;
		//private readonly LoggerServiceBase _logger;

		public ExceptionMiddleware(RequestDelegate next/*, LoggerServiceBase logger*/)
		{
			_next = next;
			//_logger = logger;
		}

		public async Task InvokeAsync(HttpContext httpContext)
		{
			try
			{
				await _next(httpContext);
			}
			catch (System.Exception e)
			{
				await HandleExceptionAsync(httpContext, e);
			}
		}


		private async Task HandleExceptionAsync(HttpContext httpContext, System.Exception e)
		{
			httpContext.Response.ContentType = "application/json";
			httpContext.Response.StatusCode = (int)HttpStatusCode.InternalServerError;
			// Şimdilik özet göster
			// var message = ExceptionMessage.InternalServerError;
			var message = e.Message;
			if (e.GetType() == typeof(ValidationException))
			{
				message = e.Message;
				httpContext.Response.StatusCode = (int)HttpStatusCode.BadRequest;
			}
			else if (e.GetType() == typeof(ApplicationException))
			{
				message = e.Message;
				httpContext.Response.StatusCode = (int)HttpStatusCode.BadRequest;
			}
			else if (e.GetType() == typeof(UnauthorizedAccessException))
			{
				message = e.Message;
				httpContext.Response.StatusCode = StatusCodes.Status401Unauthorized;
			}
			else
			{
				message = ExceptionMessage.InternalServerError;
			}
			/* Bu implementasyonda sadece hatayı dönelim.
			await httpContext.Response.WriteAsync(new ErrorDetails
			{
					StatusCode = httpContext.Response.StatusCode,
					Message = message
			}.ToString());
			*/
			await httpContext.Response.WriteAsync(message);
		}
	}
}
