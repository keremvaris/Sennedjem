func @_Business.Services.Authentication.LoginUserCommand.PostProcess$$() -> () loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Services\\Authentication\\Model\\LoginUserCommand.cs" :46 :8) {
^entry :
br ^0

^0: // SimpleBlock
// Entity from another assembly: System
%0 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Services\\Authentication\\Model\\LoginUserCommand.cs" :48 :26) // System.Text.RegularExpressions.Regex (SimpleMemberAccessExpression)
%1 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Services\\Authentication\\Model\\LoginUserCommand.cs" :48 :71) // Not a variable of known type: MobilePhone
%2 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Services\\Authentication\\Model\\LoginUserCommand.cs" :48 :84) // "[^0-9]" (StringLiteralExpression)
%3 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Services\\Authentication\\Model\\LoginUserCommand.cs" :48 :94) // "" (StringLiteralExpression)
%4 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Services\\Authentication\\Model\\LoginUserCommand.cs" :48 :26) // System.Text.RegularExpressions.Regex.Replace(MobilePhone, "[^0-9]", "") (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
