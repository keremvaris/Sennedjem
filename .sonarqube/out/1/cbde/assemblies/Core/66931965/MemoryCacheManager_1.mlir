func @_Core.CrossCuttingConcerns.Caching.Microsoft.MemoryCacheManager.Add$string.object.int$(none, none, i32) -> () loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Caching\\Microsoft\\MemoryCacheManager.cs" :24 :4) {
^entry (%_key : none, %_data : none, %_duration : i32):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Caching\\Microsoft\\MemoryCacheManager.cs" :24 :20)
cbde.store %_key, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Caching\\Microsoft\\MemoryCacheManager.cs" :24 :20)
%1 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Caching\\Microsoft\\MemoryCacheManager.cs" :24 :32)
cbde.store %_data, %1 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Caching\\Microsoft\\MemoryCacheManager.cs" :24 :32)
%2 = cbde.alloca i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Caching\\Microsoft\\MemoryCacheManager.cs" :24 :45)
cbde.store %_duration, %2 : memref<i32> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Caching\\Microsoft\\MemoryCacheManager.cs" :24 :45)
br ^0

^0: // SimpleBlock
%3 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Caching\\Microsoft\\MemoryCacheManager.cs" :26 :6) // Not a variable of known type: _cache
%4 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Caching\\Microsoft\\MemoryCacheManager.cs" :26 :17) // Not a variable of known type: key
%5 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Caching\\Microsoft\\MemoryCacheManager.cs" :26 :22) // Not a variable of known type: data
// Entity from another assembly: TimeSpan
%6 = cbde.load %2 : memref<i32> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Caching\\Microsoft\\MemoryCacheManager.cs" :26 :49)
%7 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Caching\\Microsoft\\MemoryCacheManager.cs" :26 :28) // TimeSpan.FromMinutes(duration) (InvocationExpression)
%8 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Caching\\Microsoft\\MemoryCacheManager.cs" :26 :6) // _cache.Set(key, data, TimeSpan.FromMinutes(duration)) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_Core.CrossCuttingConcerns.Caching.Microsoft.MemoryCacheManager.Get$T$$string$(none) -> none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Caching\\Microsoft\\MemoryCacheManager.cs" :29 :4) {
^entry (%_key : none):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Caching\\Microsoft\\MemoryCacheManager.cs" :29 :20)
cbde.store %_key, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Caching\\Microsoft\\MemoryCacheManager.cs" :29 :20)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Caching\\Microsoft\\MemoryCacheManager.cs" :31 :13) // Not a variable of known type: _cache
%2 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Caching\\Microsoft\\MemoryCacheManager.cs" :31 :27) // Not a variable of known type: key
%3 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Caching\\Microsoft\\MemoryCacheManager.cs" :31 :13) // _cache.Get<T>(key) (InvocationExpression)
return %3 : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Caching\\Microsoft\\MemoryCacheManager.cs" :31 :6)

^1: // ExitBlock
cbde.unreachable

}
func @_Core.CrossCuttingConcerns.Caching.Microsoft.MemoryCacheManager.Get$string$(none) -> none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Caching\\Microsoft\\MemoryCacheManager.cs" :34 :4) {
^entry (%_key : none):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Caching\\Microsoft\\MemoryCacheManager.cs" :34 :22)
cbde.store %_key, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Caching\\Microsoft\\MemoryCacheManager.cs" :34 :22)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Caching\\Microsoft\\MemoryCacheManager.cs" :36 :13) // Not a variable of known type: _cache
%2 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Caching\\Microsoft\\MemoryCacheManager.cs" :36 :24) // Not a variable of known type: key
%3 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Caching\\Microsoft\\MemoryCacheManager.cs" :36 :13) // _cache.Get(key) (InvocationExpression)
return %3 : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Caching\\Microsoft\\MemoryCacheManager.cs" :36 :6)

^1: // ExitBlock
cbde.unreachable

}
func @_Core.CrossCuttingConcerns.Caching.Microsoft.MemoryCacheManager.IsAdd$string$(none) -> i1 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Caching\\Microsoft\\MemoryCacheManager.cs" :39 :4) {
^entry (%_key : none):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Caching\\Microsoft\\MemoryCacheManager.cs" :39 :22)
cbde.store %_key, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Caching\\Microsoft\\MemoryCacheManager.cs" :39 :22)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Caching\\Microsoft\\MemoryCacheManager.cs" :41 :13) // Not a variable of known type: _cache
%2 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Caching\\Microsoft\\MemoryCacheManager.cs" :41 :32) // Not a variable of known type: key
// Entity from another assembly: _
%3 = cbde.unknown : i1 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Caching\\Microsoft\\MemoryCacheManager.cs" :41 :13) // _cache.TryGetValue(key, out _) (InvocationExpression)
return %3 : i1 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Caching\\Microsoft\\MemoryCacheManager.cs" :41 :6)

^1: // ExitBlock
cbde.unreachable

}
func @_Core.CrossCuttingConcerns.Caching.Microsoft.MemoryCacheManager.Remove$string$(none) -> () loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Caching\\Microsoft\\MemoryCacheManager.cs" :44 :4) {
^entry (%_key : none):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Caching\\Microsoft\\MemoryCacheManager.cs" :44 :23)
cbde.store %_key, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Caching\\Microsoft\\MemoryCacheManager.cs" :44 :23)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Caching\\Microsoft\\MemoryCacheManager.cs" :46 :6) // Not a variable of known type: _cache
%2 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Caching\\Microsoft\\MemoryCacheManager.cs" :46 :20) // Not a variable of known type: key
%3 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\CrossCuttingConcerns\\Caching\\Microsoft\\MemoryCacheManager.cs" :46 :6) // _cache.Remove(key) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function RemoveByPattern(none), it contains poisonous unsupported syntaxes

