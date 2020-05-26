func @_Core.Extensions.ClaimExtensions.AddEmail$System.Collections.Generic.ICollection$System.Security.Claims.Claim$.string$(none, none) -> () loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ClaimExtensions.cs" :9 :4) {
^entry (%_claims : none, %_email : none):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ClaimExtensions.cs" :9 :32)
cbde.store %_claims, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ClaimExtensions.cs" :9 :32)
%1 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ClaimExtensions.cs" :9 :64)
cbde.store %_email, %1 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ClaimExtensions.cs" :9 :64)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ClaimExtensions.cs" :11 :6) // Not a variable of known type: claims
// Entity from another assembly: JwtRegisteredClaimNames
%3 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ClaimExtensions.cs" :11 :27) // JwtRegisteredClaimNames.Email (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ClaimExtensions.cs" :11 :58) // Not a variable of known type: email
%5 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ClaimExtensions.cs" :11 :17) // new Claim(JwtRegisteredClaimNames.Email, email) (ObjectCreationExpression)
%6 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ClaimExtensions.cs" :11 :6) // claims.Add(new Claim(JwtRegisteredClaimNames.Email, email)) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_Core.Extensions.ClaimExtensions.AddName$System.Collections.Generic.ICollection$System.Security.Claims.Claim$.string$(none, none) -> () loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ClaimExtensions.cs" :14 :4) {
^entry (%_claims : none, %_name : none):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ClaimExtensions.cs" :14 :31)
cbde.store %_claims, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ClaimExtensions.cs" :14 :31)
%1 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ClaimExtensions.cs" :14 :63)
cbde.store %_name, %1 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ClaimExtensions.cs" :14 :63)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ClaimExtensions.cs" :16 :6) // Not a variable of known type: claims
// Entity from another assembly: ClaimTypes
%3 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ClaimExtensions.cs" :16 :27) // ClaimTypes.Name (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ClaimExtensions.cs" :16 :44) // Not a variable of known type: name
%5 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ClaimExtensions.cs" :16 :17) // new Claim(ClaimTypes.Name, name) (ObjectCreationExpression)
%6 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ClaimExtensions.cs" :16 :6) // claims.Add(new Claim(ClaimTypes.Name, name)) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_Core.Extensions.ClaimExtensions.AddNameIdentifier$System.Collections.Generic.ICollection$System.Security.Claims.Claim$.string$(none, none) -> () loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ClaimExtensions.cs" :19 :4) {
^entry (%_claims : none, %_nameIdentifier : none):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ClaimExtensions.cs" :19 :41)
cbde.store %_claims, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ClaimExtensions.cs" :19 :41)
%1 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ClaimExtensions.cs" :19 :73)
cbde.store %_nameIdentifier, %1 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ClaimExtensions.cs" :19 :73)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ClaimExtensions.cs" :21 :6) // Not a variable of known type: claims
// Entity from another assembly: ClaimTypes
%3 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ClaimExtensions.cs" :21 :27) // ClaimTypes.NameIdentifier (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ClaimExtensions.cs" :21 :54) // Not a variable of known type: nameIdentifier
%5 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ClaimExtensions.cs" :21 :17) // new Claim(ClaimTypes.NameIdentifier, nameIdentifier) (ObjectCreationExpression)
%6 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ClaimExtensions.cs" :21 :6) // claims.Add(new Claim(ClaimTypes.NameIdentifier, nameIdentifier)) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_Core.Extensions.ClaimExtensions.AddNameUniqueIdentifier$System.Collections.Generic.ICollection$System.Security.Claims.Claim$.string$(none, none) -> () loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ClaimExtensions.cs" :24 :4) {
^entry (%_claims : none, %_nameUniqueIdentifier : none):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ClaimExtensions.cs" :24 :47)
cbde.store %_claims, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ClaimExtensions.cs" :24 :47)
%1 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ClaimExtensions.cs" :24 :79)
cbde.store %_nameUniqueIdentifier, %1 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ClaimExtensions.cs" :24 :79)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ClaimExtensions.cs" :26 :6) // Not a variable of known type: claims
// Entity from another assembly: ClaimTypes
%3 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ClaimExtensions.cs" :26 :27) // ClaimTypes.SerialNumber (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ClaimExtensions.cs" :26 :52) // Not a variable of known type: nameUniqueIdentifier
%5 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ClaimExtensions.cs" :26 :17) // new Claim(ClaimTypes.SerialNumber, nameUniqueIdentifier) (ObjectCreationExpression)
%6 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ClaimExtensions.cs" :26 :6) // claims.Add(new Claim(ClaimTypes.SerialNumber, nameUniqueIdentifier)) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function AddRoles(none, none), it contains poisonous unsupported syntaxes

