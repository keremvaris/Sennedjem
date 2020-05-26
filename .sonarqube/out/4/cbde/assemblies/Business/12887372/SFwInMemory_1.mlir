func @_Business.Fakes.SFw.SFwInMemory.OnConfiguring$Microsoft.EntityFrameworkCore.DbContextOptionsBuilder$(none) -> () loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Fakes\\SFw\\SFwInMemory.cs" :12 :8) {
^entry (%_optionsBuilder : none):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Fakes\\SFw\\SFwInMemory.cs" :12 :46)
cbde.store %_optionsBuilder, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Fakes\\SFw\\SFwInMemory.cs" :12 :46)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Fakes\\SFw\\SFwInMemory.cs" :14 :17) // Not a variable of known type: optionsBuilder
%2 = cbde.unknown : i1 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Fakes\\SFw\\SFwInMemory.cs" :14 :17) // optionsBuilder.IsConfigured (SimpleMemberAccessExpression)
%3 = cbde.unknown : i1 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Fakes\\SFw\\SFwInMemory.cs" :14 :16) // !optionsBuilder.IsConfigured (LogicalNotExpression)
cond_br %3, ^1, ^2 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Fakes\\SFw\\SFwInMemory.cs" :14 :16)

^1: // SimpleBlock
%4 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Fakes\\SFw\\SFwInMemory.cs" :16 :16) // base (BaseExpression)
%5 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Fakes\\SFw\\SFwInMemory.cs" :16 :35) // Not a variable of known type: optionsBuilder
%6 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Fakes\\SFw\\SFwInMemory.cs" :16 :70) // Identifier from another assembly: configuration
%7 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Fakes\\SFw\\SFwInMemory.cs" :16 :104) // "SFwInmemory" (StringLiteralExpression)
%8 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Fakes\\SFw\\SFwInMemory.cs" :16 :70) // configuration.GetConnectionString("SFwInmemory") (InvocationExpression)
%9 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Fakes\\SFw\\SFwInMemory.cs" :16 :35) // optionsBuilder.UseInMemoryDatabase(configuration.GetConnectionString("SFwInmemory")) (InvocationExpression)
%10 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Fakes\\SFw\\SFwInMemory.cs" :16 :16) // base.OnConfiguring(optionsBuilder.UseInMemoryDatabase(configuration.GetConnectionString("SFwInmemory"))) (InvocationExpression)
br ^2

^2: // ExitBlock
return

}
