func @_wsKPSPublic.KPSPublicSoapClient.wsKPSPublic.KPSPublicSoap.TCKimlikNoDogrula$wsKPSPublic.TCKimlikNoDogrulaRequest$(none) -> none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :165 :8) {
^entry (%_request : none):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :166 :90)
cbde.store %_request, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :166 :90)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :168 :19) // base (BaseExpression)
%2 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :168 :19) // base.Channel (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :168 :50) // Not a variable of known type: request
%4 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :168 :19) // base.Channel.TCKimlikNoDogrula(request) (InvocationExpression)
return %4 : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :168 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_wsKPSPublic.KPSPublicSoapClient.TCKimlikNoDogrula$long.string.string.int$(none, none, none, i32) -> i1 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :171 :8) {
^entry (%_TCKimlikNo : none, %_Ad : none, %_Soyad : none, %_DogumYili : i32):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :171 :38)
cbde.store %_TCKimlikNo, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :171 :38)
%1 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :171 :55)
cbde.store %_Ad, %1 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :171 :55)
%2 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :171 :66)
cbde.store %_Soyad, %2 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :171 :66)
%3 = cbde.alloca i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :171 :80)
cbde.store %_DogumYili, %3 : memref<i32> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :171 :80)
br ^0

^0: // JumpBlock
%4 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :173 :59) // new wsKPSPublic.TCKimlikNoDogrulaRequest() (ObjectCreationExpression)
%6 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :174 :12) // Not a variable of known type: inValue
%7 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :174 :12) // inValue.Body (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :174 :27) // new wsKPSPublic.TCKimlikNoDogrulaRequestBody() (ObjectCreationExpression)
%9 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :175 :12) // Not a variable of known type: inValue
%10 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :175 :12) // inValue.Body (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :175 :12) // inValue.Body.TCKimlikNo (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :175 :38) // Not a variable of known type: TCKimlikNo
%13 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :176 :12) // Not a variable of known type: inValue
%14 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :176 :12) // inValue.Body (SimpleMemberAccessExpression)
%15 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :176 :12) // inValue.Body.Ad (SimpleMemberAccessExpression)
%16 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :176 :30) // Not a variable of known type: Ad
%17 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :177 :12) // Not a variable of known type: inValue
%18 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :177 :12) // inValue.Body (SimpleMemberAccessExpression)
%19 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :177 :12) // inValue.Body.Soyad (SimpleMemberAccessExpression)
%20 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :177 :33) // Not a variable of known type: Soyad
%21 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :178 :12) // Not a variable of known type: inValue
%22 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :178 :12) // inValue.Body (SimpleMemberAccessExpression)
%23 = cbde.unknown : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :178 :12) // inValue.Body.DogumYili (SimpleMemberAccessExpression)
%24 = cbde.load %3 : memref<i32> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :178 :37)
%25 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :179 :88) // this (ThisExpression)
%26 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :179 :60) // (wsKPSPublic.KPSPublicSoap)(this) (CastExpression)
%27 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :179 :113) // Not a variable of known type: inValue
%28 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :179 :59) // ((wsKPSPublic.KPSPublicSoap)(this)).TCKimlikNoDogrula(inValue) (InvocationExpression)
%30 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :180 :19) // Not a variable of known type: retVal
%31 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :180 :19) // retVal.Body (SimpleMemberAccessExpression)
%32 = cbde.unknown : i1 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :180 :19) // retVal.Body.TCKimlikNoDogrulaResult (SimpleMemberAccessExpression)
return %32 : i1 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :180 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_wsKPSPublic.KPSPublicSoapClient.wsKPSPublic.KPSPublicSoap.TCKimlikNoDogrulaAsync$wsKPSPublic.TCKimlikNoDogrulaRequest$(none) -> none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :183 :8) {
^entry (%_request : none):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :184 :124)
cbde.store %_request, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :184 :124)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :186 :19) // base (BaseExpression)
%2 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :186 :19) // base.Channel (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :186 :55) // Not a variable of known type: request
%4 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :186 :19) // base.Channel.TCKimlikNoDogrulaAsync(request) (InvocationExpression)
return %4 : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :186 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_wsKPSPublic.KPSPublicSoapClient.TCKimlikNoDogrulaAsync$long.string.string.int$(none, none, none, i32) -> none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :189 :8) {
^entry (%_TCKimlikNo : none, %_Ad : none, %_Soyad : none, %_DogumYili : i32):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :189 :105)
cbde.store %_TCKimlikNo, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :189 :105)
%1 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :189 :122)
cbde.store %_Ad, %1 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :189 :122)
%2 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :189 :133)
cbde.store %_Soyad, %2 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :189 :133)
%3 = cbde.alloca i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :189 :147)
cbde.store %_DogumYili, %3 : memref<i32> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :189 :147)
br ^0

