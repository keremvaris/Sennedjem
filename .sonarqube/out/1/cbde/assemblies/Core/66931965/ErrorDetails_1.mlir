func @_Core.Extensions.ErrorDetails.ToString$$() -> none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ErrorDetails.cs" :8 :4) {
^entry :
br ^0

^0: // JumpBlock
// Entity from another assembly: JsonConvert
%0 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ErrorDetails.cs" :10 :41) // this (ThisExpression)
%1 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ErrorDetails.cs" :10 :13) // JsonConvert.SerializeObject(this) (InvocationExpression)
return %1 : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ErrorDetails.cs" :10 :6)

^1: // ExitBlock
cbde.unreachable

}
