func @_Business.BusinessAspects.ActivityMonitor.ActivitySlot.Clear$$() -> () loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\ActivityMonitor.cs" :22 :12) {
^entry :
br ^0

^0: // SimpleBlock
%0 = constant 0 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\ActivityMonitor.cs" :24 :24)
%1 = constant 0 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\ActivityMonitor.cs" :25 :29)
br ^1

^1: // ExitBlock
return

}
func @_Business.BusinessAspects.ActivityMonitor.ActivitySlot.Tick$int.long$(i32, none) -> () loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\ActivityMonitor.cs" :27 :12) {
^entry (%_ticks : i32, %_msecs : none):
%0 = cbde.alloca i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\ActivityMonitor.cs" :27 :31)
cbde.store %_ticks, %0 : memref<i32> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\ActivityMonitor.cs" :27 :31)
%1 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\ActivityMonitor.cs" :27 :46)
cbde.store %_msecs, %1 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\ActivityMonitor.cs" :27 :46)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\ActivityMonitor.cs" :29 :16) // Not a variable of known type: Calls
%3 = cbde.load %0 : memref<i32> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\ActivityMonitor.cs" :29 :25)
%4 = addi %2, %3 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\ActivityMonitor.cs" :29 :16)
%5 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\ActivityMonitor.cs" :30 :16) // Not a variable of known type: TotalMsecs
%6 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\ActivityMonitor.cs" :30 :30) // Not a variable of known type: msecs
%7 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\BusinessAspects\\ActivityMonitor.cs" :30 :16) // Binary expression on unsupported types TotalMsecs += msecs
br ^1

^1: // ExitBlock
return

}
// Skipping function Summarize(), it contains poisonous unsupported syntaxes

// Skipping function Clear(), it contains poisonous unsupported syntaxes

// Skipping function Tick(none, i32, none, none), it contains poisonous unsupported syntaxes

// Skipping function Save(), it contains poisonous unsupported syntaxes