^0: // JumpBlock
%4 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :191 :59) // new wsKPSPublic.TCKimlikNoDogrulaRequest() (ObjectCreationExpression)
%6 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :192 :12) // Not a variable of known type: inValue
%7 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :192 :12) // inValue.Body (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :192 :27) // new wsKPSPublic.TCKimlikNoDogrulaRequestBody() (ObjectCreationExpression)
%9 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :193 :12) // Not a variable of known type: inValue
%10 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :193 :12) // inValue.Body (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :193 :12) // inValue.Body.TCKimlikNo (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :193 :38) // Not a variable of known type: TCKimlikNo
%13 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :194 :12) // Not a variable of known type: inValue
%14 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :194 :12) // inValue.Body (SimpleMemberAccessExpression)
%15 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :194 :12) // inValue.Body.Ad (SimpleMemberAccessExpression)
%16 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :194 :30) // Not a variable of known type: Ad
%17 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :195 :12) // Not a variable of known type: inValue
%18 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :195 :12) // inValue.Body (SimpleMemberAccessExpression)
%19 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :195 :12) // inValue.Body.Soyad (SimpleMemberAccessExpression)
%20 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :195 :33) // Not a variable of known type: Soyad
%21 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :196 :12) // Not a variable of known type: inValue
%22 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :196 :12) // inValue.Body (SimpleMemberAccessExpression)
%23 = cbde.unknown : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :196 :12) // inValue.Body.DogumYili (SimpleMemberAccessExpression)
%24 = cbde.load %3 : memref<i32> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :196 :37)
%25 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :197 :48) // this (ThisExpression)
%26 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :197 :20) // (wsKPSPublic.KPSPublicSoap)(this) (CastExpression)
%27 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :197 :78) // Not a variable of known type: inValue
%28 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :197 :19) // ((wsKPSPublic.KPSPublicSoap)(this)).TCKimlikNoDogrulaAsync(inValue) (InvocationExpression)
return %28 : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :197 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_wsKPSPublic.KPSPublicSoapClient.OpenAsync$$() -> none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :200 :8) {
^entry :
br ^0

^0: // JumpBlock
// Entity from another assembly: System
%0 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :202 :19) // System.Threading.Tasks.Task (SimpleMemberAccessExpression)
%1 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :202 :19) // System.Threading.Tasks.Task.Factory (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :202 :109) // this (ThisExpression)
%3 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :202 :66) // (System.ServiceModel.ICommunicationObject)(this) (CastExpression)
%4 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :202 :126) // null (NullLiteralExpression)
%5 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :202 :132) // null (NullLiteralExpression)
%6 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :202 :65) // ((System.ServiceModel.ICommunicationObject)(this)).BeginOpen(null, null) (InvocationExpression)
%7 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :202 :222) // this (ThisExpression)
%8 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :202 :179) // (System.ServiceModel.ICommunicationObject)(this) (CastExpression)
%9 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :202 :139) // new System.Action<System.IAsyncResult>(((System.ServiceModel.ICommunicationObject)(this)).EndOpen) (ObjectCreationExpression)
%10 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :202 :19) // System.Threading.Tasks.Task.Factory.FromAsync(((System.ServiceModel.ICommunicationObject)(this)).BeginOpen(null, null), new System.Action<System.IAsyncResult>(((System.ServiceModel.ICommunicationObject)(this)).EndOpen)) (InvocationExpression)
return %10 : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :202 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_wsKPSPublic.KPSPublicSoapClient.CloseAsync$$() -> none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :205 :8) {
^entry :
br ^0

^0: // JumpBlock
// Entity from another assembly: System
%0 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :207 :19) // System.Threading.Tasks.Task (SimpleMemberAccessExpression)
%1 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :207 :19) // System.Threading.Tasks.Task.Factory (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :207 :109) // this (ThisExpression)
%3 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :207 :66) // (System.ServiceModel.ICommunicationObject)(this) (CastExpression)
%4 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :207 :127) // null (NullLiteralExpression)
%5 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :207 :133) // null (NullLiteralExpression)
%6 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :207 :65) // ((System.ServiceModel.ICommunicationObject)(this)).BeginClose(null, null) (InvocationExpression)
%7 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :207 :223) // this (ThisExpression)
%8 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :207 :180) // (System.ServiceModel.ICommunicationObject)(this) (CastExpression)
%9 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :207 :140) // new System.Action<System.IAsyncResult>(((System.ServiceModel.ICommunicationObject)(this)).EndClose) (ObjectCreationExpression)
%10 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :207 :19) // System.Threading.Tasks.Task.Factory.FromAsync(((System.ServiceModel.ICommunicationObject)(this)).BeginClose(null, null), new System.Action<System.IAsyncResult>(((System.ServiceModel.ICommunicationObject)(this)).EndClose)) (InvocationExpression)
return %10 : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :207 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_wsKPSPublic.KPSPublicSoapClient.GetBindingForEndpoint$wsKPSPublic.KPSPublicSoapClient.EndpointConfiguration$(none) -> none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :210 :8) {
^entry (%_endpointConfiguration : none):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :210 :82)
cbde.store %_endpointConfiguration, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :210 :82)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :212 :17) // Not a variable of known type: endpointConfiguration
%2 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :212 :42) // Not a variable of known type: EndpointConfiguration
%3 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :212 :42) // EndpointConfiguration.KPSPublicSoap (SimpleMemberAccessExpression)
%4 = cbde.unknown : i1  loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :212 :17) // comparison of unknown type: endpointConfiguration == EndpointConfiguration.KPSPublicSoap
cond_br %4, ^1, ^2 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :212 :17)

