func @_Business.BusinessAspects.Autofac.SecuredOperation.OnBefore$Castle.DynamicProxy.IInvocation$(none) -> () loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\SecuredOperation.cs" :28 :8) {
^entry (%_invocation : none):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\SecuredOperation.cs" :28 :41)
cbde.store %_invocation, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\SecuredOperation.cs" :28 :41)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\SecuredOperation.cs" :30 :29) // Not a variable of known type: _httpContextAccessor
%2 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\SecuredOperation.cs" :30 :29) // _httpContextAccessor.HttpContext (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\SecuredOperation.cs" :30 :29) // _httpContextAccessor.HttpContext.User (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\SecuredOperation.cs" :30 :29) // _httpContextAccessor.HttpContext.User.ClaimRoles() (InvocationExpression)
%6 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\SecuredOperation.cs" :31 :32) // Not a variable of known type: invocation
%7 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\SecuredOperation.cs" :31 :32) // invocation.TargetType (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\SecuredOperation.cs" :31 :32) // invocation.TargetType.ReflectedType (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\SecuredOperation.cs" :31 :32) // invocation.TargetType.ReflectedType.Name (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\SecuredOperation.cs" :32 :16) // Not a variable of known type: roleClaims
%12 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\SecuredOperation.cs" :32 :36) // Not a variable of known type: operationName
%13 = cbde.unknown : i1 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\SecuredOperation.cs" :32 :16) // roleClaims.Contains(operationName) (InvocationExpression)
cond_br %13, ^1, ^2 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\SecuredOperation.cs" :32 :16)

^1: // JumpBlock
return loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\SecuredOperation.cs" :33 :16)

^2: // JumpBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Messages
%14 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\SecuredOperation.cs" :35 :40) // Messages.AuthorizationsDenied (SimpleMemberAccessExpression)
%15 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\SecuredOperation.cs" :35 :18) // new SecurityException(Messages.AuthorizationsDenied) (ObjectCreationExpression)
cbde.throw %15 :  none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\SecuredOperation.cs" :35 :12)

^3: // ExitBlock
return

}
