func @_Core.Extensions.ExceptionMiddlewareExtensions.ConfigureCustomExceptionMiddleware$Microsoft.AspNetCore.Builder.IApplicationBuilder$(none) -> () loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ExceptionMiddlewareExtensions.cs" :6 :4) {
^entry (%_app : none):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ExceptionMiddlewareExtensions.cs" :6 :58)
cbde.store %_app, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ExceptionMiddlewareExtensions.cs" :6 :58)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ExceptionMiddlewareExtensions.cs" :8 :6) // Not a variable of known type: app
%2 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ExceptionMiddlewareExtensions.cs" :8 :6) // app.UseMiddleware<ExceptionMiddleware>() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