^1: // JumpBlock
%5 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :214 :62) // new System.ServiceModel.BasicHttpBinding() (ObjectCreationExpression)
%7 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :215 :16) // Not a variable of known type: result
%8 = cbde.unknown : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :215 :16) // result.MaxBufferSize (SimpleMemberAccessExpression)
%9 = cbde.unknown : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :215 :39) // int (PredefinedType)
%10 = cbde.unknown : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :215 :39) // int.MaxValue (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :216 :16) // Not a variable of known type: result
%12 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :216 :16) // result.ReaderQuotas (SimpleMemberAccessExpression)
// Entity from another assembly: System
%13 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :216 :38) // System.Xml.XmlDictionaryReaderQuotas (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :216 :38) // System.Xml.XmlDictionaryReaderQuotas.Max (SimpleMemberAccessExpression)
%15 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :217 :16) // Not a variable of known type: result
%16 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :217 :16) // result.MaxReceivedMessageSize (SimpleMemberAccessExpression)
%17 = cbde.unknown : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :217 :48) // int (PredefinedType)
%18 = cbde.unknown : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :217 :48) // int.MaxValue (SimpleMemberAccessExpression)
%19 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :218 :16) // Not a variable of known type: result
%20 = cbde.unknown : i1 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :218 :16) // result.AllowCookies (SimpleMemberAccessExpression)
%21 = constant 1 : i1 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :218 :38) // true
%22 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :219 :16) // Not a variable of known type: result
%23 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :219 :16) // result.Security (SimpleMemberAccessExpression)
%24 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :219 :16) // result.Security.Mode (SimpleMemberAccessExpression)
// Entity from another assembly: System
%25 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :219 :39) // System.ServiceModel.BasicHttpSecurityMode (SimpleMemberAccessExpression)
%26 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :219 :39) // System.ServiceModel.BasicHttpSecurityMode.Transport (SimpleMemberAccessExpression)
%27 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :220 :23) // Not a variable of known type: result
return %27 : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :220 :16)

