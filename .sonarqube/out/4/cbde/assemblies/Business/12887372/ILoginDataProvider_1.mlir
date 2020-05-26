func @_Business.Services.Authentication.ExternalUser.CleanRecord$$() -> () loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Services\\Authentication\\ILoginDataProvider.cs" :64 :2) {
^entry :
br ^0

^0: // BinaryBranchBlock
%0 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Services\\Authentication\\ILoginDataProvider.cs" :68 :8) // string (PredefinedType)
%1 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Services\\Authentication\\ILoginDataProvider.cs" :68 :34) // Not a variable of known type: MobilePhone
%2 = cbde.unknown : i1 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Services\\Authentication\\ILoginDataProvider.cs" :68 :8) // string.IsNullOrWhiteSpace(MobilePhone) (InvocationExpression)
%3 = cbde.unknown : i1 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Services\\Authentication\\ILoginDataProvider.cs" :68 :7) // !string.IsNullOrWhiteSpace(MobilePhone) (LogicalNotExpression)
cond_br %3, ^1, ^2 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Services\\Authentication\\ILoginDataProvider.cs" :68 :7)

^1: // BinaryBranchBlock
%4 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Services\\Authentication\\ILoginDataProvider.cs" :71 :9) // Not a variable of known type: MobilePhone
%5 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Services\\Authentication\\ILoginDataProvider.cs" :71 :32) // "0" (StringLiteralExpression)
%6 = cbde.unknown : i1 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Services\\Authentication\\ILoginDataProvider.cs" :71 :9) // MobilePhone.StartsWith("0") (InvocationExpression)
%7 = cbde.unknown : i1 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Services\\Authentication\\ILoginDataProvider.cs" :71 :8) // !MobilePhone.StartsWith("0") (LogicalNotExpression)
cond_br %7, ^3, ^4 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Services\\Authentication\\ILoginDataProvider.cs" :71 :8)

^3: // SimpleBlock
%8 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Services\\Authentication\\ILoginDataProvider.cs" :72 :19) // "0" (StringLiteralExpression)
%9 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Services\\Authentication\\ILoginDataProvider.cs" :72 :25) // Not a variable of known type: MobilePhone
%10 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Services\\Authentication\\ILoginDataProvider.cs" :72 :19) // Binary expression on unsupported types "0" + MobilePhone
br ^4

^4: // SimpleBlock
%11 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Services\\Authentication\\ILoginDataProvider.cs" :73 :18) // Not a variable of known type: MobilePhone
%12 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Services\\Authentication\\ILoginDataProvider.cs" :73 :36) // '-' (CharacterLiteralExpression)
%13 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Services\\Authentication\\ILoginDataProvider.cs" :73 :18) // MobilePhone.Split('-') (InvocationExpression)
%14 = constant 0 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Services\\Authentication\\ILoginDataProvider.cs" :73 :41)
%15 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Services\\Authentication\\ILoginDataProvider.cs" :73 :18) // MobilePhone.Split('-')[0] (ElementAccessExpression)
%16 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Services\\Authentication\\ILoginDataProvider.cs" :73 :18) // MobilePhone.Split('-')[0].Trim() (InvocationExpression)
br ^2

^2: // ExitBlock
return

}
