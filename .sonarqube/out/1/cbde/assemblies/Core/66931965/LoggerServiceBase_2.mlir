func @_Core.CrossCuttingConcerns.Logging.NLog.LoggerServiceBase.Info$object$(none) -> () loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\NLog\\LoggerServiceBase.cs" :30 :4) {
^entry (%_logMessage : none):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\NLog\\LoggerServiceBase.cs" :30 :21)
cbde.store %_logMessage, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\NLog\\LoggerServiceBase.cs" :30 :21)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : i1 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\NLog\\LoggerServiceBase.cs" :32 :10) // Not a variable of known type: IsInfoEnabled
cond_br %1, ^1, ^2 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\NLog\\LoggerServiceBase.cs" :32 :10)

^1: // SimpleBlock
%2 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\NLog\\LoggerServiceBase.cs" :33 :8) // Not a variable of known type: _logger
%3 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\NLog\\LoggerServiceBase.cs" :33 :21) // Not a variable of known type: logMessage
%4 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\NLog\\LoggerServiceBase.cs" :33 :8) // _logger.Info(logMessage) (InvocationExpression)
br ^2

^2: // ExitBlock
return

}
func @_Core.CrossCuttingConcerns.Logging.NLog.LoggerServiceBase.Debug$object$(none) -> () loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\NLog\\LoggerServiceBase.cs" :36 :4) {
^entry (%_logMessage : none):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\NLog\\LoggerServiceBase.cs" :36 :22)
cbde.store %_logMessage, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\NLog\\LoggerServiceBase.cs" :36 :22)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : i1 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\NLog\\LoggerServiceBase.cs" :38 :10) // Not a variable of known type: IsDebugEnabled
cond_br %1, ^1, ^2 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\NLog\\LoggerServiceBase.cs" :38 :10)

^1: // SimpleBlock
%2 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\NLog\\LoggerServiceBase.cs" :39 :8) // Not a variable of known type: _logger
%3 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\NLog\\LoggerServiceBase.cs" :39 :22) // Not a variable of known type: logMessage
%4 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\NLog\\LoggerServiceBase.cs" :39 :8) // _logger.Debug(logMessage) (InvocationExpression)
br ^2

^2: // ExitBlock
return

}
func @_Core.CrossCuttingConcerns.Logging.NLog.LoggerServiceBase.Warn$object$(none) -> () loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\NLog\\LoggerServiceBase.cs" :42 :4) {
^entry (%_logMessage : none):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\NLog\\LoggerServiceBase.cs" :42 :21)
cbde.store %_logMessage, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\NLog\\LoggerServiceBase.cs" :42 :21)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : i1 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\NLog\\LoggerServiceBase.cs" :44 :10) // Not a variable of known type: IsWarnEnabled
cond_br %1, ^1, ^2 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\NLog\\LoggerServiceBase.cs" :44 :10)

^1: // SimpleBlock
%2 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\NLog\\LoggerServiceBase.cs" :45 :8) // Not a variable of known type: _logger
%3 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\NLog\\LoggerServiceBase.cs" :45 :21) // Not a variable of known type: logMessage
%4 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\NLog\\LoggerServiceBase.cs" :45 :8) // _logger.Warn(logMessage) (InvocationExpression)
br ^2

^2: // ExitBlock
return

}
func @_Core.CrossCuttingConcerns.Logging.NLog.LoggerServiceBase.Fatal$object$(none) -> () loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\NLog\\LoggerServiceBase.cs" :48 :4) {
^entry (%_logMessage : none):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\NLog\\LoggerServiceBase.cs" :48 :22)
cbde.store %_logMessage, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\NLog\\LoggerServiceBase.cs" :48 :22)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : i1 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\NLog\\LoggerServiceBase.cs" :50 :10) // Not a variable of known type: IsFatalEnabled
cond_br %1, ^1, ^2 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\NLog\\LoggerServiceBase.cs" :50 :10)

^1: // SimpleBlock
%2 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\NLog\\LoggerServiceBase.cs" :51 :8) // Not a variable of known type: _logger
%3 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\NLog\\LoggerServiceBase.cs" :51 :22) // Not a variable of known type: logMessage
%4 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\NLog\\LoggerServiceBase.cs" :51 :8) // _logger.Fatal(logMessage) (InvocationExpression)
br ^2

^2: // ExitBlock
return

}
func @_Core.CrossCuttingConcerns.Logging.NLog.LoggerServiceBase.Error$object$(none) -> () loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\NLog\\LoggerServiceBase.cs" :54 :4) {
^entry (%_logMessage : none):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\NLog\\LoggerServiceBase.cs" :54 :22)
cbde.store %_logMessage, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\NLog\\LoggerServiceBase.cs" :54 :22)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : i1 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\NLog\\LoggerServiceBase.cs" :56 :10) // Not a variable of known type: IsErrorEnabled
cond_br %1, ^1, ^2 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\NLog\\LoggerServiceBase.cs" :56 :10)

^1: // SimpleBlock
%2 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\NLog\\LoggerServiceBase.cs" :57 :8) // Not a variable of known type: _logger
%3 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\NLog\\LoggerServiceBase.cs" :57 :22) // Not a variable of known type: logMessage
%4 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\NLog\\LoggerServiceBase.cs" :57 :8) // _logger.Error(logMessage) (InvocationExpression)
br ^2

^2: // ExitBlock
return

}
