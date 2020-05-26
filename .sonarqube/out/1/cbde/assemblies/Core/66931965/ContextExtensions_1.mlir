func @_Core.Extensions.ContextExtensions.Set$T$$Microsoft.EntityFrameworkCore.DbContext.System.Type$(none, none) -> none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ContextExtensions.cs" :18 :8) {
^entry (%__context : none, %_t : none):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ContextExtensions.cs" :18 :38)
cbde.store %__context, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ContextExtensions.cs" :18 :38)
%1 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ContextExtensions.cs" :18 :63)
cbde.store %_t, %1 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ContextExtensions.cs" :18 :63)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ContextExtensions.cs" :20 :29) // Not a variable of known type: _context
%3 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ContextExtensions.cs" :20 :29) // _context.GetType() (InvocationExpression)
%4 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ContextExtensions.cs" :20 :58) // "Set" (StringLiteralExpression)
%5 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ContextExtensions.cs" :20 :29) // _context.GetType().GetMethod("Set") (InvocationExpression)
%6 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ContextExtensions.cs" :20 :83) // Not a variable of known type: t
%7 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ContextExtensions.cs" :20 :29) // _context.GetType().GetMethod("Set").MakeGenericMethod(t) (InvocationExpression)
%8 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ContextExtensions.cs" :20 :93) // Not a variable of known type: _context
%9 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ContextExtensions.cs" :20 :103) // null (NullLiteralExpression)
%10 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ContextExtensions.cs" :20 :29) // _context.GetType().GetMethod("Set").MakeGenericMethod(t).Invoke(_context, null) (InvocationExpression)
%11 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ContextExtensions.cs" :20 :19) // (DbSet<T>)_context.GetType().GetMethod("Set").MakeGenericMethod(t).Invoke(_context, null) (CastExpression)
return %11 : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ContextExtensions.cs" :20 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_Core.Extensions.ContextExtensions.QueryableOf$T$$Microsoft.EntityFrameworkCore.DbContext.string$(none, none) -> none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ContextExtensions.cs" :32 :8) {
^entry (%__context : none, %_typeName : none):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ContextExtensions.cs" :32 :51)
cbde.store %__context, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ContextExtensions.cs" :32 :51)
%1 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ContextExtensions.cs" :32 :76)
cbde.store %_typeName, %1 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ContextExtensions.cs" :32 :76)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ContextExtensions.cs" :34 :23) // Not a variable of known type: _context
%3 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ContextExtensions.cs" :34 :23) // _context.Model (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ContextExtensions.cs" :34 :53) // Not a variable of known type: typeName
%5 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ContextExtensions.cs" :34 :23) // _context.Model.GetEntityTypes(typeName) (InvocationExpression)
%6 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ContextExtensions.cs" :34 :23) // _context.Model.GetEntityTypes(typeName).First() (InvocationExpression)
%8 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ContextExtensions.cs" :36 :32) // Not a variable of known type: _context
%9 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ContextExtensions.cs" :36 :32) // _context                  .GetType() (InvocationExpression)
%10 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ContextExtensions.cs" :38 :27) // "Set" (StringLiteralExpression)
%11 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ContextExtensions.cs" :36 :32) // _context                  .GetType()                  .GetMethod("Set") (InvocationExpression)
%12 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ContextExtensions.cs" :39 :35) // Not a variable of known type: type
%13 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ContextExtensions.cs" :39 :35) // type.ClrType (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ContextExtensions.cs" :36 :32) // _context                  .GetType()                  .GetMethod("Set")                  .MakeGenericMethod(type.ClrType) (InvocationExpression)
%15 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ContextExtensions.cs" :40 :24) // Not a variable of known type: _context
%16 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ContextExtensions.cs" :40 :34) // null (NullLiteralExpression)
%17 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ContextExtensions.cs" :36 :32) // _context                  .GetType()                  .GetMethod("Set")                  .MakeGenericMethod(type.ClrType)                  .Invoke(_context, null) (InvocationExpression)
%18 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ContextExtensions.cs" :36 :20) // (IQueryable)_context                  .GetType()                  .GetMethod("Set")                  .MakeGenericMethod(type.ClrType)                  .Invoke(_context, null) (CastExpression)
%20 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ContextExtensions.cs" :41 :19) // Not a variable of known type: q
%21 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ContextExtensions.cs" :41 :19) // q.OfType<T>() (InvocationExpression)
return %21 : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\ContextExtensions.cs" :41 :12)

^1: // ExitBlock
cbde.unreachable

}
