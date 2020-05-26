func @_SennedjemUtilities.Program.Main$string$$$(none) -> () loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\SennedjemUtilities\\Program.cs" :6 :8) {
^entry (%_args : none):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\SennedjemUtilities\\Program.cs" :6 :25)
cbde.store %_args, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\SennedjemUtilities\\Program.cs" :6 :25)
br ^0

^0: // SimpleBlock
// Entity from another assembly: Console
%1 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\SennedjemUtilities\\Program.cs" :9 :12) // Console.ReadLine() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
