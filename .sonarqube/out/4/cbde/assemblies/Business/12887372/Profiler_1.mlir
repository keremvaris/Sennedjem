func @_Business.BusinessAspects.Profiler.Begin$string.string$(none, none) -> () loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\Profiler.cs" :30 :8) {
^entry (%_blockName : none, %_msg : none):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\Profiler.cs" :30 :26)
cbde.store %_blockName, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\Profiler.cs" :30 :26)
%1 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\Profiler.cs" :30 :44)
cbde.store %_msg, %1 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\Profiler.cs" :30 :44)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\Profiler.cs" :33 :17) // string (PredefinedType)
%3 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\Profiler.cs" :33 :38) // Not a variable of known type: lastBlockName
%4 = cbde.unknown : i1 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\Profiler.cs" :33 :17) // string.IsNullOrEmpty(lastBlockName) (InvocationExpression)
%5 = cbde.unknown : i1 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\Profiler.cs" :33 :16) // !string.IsNullOrEmpty(lastBlockName) (LogicalNotExpression)
cond_br %5, ^1, ^2 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\Profiler.cs" :33 :16)

^1: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: End
%6 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\Profiler.cs" :34 :16) // End() (InvocationExpression)
br ^2

^2: // BinaryBranchBlock
// Entity from another assembly: System
%7 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\Profiler.cs" :35 :12) // System.Diagnostics.Trace (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\Profiler.cs" :35 :12) // System.Diagnostics.Trace.Indent() (InvocationExpression)
%9 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\Profiler.cs" :36 :28) // Not a variable of known type: blockName
// Entity from another assembly: DateTime
%10 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\Profiler.cs" :38 :23) // DateTime.Now (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\Profiler.cs" :38 :23) // DateTime.Now.Ticks (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Write
%12 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\Profiler.cs" :39 :18) // "+{0}" (StringLiteralExpression)
%13 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\Profiler.cs" :39 :26) // Not a variable of known type: lastBlockName
%14 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\Profiler.cs" :39 :12) // Write("+{0}", lastBlockName) (InvocationExpression)
%15 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\Profiler.cs" :40 :17) // string (PredefinedType)
%16 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\Profiler.cs" :40 :38) // Not a variable of known type: msg
%17 = cbde.unknown : i1 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\Profiler.cs" :40 :17) // string.IsNullOrEmpty(msg) (InvocationExpression)
%18 = cbde.unknown : i1 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\Profiler.cs" :40 :16) // !string.IsNullOrEmpty(msg) (LogicalNotExpression)
cond_br %18, ^3, ^4 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\Profiler.cs" :40 :16)

^3: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Write
%19 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\Profiler.cs" :41 :22) // Not a variable of known type: msg
%20 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\Profiler.cs" :41 :16) // Write(msg) (InvocationExpression)
br ^4

^4: // ExitBlock
return

}
func @_Business.BusinessAspects.Profiler.Begin$string$(none) -> () loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\Profiler.cs" :44 :8) {
^entry (%_blockName : none):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\Profiler.cs" :44 :26)
cbde.store %_blockName, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\Profiler.cs" :44 :26)
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Begin
%1 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\Profiler.cs" :46 :18) // Not a variable of known type: blockName
// Entity from another assembly: String
%2 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\Profiler.cs" :46 :29) // String.Empty (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\Profiler.cs" :46 :12) // Begin(blockName, String.Empty) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_Business.BusinessAspects.Profiler.Write$string.paramsobject$$$(none, none) -> () loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\Profiler.cs" :49 :8) {
^entry (%_format : none, %_args : none):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\Profiler.cs" :49 :26)
cbde.store %_format, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\Profiler.cs" :49 :26)
%1 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\Profiler.cs" :49 :41)
cbde.store %_args, %1 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\Profiler.cs" :49 :41)
br ^0

^0: // SimpleBlock
// Entity from another assembly: System
%2 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\Profiler.cs" :51 :12) // System.Diagnostics.Trace (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\Profiler.cs" :51 :47) // string (PredefinedType)
%4 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\Profiler.cs" :51 :61) // Not a variable of known type: format
%5 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\Profiler.cs" :51 :69) // Not a variable of known type: args
%6 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\Profiler.cs" :51 :47) // string.Format(format, args) (InvocationExpression)
%7 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\Profiler.cs" :51 :12) // System.Diagnostics.Trace.WriteLine(string.Format(format, args)) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_Business.BusinessAspects.Profiler.End$string$(none) -> () loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\Profiler.cs" :54 :8) {
^entry (%_msg : none):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\Profiler.cs" :54 :24)
cbde.store %_msg, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\Profiler.cs" :54 :24)
br ^0

^0: // SimpleBlock
// Entity from another assembly: DateTime
%1 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\Profiler.cs" :56 :24) // DateTime.Now (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\Profiler.cs" :56 :24) // DateTime.Now.Ticks (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\Profiler.cs" :56 :45) // Not a variable of known type: lastTick
%4 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\Profiler.cs" :56 :24) // Binary expression on unsupported types DateTime.Now.Ticks - lastTick
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Write
%5 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\Profiler.cs" :57 :18) // "-{0}\t{1}ms" (StringLiteralExpression)
%6 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\Profiler.cs" :57 :33) // Not a variable of known type: lastBlockName
%7 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\Profiler.cs" :57 :48) // Not a variable of known type: lastDelta
%8 = constant 10000 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\Profiler.cs" :57 :60)
%9 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\Profiler.cs" :57 :48) // Binary expression on unsupported types lastDelta / 10000
%10 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\Profiler.cs" :57 :12) // Write("-{0}\t{1}ms", lastBlockName, lastDelta / 10000) (InvocationExpression)
// Entity from another assembly: String
%11 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\Profiler.cs" :58 :28) // String.Empty (SimpleMemberAccessExpression)
// Entity from another assembly: System
%12 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\Profiler.cs" :59 :12) // System.Diagnostics.Trace (SimpleMemberAccessExpression)
%13 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\Profiler.cs" :59 :12) // System.Diagnostics.Trace.Unindent() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_Business.BusinessAspects.Profiler.End$$() -> () loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\Profiler.cs" :62 :8) {
^entry :
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: End
// Entity from another assembly: String
%0 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\Profiler.cs" :64 :16) // String.Empty (SimpleMemberAccessExpression)
%1 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\Profiler.cs" :64 :12) // End(String.Empty) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_Business.BusinessAspects.Profiler.Dispose$$() -> () loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\Profiler.cs" :69 :8) {
^entry :
br ^0

^0: // ExitBlock
return

}