^2: // BinaryBranchBlock
%28 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :222 :17) // Not a variable of known type: endpointConfiguration
%29 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :222 :42) // Not a variable of known type: EndpointConfiguration
%30 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :222 :42) // EndpointConfiguration.KPSPublicSoap12 (SimpleMemberAccessExpression)
%31 = cbde.unknown : i1  loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :222 :17) // comparison of unknown type: endpointConfiguration == EndpointConfiguration.KPSPublicSoap12
cond_br %31, ^3, ^4 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :222 :17)

^3: // JumpBlock
%32 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :224 :68) // new System.ServiceModel.Channels.CustomBinding() (ObjectCreationExpression)
%34 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :225 :100) // new System.ServiceModel.Channels.TextMessageEncodingBindingElement() (ObjectCreationExpression)
%36 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :226 :16) // Not a variable of known type: textBindingElement
%37 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :226 :16) // textBindingElement.MessageVersion (SimpleMemberAccessExpression)
// Entity from another assembly: System
%38 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :226 :52) // System.ServiceModel.Channels.MessageVersion (SimpleMemberAccessExpression)
// Entity from another assembly: System
%39 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :226 :110) // System.ServiceModel.EnvelopeVersion (SimpleMemberAccessExpression)
%40 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :226 :110) // System.ServiceModel.EnvelopeVersion.Soap12 (SimpleMemberAccessExpression)
// Entity from another assembly: System
%41 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :226 :154) // System.ServiceModel.Channels.AddressingVersion (SimpleMemberAccessExpression)
%42 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :226 :154) // System.ServiceModel.Channels.AddressingVersion.None (SimpleMemberAccessExpression)
%43 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :226 :52) // System.ServiceModel.Channels.MessageVersion.CreateVersion(System.ServiceModel.EnvelopeVersion.Soap12, System.ServiceModel.Channels.AddressingVersion.None) (InvocationExpression)
%44 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :227 :16) // Not a variable of known type: result
%45 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :227 :16) // result.Elements (SimpleMemberAccessExpression)
%46 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :227 :36) // Not a variable of known type: textBindingElement
%47 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :227 :16) // result.Elements.Add(textBindingElement) (InvocationExpression)
%48 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :228 :96) // new System.ServiceModel.Channels.HttpsTransportBindingElement() (ObjectCreationExpression)
%50 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :229 :16) // Not a variable of known type: httpsBindingElement
%51 = cbde.unknown : i1 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :229 :16) // httpsBindingElement.AllowCookies (SimpleMemberAccessExpression)
%52 = constant 1 : i1 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :229 :51) // true
%53 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :230 :16) // Not a variable of known type: httpsBindingElement
%54 = cbde.unknown : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :230 :16) // httpsBindingElement.MaxBufferSize (SimpleMemberAccessExpression)
%55 = cbde.unknown : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :230 :52) // int (PredefinedType)
%56 = cbde.unknown : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :230 :52) // int.MaxValue (SimpleMemberAccessExpression)
%57 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :231 :16) // Not a variable of known type: httpsBindingElement
%58 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :231 :16) // httpsBindingElement.MaxReceivedMessageSize (SimpleMemberAccessExpression)
%59 = cbde.unknown : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :231 :61) // int (PredefinedType)
%60 = cbde.unknown : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :231 :61) // int.MaxValue (SimpleMemberAccessExpression)
%61 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :232 :16) // Not a variable of known type: result
%62 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :232 :16) // result.Elements (SimpleMemberAccessExpression)
%63 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :232 :36) // Not a variable of known type: httpsBindingElement
%64 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :232 :16) // result.Elements.Add(httpsBindingElement) (InvocationExpression)
%65 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :233 :23) // Not a variable of known type: result
return %65 : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :233 :16)

