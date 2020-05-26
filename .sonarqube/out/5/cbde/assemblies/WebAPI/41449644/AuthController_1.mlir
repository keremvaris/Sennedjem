// Skipping function Login(none), it contains poisonous unsupported syntaxes

// Skipping function Verification(none), it contains poisonous unsupported syntaxes

// Skipping function Register(none), it contains poisonous unsupported syntaxes

// Skipping function ForgotPassword(none), it contains poisonous unsupported syntaxes

func @_WebAPI.Controllers.AuthController.LoginTest$$() -> none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\WebAPI\\Controllers\\AuthController.cs" :102 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\WebAPI\\Controllers\\AuthController.cs" :105 :23) // Identifier from another assembly: Request
%1 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\WebAPI\\Controllers\\AuthController.cs" :105 :23) // Request.Headers (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\WebAPI\\Controllers\\AuthController.cs" :105 :39) // "Authorization" (StringLiteralExpression)
%3 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\WebAPI\\Controllers\\AuthController.cs" :105 :23) // Request.Headers["Authorization"] (ElementAccessExpression)
%5 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\WebAPI\\Controllers\\AuthController.cs" :106 :38) // Not a variable of known type: _configuration
%6 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\WebAPI\\Controllers\\AuthController.cs" :106 :24) // new JwtHelper(_configuration) (ObjectCreationExpression)
%7 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\WebAPI\\Controllers\\AuthController.cs" :106 :66) // Not a variable of known type: auth
%8 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\WebAPI\\Controllers\\AuthController.cs" :106 :24) // new JwtHelper(_configuration).DecodeToken(auth) (InvocationExpression)
// Entity from another assembly: Ok
%10 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\WebAPI\\Controllers\\AuthController.cs" :107 :22) // Not a variable of known type: token
%11 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\WebAPI\\Controllers\\AuthController.cs" :107 :19) // Ok(token) (InvocationExpression)
return %11 : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\WebAPI\\Controllers\\AuthController.cs" :107 :12)

^1: // ExitBlock
cbde.unreachable

}
