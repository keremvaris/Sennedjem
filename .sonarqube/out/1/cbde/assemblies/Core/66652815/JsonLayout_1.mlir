func @_Core.CrossCuttingConcerns.Logging.Log4Net.Layouts.JsonLayout.ActivateOptions$$() -> () loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\Layouts\\JsonLayout.cs" :12 :4) {
^entry :
br ^0

^0: // ExitBlock
return

}
func @_Core.CrossCuttingConcerns.Logging.Log4Net.Layouts.JsonLayout.Format$System.IO.TextWriter.log4net.Core.LoggingEvent$(none, none) -> () loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\Layouts\\JsonLayout.cs" :17 :4) {
^entry (%_writer : none, %_loggingEvent : none):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\Layouts\\JsonLayout.cs" :17 :32)
cbde.store %_writer, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\Layouts\\JsonLayout.cs" :17 :32)
%1 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\Layouts\\JsonLayout.cs" :17 :51)
cbde.store %_loggingEvent, %1 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\Layouts\\JsonLayout.cs" :17 :51)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\Layouts\\JsonLayout.cs" :19 :46) // Not a variable of known type: loggingEvent
%3 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\Layouts\\JsonLayout.cs" :19 :21) // new SerializableLogEvent(loggingEvent) (ObjectCreationExpression)
// Entity from another assembly: JsonConvert
%5 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\Layouts\\JsonLayout.cs" :20 :45) // Not a variable of known type: logEvent
// Entity from another assembly: Formatting
%6 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\Layouts\\JsonLayout.cs" :20 :55) // Formatting.None (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\Layouts\\JsonLayout.cs" :20 :17) // JsonConvert.SerializeObject(logEvent, Formatting.None) (InvocationExpression)
%9 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\Layouts\\JsonLayout.cs" :21 :6) // Not a variable of known type: writer
%10 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\Layouts\\JsonLayout.cs" :21 :23) // Not a variable of known type: json
%11 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\Log4Net\\Layouts\\JsonLayout.cs" :21 :6) // writer.WriteLine(json) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
