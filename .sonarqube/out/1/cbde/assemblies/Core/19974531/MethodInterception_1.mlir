func @_Core.Utilities.Interceptors.MethodInterception.OnBefore$Castle.DynamicProxy.IInvocation$(none) -> () loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Interceptors\\MethodInterception.cs" :7 :8) {
^entry (%_invocation : none):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Interceptors\\MethodInterception.cs" :7 :40)
cbde.store %_invocation, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Interceptors\\MethodInterception.cs" :7 :40)
br ^0

^0: // ExitBlock
return

}
func @_Core.Utilities.Interceptors.MethodInterception.OnAfter$Castle.DynamicProxy.IInvocation$(none) -> () loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Interceptors\\MethodInterception.cs" :8 :8) {
^entry (%_invocation : none):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Interceptors\\MethodInterception.cs" :8 :39)
cbde.store %_invocation, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Interceptors\\MethodInterception.cs" :8 :39)
br ^0

^0: // ExitBlock
return

}
func @_Core.Utilities.Interceptors.MethodInterception.OnException$Castle.DynamicProxy.IInvocation.System.Exception$(none, none) -> () loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Interceptors\\MethodInterception.cs" :9 :8) {
^entry (%_invocation : none, %_e : none):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Interceptors\\MethodInterception.cs" :9 :43)
cbde.store %_invocation, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Interceptors\\MethodInterception.cs" :9 :43)
%1 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Interceptors\\MethodInterception.cs" :9 :67)
cbde.store %_e, %1 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Interceptors\\MethodInterception.cs" :9 :67)
br ^0

^0: // ExitBlock
return

}
func @_Core.Utilities.Interceptors.MethodInterception.OnSuccess$Castle.DynamicProxy.IInvocation$(none) -> () loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Interceptors\\MethodInterception.cs" :10 :8) {
^entry (%_invocation : none):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Interceptors\\MethodInterception.cs" :10 :41)
cbde.store %_invocation, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Interceptors\\MethodInterception.cs" :10 :41)
br ^0

^0: // ExitBlock
return

}
// Skipping function Intercept(none), it contains poisonous unsupported syntaxes

