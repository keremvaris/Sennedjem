using Business.Constants;
using Castle.DynamicProxy;
using Core.Extensions;
using Core.Utilities.Interceptors;
using Core.Utilities.IoC;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.DependencyInjection;
using System;

namespace Business.BusinessAspects.Autofac
{
  /// <summary>
  /// Bu Aspect IHttpContextAccessor inject edilerek HttpContext'te bulunan kullanıcının rollerini kontrol eder 
  /// Handler üzerinde [SecuredOperation("Product.List,Admin")] şeklinde yazılarak kontrol edilir.
  /// Eğer aspecte geçerli bir yetki bulunamazsa exception fırlatır.
  /// 
  /// </summary>

  public class SecuredOperation : MethodInterception
  {
    private readonly IHttpContextAccessor _httpContextAccessor;

    public SecuredOperation()
    {
      _httpContextAccessor = ServiceTool.ServiceProvider.GetService<IHttpContextAccessor>();
    }

    protected override void OnBefore(IInvocation invocation)
    {
      var roleClaims = _httpContextAccessor.HttpContext.User.ClaimRoles();
      var operationName = invocation.TargetType.ReflectedType.Name;
      if (roleClaims.Contains(operationName))
        return;

      throw new Exception(Messages.AuthorizationsDenied);
      #region DeadSampleCode
      //var operationName = Assembly.GetExecutingAssembly().GetTypes()
      //    .Where(x => x.Namespace.StartsWith("Business.Handlers") && (x.Name.EndsWith("Command") || x.Name.EndsWith("Query"))
      //  && x.CustomAttributes.Any(a => a.AttributeType == typeof(SecuredOperation)))
      //.Select(x => x.Name).ToString();
      #endregion
    }
  }
}
