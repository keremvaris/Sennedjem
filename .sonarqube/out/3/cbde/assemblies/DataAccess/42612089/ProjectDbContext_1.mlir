func @_DataAccess.Concrete.EntityFramework.Contexts.ProjectDbContext.OnModelCreating$Microsoft.EntityFrameworkCore.ModelBuilder$(none) -> () loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\DataAccess\\Concrete\\EntityFramework\\Contexts\\ProjectDbContext.cs" :42 :2) {
^entry (%_modelBuilder : none):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\DataAccess\\Concrete\\EntityFramework\\Contexts\\ProjectDbContext.cs" :42 :42)
cbde.store %_modelBuilder, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\DataAccess\\Concrete\\EntityFramework\\Contexts\\ProjectDbContext.cs" :42 :42)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\DataAccess\\Concrete\\EntityFramework\\Contexts\\ProjectDbContext.cs" :44 :3) // Not a variable of known type: modelBuilder
%2 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\DataAccess\\Concrete\\EntityFramework\\Contexts\\ProjectDbContext.cs" :44 :35) // new UserEntityConfiguration() (ObjectCreationExpression)
%3 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\DataAccess\\Concrete\\EntityFramework\\Contexts\\ProjectDbContext.cs" :44 :3) // modelBuilder.ApplyConfiguration(new UserEntityConfiguration()) (InvocationExpression)
%4 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\DataAccess\\Concrete\\EntityFramework\\Contexts\\ProjectDbContext.cs" :45 :3) // Not a variable of known type: modelBuilder
%5 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\DataAccess\\Concrete\\EntityFramework\\Contexts\\ProjectDbContext.cs" :45 :35) // new GroupEntityConfiguration() (ObjectCreationExpression)
%6 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\DataAccess\\Concrete\\EntityFramework\\Contexts\\ProjectDbContext.cs" :45 :3) // modelBuilder.ApplyConfiguration(new GroupEntityConfiguration()) (InvocationExpression)
%7 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\DataAccess\\Concrete\\EntityFramework\\Contexts\\ProjectDbContext.cs" :46 :3) // Not a variable of known type: modelBuilder
%8 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\DataAccess\\Concrete\\EntityFramework\\Contexts\\ProjectDbContext.cs" :46 :35) // new UserGroupEntityConfiguration() (ObjectCreationExpression)
%9 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\DataAccess\\Concrete\\EntityFramework\\Contexts\\ProjectDbContext.cs" :46 :3) // modelBuilder.ApplyConfiguration(new UserGroupEntityConfiguration()) (InvocationExpression)
%10 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\DataAccess\\Concrete\\EntityFramework\\Contexts\\ProjectDbContext.cs" :47 :3) // Not a variable of known type: modelBuilder
%11 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\DataAccess\\Concrete\\EntityFramework\\Contexts\\ProjectDbContext.cs" :47 :35) // new UserClaimEntityConfiguration() (ObjectCreationExpression)
%12 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\DataAccess\\Concrete\\EntityFramework\\Contexts\\ProjectDbContext.cs" :47 :3) // modelBuilder.ApplyConfiguration(new UserClaimEntityConfiguration()) (InvocationExpression)
%13 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\DataAccess\\Concrete\\EntityFramework\\Contexts\\ProjectDbContext.cs" :48 :3) // Not a variable of known type: modelBuilder
%14 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\DataAccess\\Concrete\\EntityFramework\\Contexts\\ProjectDbContext.cs" :48 :35) // new GroupClaimEntityConfiguration() (ObjectCreationExpression)
%15 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\DataAccess\\Concrete\\EntityFramework\\Contexts\\ProjectDbContext.cs" :48 :3) // modelBuilder.ApplyConfiguration(new GroupClaimEntityConfiguration()) (InvocationExpression)
%16 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\DataAccess\\Concrete\\EntityFramework\\Contexts\\ProjectDbContext.cs" :49 :3) // Not a variable of known type: modelBuilder
%17 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\DataAccess\\Concrete\\EntityFramework\\Contexts\\ProjectDbContext.cs" :49 :35) // new UserGroupEntityConfiguration() (ObjectCreationExpression)
%18 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\DataAccess\\Concrete\\EntityFramework\\Contexts\\ProjectDbContext.cs" :49 :3) // modelBuilder.ApplyConfiguration(new UserGroupEntityConfiguration()) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_DataAccess.Concrete.EntityFramework.Contexts.ProjectDbContext.OnConfiguring$Microsoft.EntityFrameworkCore.DbContextOptionsBuilder$(none) -> () loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\DataAccess\\Concrete\\EntityFramework\\Contexts\\ProjectDbContext.cs" :51 :2) {
^entry (%_optionsBuilder : none):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\DataAccess\\Concrete\\EntityFramework\\Contexts\\ProjectDbContext.cs" :51 :40)
cbde.store %_optionsBuilder, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\DataAccess\\Concrete\\EntityFramework\\Contexts\\ProjectDbContext.cs" :51 :40)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\DataAccess\\Concrete\\EntityFramework\\Contexts\\ProjectDbContext.cs" :53 :8) // Not a variable of known type: optionsBuilder
%2 = cbde.unknown : i1 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\DataAccess\\Concrete\\EntityFramework\\Contexts\\ProjectDbContext.cs" :53 :8) // optionsBuilder.IsConfigured (SimpleMemberAccessExpression)
%3 = cbde.unknown : i1 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\DataAccess\\Concrete\\EntityFramework\\Contexts\\ProjectDbContext.cs" :53 :7) // !optionsBuilder.IsConfigured (LogicalNotExpression)
cond_br %3, ^1, ^2 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\DataAccess\\Concrete\\EntityFramework\\Contexts\\ProjectDbContext.cs" :53 :7)

^1: // SimpleBlock
%4 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\DataAccess\\Concrete\\EntityFramework\\Contexts\\ProjectDbContext.cs" :55 :4) // base (BaseExpression)
%5 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\DataAccess\\Concrete\\EntityFramework\\Contexts\\ProjectDbContext.cs" :55 :23) // Not a variable of known type: optionsBuilder
%6 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\DataAccess\\Concrete\\EntityFramework\\Contexts\\ProjectDbContext.cs" :55 :48) // Not a variable of known type: configuration
%7 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\DataAccess\\Concrete\\EntityFramework\\Contexts\\ProjectDbContext.cs" :55 :82) // "SFwPgContext" (StringLiteralExpression)
%8 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\DataAccess\\Concrete\\EntityFramework\\Contexts\\ProjectDbContext.cs" :55 :48) // configuration.GetConnectionString("SFwPgContext") (InvocationExpression)
%9 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\DataAccess\\Concrete\\EntityFramework\\Contexts\\ProjectDbContext.cs" :55 :23) // optionsBuilder.UseNpgsql(configuration.GetConnectionString("SFwPgContext")) (InvocationExpression)
%10 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\DataAccess\\Concrete\\EntityFramework\\Contexts\\ProjectDbContext.cs" :55 :4) // base.OnConfiguring(optionsBuilder.UseNpgsql(configuration.GetConnectionString("SFwPgContext"))) (InvocationExpression)
br ^2

^2: // ExitBlock
return

}
