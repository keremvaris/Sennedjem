func @_Core.Utilities.Security.Jwt.JwtHelper.DecodeToken$string$(none) -> none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :25 :8) {
^entry (%_input : none):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :25 :34)
cbde.store %_input, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :25 :34)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :27 :26) // new JwtSecurityTokenHandler() (ObjectCreationExpression)
%3 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :28 :16) // Not a variable of known type: input
%4 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :28 :33) // "Bearer " (StringLiteralExpression)
%5 = cbde.unknown : i1 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :28 :16) // input.StartsWith("Bearer ") (InvocationExpression)
cond_br %5, ^1, ^2 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :28 :16)

^1: // SimpleBlock
%6 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :29 :24) // Not a variable of known type: input
%7 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :29 :40) // "Bearer " (StringLiteralExpression)
%8 = cbde.unknown : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :29 :40) // "Bearer ".Length (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :29 :24) // input.Substring("Bearer ".Length) (InvocationExpression)
br ^2

^2: // JumpBlock
%10 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :30 :19) // Not a variable of known type: handler
%11 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :30 :40) // Not a variable of known type: input
%12 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :30 :19) // handler.ReadJwtToken(input) (InvocationExpression)
%13 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :30 :19) // handler.ReadJwtToken(input).ToString() (InvocationExpression)
return %13 : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :30 :12)

^3: // ExitBlock
cbde.unreachable

}
func @_Core.Utilities.Security.Jwt.JwtHelper.CreateToken$TAccessToken$$Core.Entities.Concrete.User.System.Collections.Generic.IEnumerable$Core.Entities.Concrete.OperationClaim$$(none, none) -> none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :33 :8) {
^entry (%_user : none, %_operationClaims : none):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :33 :54)
cbde.store %_user, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :33 :54)
%1 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :33 :65)
cbde.store %_operationClaims, %1 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :33 :65)
br ^0

^0: // JumpBlock
// Entity from another assembly: DateTime
%2 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :36 :37) // DateTime.Now (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :36 :61) // Not a variable of known type: _tokenOptions
%4 = cbde.unknown : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :36 :61) // _tokenOptions.AccessTokenExpiration (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :36 :37) // DateTime.Now.AddMinutes(_tokenOptions.AccessTokenExpiration) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: SecurityKeyHelper
%6 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :37 :66) // Not a variable of known type: _tokenOptions
%7 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :37 :66) // _tokenOptions.SecurityKey (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :37 :30) // SecurityKeyHelper.CreateSecurityKey(_tokenOptions.SecurityKey) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: SigningCredentialsHelper
%10 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :38 :87) // Not a variable of known type: securityKey
%11 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :38 :37) // SigningCredentialsHelper.CreateSigningCredentials(securityKey) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: CreateJwtSecurityToken
%13 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :39 :45) // Not a variable of known type: _tokenOptions
%14 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :39 :60) // Not a variable of known type: user
%15 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :39 :66) // Not a variable of known type: signingCredentials
%16 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :39 :86) // Not a variable of known type: operationClaims
%17 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :39 :22) // CreateJwtSecurityToken(_tokenOptions, user, signingCredentials, operationClaims) (InvocationExpression)
%19 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :40 :42) // new JwtSecurityTokenHandler() (ObjectCreationExpression)
%21 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :41 :24) // Not a variable of known type: jwtSecurityTokenHandler
%22 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :41 :59) // Not a variable of known type: jwt
%23 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :41 :24) // jwtSecurityTokenHandler.WriteToken(jwt) (InvocationExpression)
%25 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :43 :19) // new TAccessToken()              {                  Token = token,                  Expiration = _accessTokenExpiration              } (ObjectCreationExpression)
%26 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :45 :24) // Not a variable of known type: token
%27 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :46 :29) // Not a variable of known type: _accessTokenExpiration
return %25 : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :43 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_Core.Utilities.Security.Jwt.JwtHelper.CreateJwtSecurityToken$Core.Utilities.Security.Jwt.TokenOptions.Core.Entities.Concrete.User.Microsoft.IdentityModel.Tokens.SigningCredentials.System.Collections.Generic.IEnumerable$Core.Entities.Concrete.OperationClaim$$(none, none, none, none) -> none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :50 :8) {
^entry (%_tokenOptions : none, %_user : none, %_signingCredentials : none, %_operationClaims : none):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :50 :55)
cbde.store %_tokenOptions, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :50 :55)
%1 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :50 :82)
cbde.store %_user, %1 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :50 :82)
%2 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :51 :16)
cbde.store %_signingCredentials, %2 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :51 :16)
%3 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :51 :55)
cbde.store %_operationClaims, %3 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :51 :55)
br ^0

^0: // JumpBlock
%4 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :54 :28) // Not a variable of known type: tokenOptions
%5 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :54 :28) // tokenOptions.Issuer (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :55 :30) // Not a variable of known type: tokenOptions
%7 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :55 :30) // tokenOptions.Audience (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :56 :29) // Not a variable of known type: _accessTokenExpiration
// Entity from another assembly: DateTime
%9 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :57 :31) // DateTime.Now (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: SetClaims
%10 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :58 :38) // Not a variable of known type: user
%11 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :58 :44) // Not a variable of known type: operationClaims
%12 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :58 :28) // SetClaims(user, operationClaims) (InvocationExpression)
%13 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :59 :40) // Not a variable of known type: signingCredentials
%14 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :53 :22) // new JwtSecurityToken(                      issuer: tokenOptions.Issuer,                      audience: tokenOptions.Audience,                      expires: _accessTokenExpiration,                      notBefore: DateTime.Now,                      claims: SetClaims(user, operationClaims),                      signingCredentials: signingCredentials              ) (ObjectCreationExpression)
%16 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :61 :19) // Not a variable of known type: jwt
return %16 : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Security\\Jwt\\JwtHelper.cs" :61 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function SetClaims(none, none), it contains poisonous unsupported syntaxes

