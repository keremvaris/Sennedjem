func @_Core.Extensions.DateTimeExtensions.ToPrettyDate$System.DateTime.System.Globalization.CultureInfo$(none, none) -> none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\DateTimeExtensions.cs" :7 :4) {
^entry (%_date : none, %_culture : none):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\DateTimeExtensions.cs" :7 :38)
cbde.store %_date, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\DateTimeExtensions.cs" :7 :38)
%1 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\DateTimeExtensions.cs" :7 :58)
cbde.store %_culture, %1 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\DateTimeExtensions.cs" :7 :58)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\DateTimeExtensions.cs" :9 :10) // Not a variable of known type: culture
%3 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\DateTimeExtensions.cs" :9 :21) // null (NullLiteralExpression)
%4 = cbde.unknown : i1  loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\DateTimeExtensions.cs" :9 :10) // comparison of unknown type: culture == null
cond_br %4, ^1, ^2 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\DateTimeExtensions.cs" :9 :10)

^1: // JumpBlock
%5 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\DateTimeExtensions.cs" :11 :40) // nameof(culture) (InvocationExpression)
%6 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\DateTimeExtensions.cs" :11 :14) // new ArgumentNullException(nameof(culture)) (ObjectCreationExpression)
cbde.throw %6 :  none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\DateTimeExtensions.cs" :11 :8)

^2: // JumpBlock
%7 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\DateTimeExtensions.cs" :14 :13) // Not a variable of known type: date
%8 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\DateTimeExtensions.cs" :14 :27) // "yyyyMMdd" (StringLiteralExpression)
%9 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\DateTimeExtensions.cs" :14 :39) // Not a variable of known type: culture
%10 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\DateTimeExtensions.cs" :14 :13) // date.ToString("yyyyMMdd", culture) (InvocationExpression)
return %10 : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Extensions\\DateTimeExtensions.cs" :14 :6)

^3: // ExitBlock
cbde.unreachable

}
