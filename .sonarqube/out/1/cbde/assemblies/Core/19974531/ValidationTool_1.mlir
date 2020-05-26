func @_Core.CrossCuttingConcerns.Validation.ValidationTool.Validate$FluentValidation.IValidator.object$(none, none) -> () loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Validation\\ValidationTool.cs" :6 :8) {
^entry (%_validator : none, %_entity : none):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Validation\\ValidationTool.cs" :6 :36)
cbde.store %_validator, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Validation\\ValidationTool.cs" :6 :36)
%1 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Validation\\ValidationTool.cs" :6 :58)
cbde.store %_entity, %1 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Validation\\ValidationTool.cs" :6 :58)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Validation\\ValidationTool.cs" :8 :25) // Not a variable of known type: validator
%3 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Validation\\ValidationTool.cs" :8 :44) // Not a variable of known type: entity
%4 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Validation\\ValidationTool.cs" :8 :25) // validator.Validate(entity) (InvocationExpression)
%6 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Validation\\ValidationTool.cs" :9 :17) // Not a variable of known type: result
%7 = cbde.unknown : i1 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Validation\\ValidationTool.cs" :9 :17) // result.IsValid (SimpleMemberAccessExpression)
%8 = cbde.unknown : i1 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Validation\\ValidationTool.cs" :9 :16) // !result.IsValid (LogicalNotExpression)
cond_br %8, ^1, ^2 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Validation\\ValidationTool.cs" :9 :16)

^1: // JumpBlock
%9 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Validation\\ValidationTool.cs" :11 :46) // Not a variable of known type: result
%10 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Validation\\ValidationTool.cs" :11 :46) // result.Errors (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Validation\\ValidationTool.cs" :11 :22) // new ValidationException(result.Errors) (ObjectCreationExpression)
cbde.throw %11 :  none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Validation\\ValidationTool.cs" :11 :16)

^2: // ExitBlock
return

}
