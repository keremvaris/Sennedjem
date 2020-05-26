func @_Business.Services.Authentication.ExternalUser.CleanRecord$$() -> () loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Services\\Authentication\\ILoginDataProvider.cs" :61 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
%0 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Services\\Authentication\\ILoginDataProvider.cs" :65 :17) // string (PredefinedType)
%1 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Services\\Authentication\\ILoginDataProvider.cs" :65 :43) // Not a variable of known type: MobilePhone
%2 = cbde.unknown : i1 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Services\\Authentication\\ILoginDataProvider.cs" :65 :17) // string.IsNullOrWhiteSpace(MobilePhone) (InvocationExpression)
%3 = cbde.unknown : i1 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Services\\Authentication\\ILoginDataProvider.cs" :65 :16) // !string.IsNullOrWhiteSpace(MobilePhone) (LogicalNotExpression)
cond_br %3, ^1, ^2 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Services\\Authentication\\ILoginDataProvider.cs" :65 :16)

^1: // BinaryBranchBlock
%4 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Services\\Authentication\\ILoginDataProvider.cs" :68 :21) // Not a variable of known type: MobilePhone
%5 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Services\\Authentication\\ILoginDataProvider.cs" :68 :44) // "0" (StringLiteralExpression)
%6 = cbde.unknown : i1 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Services\\Authentication\\ILoginDataProvider.cs" :68 :21) // MobilePhone.StartsWith("0") (InvocationExpression)
%7 = cbde.unknown : i1 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Services\\Authentication\\ILoginDataProvider.cs" :68 :20) // !MobilePhone.StartsWith("0") (LogicalNotExpression)
cond_br %7, ^3, ^4 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Services\\Authentication\\ILoginDataProvider.cs" :68 :20)

^3: // SimpleBlock
%8 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Services\\Authentication\\ILoginDataProvider.cs" :69 :34) // "0" (StringLiteralExpression)
%9 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Services\\Authentication\\ILoginDataProvider.cs" :69 :40) // Not a variable of known type: MobilePhone
%10 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Services\\Authentication\\ILoginDataProvider.cs" :69 :34) // Binary expression on unsupported types "0" + MobilePhone
br ^4

^4: // SimpleBlock
%11 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Services\\Authentication\\ILoginDataProvider.cs" :70 :30) // Not a variable of known type: MobilePhone
%12 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Services\\Authentication\\ILoginDataProvider.cs" :70 :48) // '-' (CharacterLiteralExpression)
%13 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Services\\Authentication\\ILoginDataProvider.cs" :70 :30) // MobilePhone.Split('-') (InvocationExpression)
%14 = constant 0 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Services\\Authentication\\ILoginDataProvider.cs" :70 :53)
%15 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Services\\Authentication\\ILoginDataProvider.cs" :70 :30) // MobilePhone.Split('-')[0] (ElementAccessExpression)
%16 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Services\\Authentication\\ILoginDataProvider.cs" :70 :30) // MobilePhone.Split('-')[0].Trim() (InvocationExpression)
br ^2

^2: // ExitBlock
return

}
