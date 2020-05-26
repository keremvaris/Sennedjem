func @_Core.Utilities.Security.Jwt.JwtHelper.DecodeToken$string$(none) -> none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :26 :2) {
^entry (%_input : none):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :26 :28)
cbde.store %_input, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :26 :28)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :28 :17) // new JwtSecurityTokenHandler() (ObjectCreationExpression)
%3 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :29 :7) // Not a variable of known type: input
%4 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :29 :24) // "Bearer " (StringLiteralExpression)
%5 = cbde.unknown : i1 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :29 :7) // input.StartsWith("Bearer ") (InvocationExpression)
cond_br %5, ^1, ^2 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :29 :7)

^1: // SimpleBlock
%6 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :30 :12) // Not a variable of known type: input
%7 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :30 :28) // "Bearer " (StringLiteralExpression)
%8 = cbde.unknown : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :30 :28) // "Bearer ".Length (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :30 :12) // input.Substring("Bearer ".Length) (InvocationExpression)
br ^2

^2: // JumpBlock
%10 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :31 :10) // Not a variable of known type: handler
%11 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :31 :31) // Not a variable of known type: input
%12 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :31 :10) // handler.ReadJwtToken(input) (InvocationExpression)
%13 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :31 :10) // handler.ReadJwtToken(input).ToString() (InvocationExpression)
return %13 : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :31 :3)

^3: // ExitBlock
cbde.unreachable

}
func @_Core.Utilities.Security.Jwt.JwtHelper.CreateToken$TAccessToken$$Core.Entities.Concrete.User.System.Collections.Generic.IEnumerable$Core.Entities.Concrete.OperationClaim$$(none, none) -> none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :34 :2) {
^entry (%_user : none, %_operationClaims : none):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :34 :48)
cbde.store %_user, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :34 :48)
%1 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :34 :59)
cbde.store %_operationClaims, %1 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :34 :59)
br ^0

^0: // JumpBlock
// Entity from another assembly: DateTime
%2 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :37 :28) // DateTime.Now (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :37 :52) // Not a variable of known type: _tokenOptions
%4 = cbde.unknown : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :37 :52) // _tokenOptions.AccessTokenExpiration (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :37 :28) // DateTime.Now.AddMinutes(_tokenOptions.AccessTokenExpiration) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: SecurityKeyHelper
%6 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :38 :57) // Not a variable of known type: _tokenOptions
%7 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :38 :57) // _tokenOptions.SecurityKey (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :38 :21) // SecurityKeyHelper.CreateSecurityKey(_tokenOptions.SecurityKey) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: SigningCredentialsHelper
%10 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :39 :78) // Not a variable of known type: securityKey
%11 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :39 :28) // SigningCredentialsHelper.CreateSigningCredentials(securityKey) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: CreateJwtSecurityToken
%13 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :40 :36) // Not a variable of known type: _tokenOptions
%14 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :40 :51) // Not a variable of known type: user
%15 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :40 :57) // Not a variable of known type: signingCredentials
%16 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :40 :77) // Not a variable of known type: operationClaims
%17 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :40 :13) // CreateJwtSecurityToken(_tokenOptions, user, signingCredentials, operationClaims) (InvocationExpression)
%19 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :41 :33) // new JwtSecurityTokenHandler() (ObjectCreationExpression)
%21 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :42 :15) // Not a variable of known type: jwtSecurityTokenHandler
%22 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :42 :50) // Not a variable of known type: jwt
%23 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :42 :15) // jwtSecurityTokenHandler.WriteToken(jwt) (InvocationExpression)
%25 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :44 :10) // new TAccessToken()     {      Token = token,      Expiration = _accessTokenExpiration     } (ObjectCreationExpression)
%26 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :46 :12) // Not a variable of known type: token
%27 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :47 :17) // Not a variable of known type: _accessTokenExpiration
return %25 : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :44 :3)

^1: // ExitBlock
cbde.unreachable

}
func @_Core.Utilities.Security.Jwt.JwtHelper.CreateJwtSecurityToken$Core.Utilities.Security.Jwt.TokenOptions.Core.Entities.Concrete.User.Microsoft.IdentityModel.Tokens.SigningCredentials.System.Collections.Generic.IEnumerable$Core.Entities.Concrete.OperationClaim$$(none, none, none, none) -> none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :51 :2) {
^entry (%_tokenOptions : none, %_user : none, %_signingCredentials : none, %_operationClaims : none):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :51 :49)
cbde.store %_tokenOptions, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :51 :49)
%1 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :51 :76)
cbde.store %_user, %1 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :51 :76)
%2 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :52 :4)
cbde.store %_signingCredentials, %2 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :52 :4)
%3 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :52 :43)
cbde.store %_operationClaims, %3 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :52 :43)
br ^0

^0: // JumpBlock
%4 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :55 :13) // Not a variable of known type: tokenOptions
%5 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :55 :13) // tokenOptions.Issuer (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :56 :15) // Not a variable of known type: tokenOptions
%7 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :56 :15) // tokenOptions.Audience (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :57 :14) // Not a variable of known type: _accessTokenExpiration
// Entity from another assembly: DateTime
%9 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :58 :16) // DateTime.Now (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: SetClaims
%10 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :59 :23) // Not a variable of known type: user
%11 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :59 :29) // Not a variable of known type: operationClaims
%12 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :59 :13) // SetClaims(user, operationClaims) (InvocationExpression)
%13 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :60 :25) // Not a variable of known type: signingCredentials
%14 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :54 :13) // new JwtSecurityToken(       issuer: tokenOptions.Issuer,       audience: tokenOptions.Audience,       expires: _accessTokenExpiration,       notBefore: DateTime.Now,       claims: SetClaims(user, operationClaims),       signingCredentials: signingCredentials     ) (ObjectCreationExpression)
%16 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :62 :10) // Not a variable of known type: jwt
return %16 : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :62 :3)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function SetClaims(none, none), it contains poisonous unsupported syntaxes

