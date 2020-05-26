func @_Core.Aspects.Autofac.Logging.LogAspect.OnBefore$Castle.DynamicProxy.IInvocation$(none) -> () loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Logging\\LogAspect.cs" :26 :8) {
^entry (%_invocation : none):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Logging\\LogAspect.cs" :26 :41)
cbde.store %_invocation, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Logging\\LogAspect.cs" :26 :41)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Logging\\LogAspect.cs" :28 :12) // Not a variable of known type: _loggerServiceBase
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GetLogDetail
%2 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Logging\\LogAspect.cs" :28 :49) // Not a variable of known type: invocation
%3 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Logging\\LogAspect.cs" :28 :36) // GetLogDetail(invocation) (InvocationExpression)
%4 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Logging\\LogAspect.cs" :28 :12) // _loggerServiceBase.Info(GetLogDetail(invocation)) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_Core.Aspects.Autofac.Logging.LogAspect.GetLogDetail$Castle.DynamicProxy.IInvocation$(none) -> none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Logging\\LogAspect.cs" :31 :8) {
^entry (%_invocation : none):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Logging\\LogAspect.cs" :31 :39)
cbde.store %_invocation, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Logging\\LogAspect.cs" :31 :39)
br ^0

^0: // ForInitializerBlock
%1 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Logging\\LogAspect.cs" :33 :32) // new List<LogParameter>() (ObjectCreationExpression)
%3 = constant 0 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Logging\\LogAspect.cs" :34 :25)
%4 = cbde.alloca i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Logging\\LogAspect.cs" :34 :21) // i
cbde.store %3, %4 : memref<i32> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Logging\\LogAspect.cs" :34 :21)
br ^1

^1: // BinaryBranchBlock
%5 = cbde.load %4 : memref<i32> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Logging\\LogAspect.cs" :34 :28)
%6 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Logging\\LogAspect.cs" :34 :32) // Not a variable of known type: invocation
%7 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Logging\\LogAspect.cs" :34 :32) // invocation.Arguments (SimpleMemberAccessExpression)
%8 = cbde.unknown : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Logging\\LogAspect.cs" :34 :32) // invocation.Arguments.Length (SimpleMemberAccessExpression)
%9 = cmpi "slt", %5, %8 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Logging\\LogAspect.cs" :34 :28)
cond_br %9, ^2, ^3 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Logging\\LogAspect.cs" :34 :28)

^2: // SimpleBlock
%10 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Logging\\LogAspect.cs" :36 :16) // Not a variable of known type: logParameters
%11 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Logging\\LogAspect.cs" :36 :34) // new LogParameter                  {                      Name = invocation.GetConcreteMethod().GetParameters()[i].Name,                      Value = invocation.Arguments[i],                      Type = invocation.Arguments[i].GetType().Name                    } (ObjectCreationExpression)
%12 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Logging\\LogAspect.cs" :38 :27) // Not a variable of known type: invocation
%13 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Logging\\LogAspect.cs" :38 :27) // invocation.GetConcreteMethod() (InvocationExpression)
%14 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Logging\\LogAspect.cs" :38 :27) // invocation.GetConcreteMethod().GetParameters() (InvocationExpression)
%15 = cbde.load %4 : memref<i32> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Logging\\LogAspect.cs" :38 :74)
%16 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Logging\\LogAspect.cs" :38 :27) // invocation.GetConcreteMethod().GetParameters()[i] (ElementAccessExpression)
%17 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Logging\\LogAspect.cs" :38 :27) // invocation.GetConcreteMethod().GetParameters()[i].Name (SimpleMemberAccessExpression)
%18 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Logging\\LogAspect.cs" :39 :28) // Not a variable of known type: invocation
%19 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Logging\\LogAspect.cs" :39 :28) // invocation.Arguments (SimpleMemberAccessExpression)
%20 = cbde.load %4 : memref<i32> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Logging\\LogAspect.cs" :39 :49)
%21 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Logging\\LogAspect.cs" :39 :28) // invocation.Arguments[i] (ElementAccessExpression)
%22 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Logging\\LogAspect.cs" :40 :27) // Not a variable of known type: invocation
%23 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Logging\\LogAspect.cs" :40 :27) // invocation.Arguments (SimpleMemberAccessExpression)
%24 = cbde.load %4 : memref<i32> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Logging\\LogAspect.cs" :40 :48)
%25 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Logging\\LogAspect.cs" :40 :27) // invocation.Arguments[i] (ElementAccessExpression)
%26 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Logging\\LogAspect.cs" :40 :27) // invocation.Arguments[i].GetType() (InvocationExpression)
%27 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Logging\\LogAspect.cs" :40 :27) // invocation.Arguments[i].GetType().Name (SimpleMemberAccessExpression)
%28 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Logging\\LogAspect.cs" :36 :16) // logParameters.Add(new LogParameter                  {                      Name = invocation.GetConcreteMethod().GetParameters()[i].Name,                      Value = invocation.Arguments[i],                      Type = invocation.Arguments[i].GetType().Name                    }) (InvocationExpression)
br ^4

^4: // SimpleBlock
%29 = cbde.load %4 : memref<i32> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Logging\\LogAspect.cs" :34 :61)
%30 = constant 1 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Logging\\LogAspect.cs" :34 :61)
%31 = addi %29, %30 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Logging\\LogAspect.cs" :34 :61)
cbde.store %31, %4 : memref<i32> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Logging\\LogAspect.cs" :34 :61)
br ^1

^3: // JumpBlock
%32 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Logging\\LogAspect.cs" :44 :28) // new LogDetail              {                  MethodName = invocation.Method.Name,                  Parameters = logParameters,                } (ObjectCreationExpression)
%33 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Logging\\LogAspect.cs" :46 :29) // Not a variable of known type: invocation
%34 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Logging\\LogAspect.cs" :46 :29) // invocation.Method (SimpleMemberAccessExpression)
%35 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Logging\\LogAspect.cs" :46 :29) // invocation.Method.Name (SimpleMemberAccessExpression)
%36 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Logging\\LogAspect.cs" :47 :29) // Not a variable of known type: logParameters
%38 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Logging\\LogAspect.cs" :50 :19) // Not a variable of known type: logDetail
return %38 : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Aspects\\Autofac\\Logging\\LogAspect.cs" :50 :12)

^5: // ExitBlock
cbde.unreachable

}
