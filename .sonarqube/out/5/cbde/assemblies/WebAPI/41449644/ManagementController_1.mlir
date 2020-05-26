func @_WebAPI.Controllers.ManagementController.Performance$$() -> none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\WebAPI\\Controllers\\ManagementController.cs" :30 :8) {
^entry :
br ^0

^0: // JumpBlock
// Entity from another assembly: Ok
%0 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\WebAPI\\Controllers\\ManagementController.cs" :34 :22) // Not a variable of known type: monitor
%1 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\WebAPI\\Controllers\\ManagementController.cs" :34 :22) // monitor.Summarize() (InvocationExpression)
%2 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\WebAPI\\Controllers\\ManagementController.cs" :34 :19) // Ok(monitor.Summarize()) (InvocationExpression)
return %2 : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\WebAPI\\Controllers\\ManagementController.cs" :34 :12)

^1: // ExitBlock
cbde.unreachable

}
