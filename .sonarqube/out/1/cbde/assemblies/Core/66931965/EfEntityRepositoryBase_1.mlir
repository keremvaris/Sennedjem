func @_Core.DataAccess.EntityFramework.EfEntityRepositoryBase$TEntity.TContext$.Add$TEntity$(none) -> none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :28 :8) {
^entry (%_entity : none):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :28 :27)
cbde.store %_entity, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :28 :27)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :30 :19) // Not a variable of known type: context
%2 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :30 :31) // Not a variable of known type: entity
%3 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :30 :19) // context.Add(entity) (InvocationExpression)
%4 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :30 :19) // context.Add(entity).Entity (SimpleMemberAccessExpression)
return %4 : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :30 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_Core.DataAccess.EntityFramework.EfEntityRepositoryBase$TEntity.TContext$.Update$TEntity$(none) -> none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :33 :8) {
^entry (%_entity : none):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :33 :30)
cbde.store %_entity, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :33 :30)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :35 :12) // Not a variable of known type: context
%2 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :35 :27) // Not a variable of known type: entity
%3 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :35 :12) // context.Update(entity) (InvocationExpression)
%4 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :36 :19) // Not a variable of known type: entity
return %4 : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :36 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_Core.DataAccess.EntityFramework.EfEntityRepositoryBase$TEntity.TContext$.Delete$TEntity$(none) -> () loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :39 :8) {
^entry (%_entity : none):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :39 :27)
cbde.store %_entity, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :39 :27)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :41 :12) // Not a variable of known type: context
%2 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :41 :27) // Not a variable of known type: entity
%3 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :41 :12) // context.Remove(entity) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_Core.DataAccess.EntityFramework.EfEntityRepositoryBase$TEntity.TContext$.Get$System.Linq.Expressions.Expression$System.Func$TEntity.bool$$$(none) -> none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :44 :8) {
^entry (%_expression : none):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :44 :27)
cbde.store %_expression, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :44 :27)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :46 :19) // Not a variable of known type: context
%2 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :46 :19) // context.Set<TEntity>() (InvocationExpression)
%3 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :46 :57) // Not a variable of known type: expression
%4 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :46 :19) // context.Set<TEntity>().FirstOrDefault(expression) (InvocationExpression)
return %4 : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :46 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function GetAsync(none), it contains poisonous unsupported syntaxes

// Skipping function GetList(none), it contains poisonous unsupported syntaxes

// Skipping function GetListAsync(none), it contains poisonous unsupported syntaxes

func @_Core.DataAccess.EntityFramework.EfEntityRepositoryBase$TEntity.TContext$.SaveChanges$$() -> i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :65 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :67 :19) // Not a variable of known type: context
%1 = cbde.unknown : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :67 :19) // context.SaveChanges() (InvocationExpression)
return %1 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :67 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_Core.DataAccess.EntityFramework.EfEntityRepositoryBase$TEntity.TContext$.SaveChangesAsync$$() -> none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :70 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :72 :19) // Not a variable of known type: context
%1 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :72 :19) // context.SaveChangesAsync() (InvocationExpression)
return %1 : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :72 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_Core.DataAccess.EntityFramework.EfEntityRepositoryBase$TEntity.TContext$.Query$$() -> none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :75 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :77 :19) // Not a variable of known type: context
%1 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :77 :19) // context.Set<TEntity>() (InvocationExpression)
return %1 : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :77 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_Core.DataAccess.EntityFramework.EfEntityRepositoryBase$TEntity.TContext$.Execute$System.FormattableString$(none) -> none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :80 :8) {
^entry (%_interpolatedQueryString : none):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :80 :33)
cbde.store %_interpolatedQueryString, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :80 :33)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :82 :19) // Not a variable of known type: context
%2 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :82 :19) // context.Database (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :82 :64) // Not a variable of known type: interpolatedQueryString
%4 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :82 :19) // context.Database.ExecuteSqlInterpolatedAsync(interpolatedQueryString) (InvocationExpression)
return %4 : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\DataAccess\\EntityFramework\\EfEntityRepositoryBase.cs" :82 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function InTransaction(none, none, none), it contains poisonous unsupported syntaxes

