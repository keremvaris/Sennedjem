func @_Core.Aspects.Autofac.Performance.PerformanceAspect.OnBefore$Castle.DynamicProxy.IInvocation$(none) -> () loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Performance\\PerformanceAspect.cs" :22 :4) {
^entry (%_invocation : none):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Performance\\PerformanceAspect.cs" :22 :37)
cbde.store %_invocation, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Performance\\PerformanceAspect.cs" :22 :37)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Performance\\PerformanceAspect.cs" :24 :6) // Not a variable of known type: _stopwatch
%2 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Performance\\PerformanceAspect.cs" :24 :6) // _stopwatch.Start() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_Core.Aspects.Autofac.Performance.PerformanceAspect.OnAfter$Castle.DynamicProxy.IInvocation$(none) -> () loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Performance\\PerformanceAspect.cs" :26 :4) {
^entry (%_invocation : none):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Performance\\PerformanceAspect.cs" :26 :36)
cbde.store %_invocation, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Performance\\PerformanceAspect.cs" :26 :36)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Performance\\PerformanceAspect.cs" :28 :10) // Not a variable of known type: _stopwatch
%2 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Performance\\PerformanceAspect.cs" :28 :10) // _stopwatch.Elapsed (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Performance\\PerformanceAspect.cs" :28 :10) // _stopwatch.Elapsed.TotalSeconds (SimpleMemberAccessExpression)
%4 = cbde.unknown : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Performance\\PerformanceAspect.cs" :28 :44) // Not a variable of known type: _interval
%5 = cbde.unknown : i1  loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Performance\\PerformanceAspect.cs" :28 :10) // comparison of unknown type: _stopwatch.Elapsed.TotalSeconds > _interval
cond_br %5, ^1, ^2 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Performance\\PerformanceAspect.cs" :28 :10)

^1: // SimpleBlock
// Entity from another assembly: Debug
%6 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Performance\\PerformanceAspect.cs" :31 :40) // Not a variable of known type: invocation
%7 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Performance\\PerformanceAspect.cs" :31 :40) // invocation.Method (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Performance\\PerformanceAspect.cs" :31 :40) // invocation.Method.DeclaringType (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Performance\\PerformanceAspect.cs" :31 :40) // invocation.Method.DeclaringType.FullName (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Performance\\PerformanceAspect.cs" :31 :83) // Not a variable of known type: invocation
%11 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Performance\\PerformanceAspect.cs" :31 :83) // invocation.Method (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Performance\\PerformanceAspect.cs" :31 :83) // invocation.Method.Name (SimpleMemberAccessExpression)
%13 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Performance\\PerformanceAspect.cs" :31 :110) // Not a variable of known type: _stopwatch
%14 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Performance\\PerformanceAspect.cs" :31 :110) // _stopwatch.Elapsed (SimpleMemberAccessExpression)
%15 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Performance\\PerformanceAspect.cs" :31 :110) // _stopwatch.Elapsed.TotalSeconds (SimpleMemberAccessExpression)
%16 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Performance\\PerformanceAspect.cs" :31 :24) // $"Performance: {invocation.Method.DeclaringType.FullName}.{invocation.Method.Name}-->{_stopwatch.Elapsed.TotalSeconds}" (InterpolatedStringExpression)
%17 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Performance\\PerformanceAspect.cs" :31 :8) // Debug.WriteLine($"Performance: {invocation.Method.DeclaringType.FullName}.{invocation.Method.Name}-->{_stopwatch.Elapsed.TotalSeconds}") (InvocationExpression)
br ^2

^2: // SimpleBlock
%18 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Performance\\PerformanceAspect.cs" :33 :6) // Not a variable of known type: _stopwatch
%19 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Performance\\PerformanceAspect.cs" :33 :6) // _stopwatch.Reset() (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
