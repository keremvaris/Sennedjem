func @_Core.CrossCuttingConcerns.Logging.Log4Net.LoggerServiceBase.Info$object$(none) -> () loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :27 :8) {
^entry (%_logMessage : none):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :27 :25)
cbde.store %_logMessage, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :27 :25)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : i1 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :29 :16) // Not a variable of known type: IsInfoEnabled
cond_br %1, ^1, ^2 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :29 :16)

^1: // SimpleBlock
%2 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :30 :16) // Not a variable of known type: _log
%3 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :30 :26) // Not a variable of known type: logMessage
%4 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :30 :16) // _log.Info(logMessage) (InvocationExpression)
br ^2

^2: // ExitBlock
return

}
func @_Core.CrossCuttingConcerns.Logging.Log4Net.LoggerServiceBase.Debug$object$(none) -> () loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :32 :8) {
^entry (%_logMessage : none):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :32 :26)
cbde.store %_logMessage, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :32 :26)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : i1 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :34 :16) // Not a variable of known type: IsDebugEnabled
cond_br %1, ^1, ^2 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :34 :16)

^1: // SimpleBlock
%2 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :35 :16) // Not a variable of known type: _log
%3 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :35 :26) // Not a variable of known type: logMessage
%4 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :35 :16) // _log.Info(logMessage) (InvocationExpression)
br ^2

^2: // ExitBlock
return

}
func @_Core.CrossCuttingConcerns.Logging.Log4Net.LoggerServiceBase.Warn$object$(none) -> () loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :37 :8) {
^entry (%_logMessage : none):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :37 :25)
cbde.store %_logMessage, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :37 :25)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : i1 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :39 :16) // Not a variable of known type: IsWarnEnabled
cond_br %1, ^1, ^2 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :39 :16)

^1: // SimpleBlock
%2 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :40 :16) // Not a variable of known type: _log
%3 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :40 :26) // Not a variable of known type: logMessage
%4 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :40 :16) // _log.Info(logMessage) (InvocationExpression)
br ^2

^2: // ExitBlock
return

}
func @_Core.CrossCuttingConcerns.Logging.Log4Net.LoggerServiceBase.Fatal$object$(none) -> () loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :42 :8) {
^entry (%_logMessage : none):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :42 :26)
cbde.store %_logMessage, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :42 :26)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : i1 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :44 :16) // Not a variable of known type: IsFatalEnabled
cond_br %1, ^1, ^2 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :44 :16)

^1: // SimpleBlock
%2 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :45 :16) // Not a variable of known type: _log
%3 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :45 :26) // Not a variable of known type: logMessage
%4 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :45 :16) // _log.Info(logMessage) (InvocationExpression)
br ^2

^2: // ExitBlock
return

}
func @_Core.CrossCuttingConcerns.Logging.Log4Net.LoggerServiceBase.Error$object$(none) -> () loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :47 :8) {
^entry (%_logMessage : none):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :47 :26)
cbde.store %_logMessage, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :47 :26)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : i1 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :49 :16) // Not a variable of known type: IsErrorEnabled
cond_br %1, ^1, ^2 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :49 :16)

^1: // SimpleBlock
%2 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :50 :16) // Not a variable of known type: _log
%3 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :50 :26) // Not a variable of known type: logMessage
%4 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\LoggerServiceBase.cs" :50 :16) // _log.Info(logMessage) (InvocationExpression)
br ^2

^2: // ExitBlock
return

}
