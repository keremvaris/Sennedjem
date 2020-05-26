func @_DataAccess.Concrete.EntityFramework.Contexts.MsDbContext.OnConfiguring$Microsoft.EntityFrameworkCore.DbContextOptionsBuilder$(none) -> () loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\DataAccess\\Concrete\\EntityFramework\\Contexts\\MsDbContext.cs" :11 :8) {
^entry (%_optionsBuilder : none):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\DataAccess\\Concrete\\EntityFramework\\Contexts\\MsDbContext.cs" :11 :46)
cbde.store %_optionsBuilder, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\DataAccess\\Concrete\\EntityFramework\\Contexts\\MsDbContext.cs" :11 :46)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\DataAccess\\Concrete\\EntityFramework\\Contexts\\MsDbContext.cs" :13 :17) // Not a variable of known type: optionsBuilder
%2 = cbde.unknown : i1 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\DataAccess\\Concrete\\EntityFramework\\Contexts\\MsDbContext.cs" :13 :17) // optionsBuilder.IsConfigured (SimpleMemberAccessExpression)
%3 = cbde.unknown : i1 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\DataAccess\\Concrete\\EntityFramework\\Contexts\\MsDbContext.cs" :13 :16) // !optionsBuilder.IsConfigured (LogicalNotExpression)
cond_br %3, ^1, ^2 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\DataAccess\\Concrete\\EntityFramework\\Contexts\\MsDbContext.cs" :13 :16)

^1: // SimpleBlock
%4 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\DataAccess\\Concrete\\EntityFramework\\Contexts\\MsDbContext.cs" :15 :16) // base (BaseExpression)
%5 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\DataAccess\\Concrete\\EntityFramework\\Contexts\\MsDbContext.cs" :15 :35) // Not a variable of known type: optionsBuilder
%6 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\DataAccess\\Concrete\\EntityFramework\\Contexts\\MsDbContext.cs" :15 :63) // Not a variable of known type: configuration
%7 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\DataAccess\\Concrete\\EntityFramework\\Contexts\\MsDbContext.cs" :15 :97) // "SFwMsContext" (StringLiteralExpression)
%8 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\DataAccess\\Concrete\\EntityFramework\\Contexts\\MsDbContext.cs" :15 :63) // configuration.GetConnectionString("SFwMsContext") (InvocationExpression)
%9 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\DataAccess\\Concrete\\EntityFramework\\Contexts\\MsDbContext.cs" :15 :35) // optionsBuilder.UseSqlServer(configuration.GetConnectionString("SFwMsContext")) (InvocationExpression)
%10 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\DataAccess\\Concrete\\EntityFramework\\Contexts\\MsDbContext.cs" :15 :16) // base.OnConfiguring(optionsBuilder.UseSqlServer(configuration.GetConnectionString("SFwMsContext"))) (InvocationExpression)
br ^2

^2: // ExitBlock
return

}
