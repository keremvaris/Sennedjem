func @_Core.Aspects.Autofac.Caching.CacheRemoveAspect.OnSuccess$Castle.DynamicProxy.IInvocation$(none) -> () loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Caching\\CacheRemoveAspect.cs" :20 :4) {
^entry (%_invocation : none):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Caching\\CacheRemoveAspect.cs" :20 :38)
cbde.store %_invocation, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Caching\\CacheRemoveAspect.cs" :20 :38)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Caching\\CacheRemoveAspect.cs" :22 :6) // Not a variable of known type: _cacheManager
%2 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Caching\\CacheRemoveAspect.cs" :22 :36) // Not a variable of known type: _pattern
%3 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Caching\\CacheRemoveAspect.cs" :22 :6) // _cacheManager.RemoveByPattern(_pattern) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
