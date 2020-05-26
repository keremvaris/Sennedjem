func @_Core.CrossCuttingConcerns.Logging.Log4Net.LoggerServiceBase.Info$object$(none) -> () loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :30 :8) {
^entry (%_logMessage : none):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :30 :25)
cbde.store %_logMessage, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :30 :25)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : i1 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :32 :16) // Not a variable of known type: IsInfoEnabled
cond_br %1, ^1, ^2 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :32 :16)

^1: // SimpleBlock
%2 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :33 :16) // Not a variable of known type: _log
%3 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :33 :26) // Not a variable of known type: logMessage
%4 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :33 :16) // _log.Info(logMessage) (InvocationExpression)
br ^2

^2: // ExitBlock
return

}
func @_Core.CrossCuttingConcerns.Logging.Log4Net.LoggerServiceBase.Debug$object$(none) -> () loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :35 :8) {
^entry (%_logMessage : none):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :35 :26)
cbde.store %_logMessage, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :35 :26)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : i1 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :37 :16) // Not a variable of known type: IsDebugEnabled
cond_br %1, ^1, ^2 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :37 :16)

^1: // SimpleBlock
%2 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :38 :16) // Not a variable of known type: _log
%3 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :38 :26) // Not a variable of known type: logMessage
%4 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :38 :16) // _log.Info(logMessage) (InvocationExpression)
br ^2

^2: // ExitBlock
return

}
func @_Core.CrossCuttingConcerns.Logging.Log4Net.LoggerServiceBase.Warn$object$(none) -> () loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :40 :8) {
^entry (%_logMessage : none):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :40 :25)
cbde.store %_logMessage, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :40 :25)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : i1 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :42 :16) // Not a variable of known type: IsWarnEnabled
cond_br %1, ^1, ^2 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :42 :16)

^1: // SimpleBlock
%2 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :43 :16) // Not a variable of known type: _log
%3 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :43 :26) // Not a variable of known type: logMessage
%4 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :43 :16) // _log.Info(logMessage) (InvocationExpression)
br ^2

^2: // ExitBlock
return

}
func @_Core.CrossCuttingConcerns.Logging.Log4Net.LoggerServiceBase.Fatal$object$(none) -> () loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :45 :8) {
^entry (%_logMessage : none):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :45 :26)
cbde.store %_logMessage, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :45 :26)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : i1 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :47 :16) // Not a variable of known type: IsFatalEnabled
cond_br %1, ^1, ^2 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :47 :16)

^1: // SimpleBlock
%2 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :48 :16) // Not a variable of known type: _log
%3 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :48 :26) // Not a variable of known type: logMessage
%4 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :48 :16) // _log.Info(logMessage) (InvocationExpression)
br ^2

^2: // ExitBlock
return

}
func @_Core.CrossCuttingConcerns.Logging.Log4Net.LoggerServiceBase.Error$object$(none) -> () loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :50 :8) {
^entry (%_logMessage : none):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :50 :26)
cbde.store %_logMessage, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :50 :26)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : i1 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :52 :16) // Not a variable of known type: IsErrorEnabled
cond_br %1, ^1, ^2 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :52 :16)

^1: // SimpleBlock
%2 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :53 :16) // Not a variable of known type: _log
%3 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :53 :26) // Not a variable of known type: logMessage
%4 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :53 :16) // _log.Info(logMessage) (InvocationExpression)
br ^2

^2: // ExitBlock
return

}
