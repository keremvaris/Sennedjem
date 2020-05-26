func @_Core.Utilities.Security.Encyption.SecurityKeyHelper.CreateSecurityKey$string$(none) -> none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Encyption\\SecurityKeyHelper.cs" :7 :8) {
^entry (%_securityKey : none):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Encyption\\SecurityKeyHelper.cs" :7 :52)
cbde.store %_securityKey, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Encyption\\SecurityKeyHelper.cs" :7 :52)
br ^0

^0: // JumpBlock
// Entity from another assembly: Encoding
%1 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Encyption\\SecurityKeyHelper.cs" :9 :44) // Encoding.UTF8 (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Encyption\\SecurityKeyHelper.cs" :9 :67) // Not a variable of known type: securityKey
%3 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Encyption\\SecurityKeyHelper.cs" :9 :44) // Encoding.UTF8.GetBytes(securityKey) (InvocationExpression)
%4 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Encyption\\SecurityKeyHelper.cs" :9 :19) // new SymmetricSecurityKey(Encoding.UTF8.GetBytes(securityKey)) (ObjectCreationExpression)
return %4 : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Encyption\\SecurityKeyHelper.cs" :9 :12)

^1: // ExitBlock
cbde.unreachable

}
