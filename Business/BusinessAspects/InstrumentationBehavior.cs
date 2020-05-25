using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Threading.Tasks;
using System.IO;
using System.Threading;
using System.Security.Principal;
using System.Security.Claims;
using Core.CrossCuttingConcerns.Logging.NLog.Loggers;
using FluentValidation;
using System.Text.Json;
using System.Text;
using Microsoft.Extensions.Logging;

namespace Business.BusinessAspects
{
  /// <summary>
  /// Validation, performance ve error loglama işlerini yapan ve mediatr handler'larını saran
  /// native MediatR pipeline handlerıdır.
  /// 
  /// Exceptionlar buradan işlenip tekrar raise edildikten sonra Core.ExceptionMiddleware
  /// tarafından da işlenmeye devam eder.
  /// 
  /// SOLID'in S'sine pek uygmuyor fakat istenirse 3 pipeline'a ayrılabilir.
  /// </summary>
  /// <typeparam name="TRequest"></typeparam>
  /// <typeparam name="TResponse"></typeparam>
  public class InstrumentationBehavior<TRequest, TResponse> : IPipelineBehavior<TRequest, TResponse>
  {
    IActivityMonitor _monitor;
    private readonly ILogger logger;
    private readonly IPrincipal principal;
    private readonly IEnumerable<IValidator<TRequest>> validators;
    
    public InstrumentationBehavior(IActivityMonitor monitor, ILogger<TRequest> logger, IPrincipal principal,
      // Bu TRequest type'ı için tanımlanmış bütün validatörlleri resolve eder.
      IEnumerable<IValidator<TRequest>> validators)
    {
      _monitor = monitor;
      this.logger = logger;
      this.principal = principal;
      this.validators = validators;
    }

    protected void Tick(string actionName, int ticks = 1, long msecs = 0)
    {
      if (principal != null)
        _monitor.Tick(actionName, 1, msecs, "User." + (principal.Identity.Name ?? "?"));
      else
        _monitor.Tick(actionName, 1, msecs);
    }
    

    public async Task<TResponse> Handle(TRequest request, CancellationToken cancellationToken, 
      RequestHandlerDelegate<TResponse> next)
    {
      Type type = request.GetType();
      using (var pr = new Profiler())
      {
        var shortName = type.ReflectedType?.Name + "." + type.Name;
        // En dışta profiler
        pr.Begin("Handler " + type.FullName);

        try
        {
          // Sonra validation (catch içinde olmalı ki error log edilebilsin.
          var context = new ValidationContext(request);
          var failures = validators
            .Select(v => v.Validate(request))
            .SelectMany(result => result.Errors)
            .Where(f => f != null)
            .ToList();

          if(failures.Count>0)
          {
            // Fluen validation'a bırakmadan hataları kendimiz kolayalım.
            var arr = failures.Select(x => $"{Environment.NewLine} -- {x.PropertyName}: {x.ErrorMessage}");
            throw new ValidationException("Lütfen hataları düzeltiniz:" + string.Join(string.Empty, arr));
          }

          var response = await next();
            
          pr.End();
          Tick(shortName, 1, pr.LastMsecs);

          return response;
        }
        catch (Exception ex)
        {
          pr.End();
          Tick(shortName, 1, pr.LastMsecs);
          // Error logging
          // Once nesne:
          var sb = new StringBuilder();
          try
          {
            sb.AppendLine(request.GetType().Name);
            sb.AppendLine(JsonSerializer.Serialize(request));
          }
          catch
          {
          }
          sb.AppendLine(ex.ToString());
          logger.LogError(sb.ToString());
          throw;
        }
      }
    }
  }

}