^4: // JumpBlock
%66 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :235 :55) // string (PredefinedType)
%67 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :235 :69) // "Could not find endpoint with name \'{0}\'." (StringLiteralExpression)
%68 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :235 :115) // Not a variable of known type: endpointConfiguration
%69 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :235 :55) // string.Format("Could not find endpoint with name \'{0}\'.", endpointConfiguration) (InvocationExpression)
%70 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :235 :18) // new System.InvalidOperationException(string.Format("Could not find endpoint with name \'{0}\'.", endpointConfiguration)) (ObjectCreationExpression)
cbde.throw %70 :  none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :235 :12)

^5: // ExitBlock
cbde.unreachable

}
func @_wsKPSPublic.KPSPublicSoapClient.GetEndpointAddress$wsKPSPublic.KPSPublicSoapClient.EndpointConfiguration$(none) -> none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :238 :8) {
^entry (%_endpointConfiguration : none):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :238 :78)
cbde.store %_endpointConfiguration, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :238 :78)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :240 :17) // Not a variable of known type: endpointConfiguration
%2 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :240 :42) // Not a variable of known type: EndpointConfiguration
%3 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :240 :42) // EndpointConfiguration.KPSPublicSoap (SimpleMemberAccessExpression)
%4 = cbde.unknown : i1  loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :240 :17) // comparison of unknown type: endpointConfiguration == EndpointConfiguration.KPSPublicSoap
cond_br %4, ^1, ^2 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :240 :17)

^1: // JumpBlock
%5 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :242 :63) // "https://tckimlik.nvi.gov.tr/Service/KPSPublic.asmx" (StringLiteralExpression)
%6 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :242 :23) // new System.ServiceModel.EndpointAddress("https://tckimlik.nvi.gov.tr/Service/KPSPublic.asmx") (ObjectCreationExpression)
return %6 : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :242 :16)

^2: // BinaryBranchBlock
%7 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :244 :17) // Not a variable of known type: endpointConfiguration
%8 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :244 :42) // Not a variable of known type: EndpointConfiguration
%9 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :244 :42) // EndpointConfiguration.KPSPublicSoap12 (SimpleMemberAccessExpression)
%10 = cbde.unknown : i1  loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :244 :17) // comparison of unknown type: endpointConfiguration == EndpointConfiguration.KPSPublicSoap12
cond_br %10, ^3, ^4 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :244 :17)

^3: // JumpBlock
%11 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :246 :63) // "https://tckimlik.nvi.gov.tr/Service/KPSPublic.asmx" (StringLiteralExpression)
%12 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :246 :23) // new System.ServiceModel.EndpointAddress("https://tckimlik.nvi.gov.tr/Service/KPSPublic.asmx") (ObjectCreationExpression)
return %12 : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :246 :16)

^4: // JumpBlock
%13 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :248 :55) // string (PredefinedType)
%14 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :248 :69) // "Could not find endpoint with name \'{0}\'." (StringLiteralExpression)
%15 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :248 :115) // Not a variable of known type: endpointConfiguration
%16 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :248 :55) // string.Format("Could not find endpoint with name \'{0}\'.", endpointConfiguration) (InvocationExpression)
%17 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :248 :18) // new System.InvalidOperationException(string.Format("Could not find endpoint with name \'{0}\'.", endpointConfiguration)) (ObjectCreationExpression)
cbde.throw %17 :  none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Connected Services\\wsKPSPublic\\Reference.cs" :248 :12)

^5: // ExitBlock
cbde.unreachable

}
