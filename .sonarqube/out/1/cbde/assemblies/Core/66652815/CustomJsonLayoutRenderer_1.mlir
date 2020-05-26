func @_Core.CrossCuttingConcerns.Logging.NLog.Layouts.CustomJsonLayoutRenderer.Append$System.Text.StringBuilder.NLog.LogEventInfo$(none, none) -> () loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\NLog\\Layouts\\CustomJsonLayoutRenderer.cs" :12 :4) {
^entry (%_builder : none, %_logEvent : none):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\NLog\\Layouts\\CustomJsonLayoutRenderer.cs" :12 :35)
cbde.store %_builder, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\NLog\\Layouts\\CustomJsonLayoutRenderer.cs" :12 :35)
%1 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\NLog\\Layouts\\CustomJsonLayoutRenderer.cs" :12 :58)
cbde.store %_logEvent, %1 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\NLog\\Layouts\\CustomJsonLayoutRenderer.cs" :12 :58)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\NLog\\Layouts\\CustomJsonLayoutRenderer.cs" :14 :50) // Not a variable of known type: logEvent
%3 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\NLog\\Layouts\\CustomJsonLayoutRenderer.cs" :14 :25) // new SerializableLogEvent(logEvent) (ObjectCreationExpression)
// Entity from another assembly: JsonConvert
%5 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\NLog\\Layouts\\CustomJsonLayoutRenderer.cs" :15 :45) // Not a variable of known type: logEventInfo
// Entity from another assembly: Formatting
%6 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\NLog\\Layouts\\CustomJsonLayoutRenderer.cs" :15 :59) // Formatting.None (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\NLog\\Layouts\\CustomJsonLayoutRenderer.cs" :15 :17) // JsonConvert.SerializeObject(logEventInfo, Formatting.None) (InvocationExpression)
%9 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\NLog\\Layouts\\CustomJsonLayoutRenderer.cs" :16 :6) // Not a variable of known type: builder
%10 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\NLog\\Layouts\\CustomJsonLayoutRenderer.cs" :16 :25) // Not a variable of known type: json
%11 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Logging\\NLog\\Layouts\\CustomJsonLayoutRenderer.cs" :16 :6) // builder.AppendLine(json) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
