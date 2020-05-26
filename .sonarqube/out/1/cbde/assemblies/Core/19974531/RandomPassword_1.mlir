func @_Core.Utilities.Toolkit.RandomPassword.CreateRandomPassword$int$(i32) -> none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :6 :8) {
^entry (%_length : i32):
%0 = cbde.alloca i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :6 :50)
cbde.store %_length, %0 : memref<i32> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :6 :50)
br ^0

^0: // ForInitializerBlock
%1 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :9 :32) // "ABCDEFGHJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*?_-" (StringLiteralExpression)
%3 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :10 :25) // new Random() (ObjectCreationExpression)
%5 = cbde.load %0 : memref<i32> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :14 :36)
%6 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :14 :31) // char[length] (ArrayType)
%7 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :14 :27) // new char[length] (ArrayCreationExpression)
%9 = constant 0 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :15 :25)
%10 = cbde.alloca i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :15 :21) // i
cbde.store %9, %10 : memref<i32> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :15 :21)
br ^1

^1: // BinaryBranchBlock
%11 = cbde.load %10 : memref<i32> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :15 :28)
%12 = cbde.load %0 : memref<i32> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :15 :32)
%13 = cmpi "slt", %11, %12 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :15 :28)
cond_br %13, ^2, ^3 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :15 :28)

^2: // SimpleBlock
%14 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :17 :16) // Not a variable of known type: chars
%15 = cbde.load %10 : memref<i32> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :17 :22)
%16 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :17 :16) // chars[i] (ElementAccessExpression)
%17 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :17 :27) // Not a variable of known type: validChars
%18 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :17 :38) // Not a variable of known type: random
%19 = constant 0 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :17 :50)
%20 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :17 :53) // Not a variable of known type: validChars
%21 = cbde.unknown : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :17 :53) // validChars.Length (SimpleMemberAccessExpression)
%22 = cbde.unknown : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :17 :38) // random.Next(0, validChars.Length) (InvocationExpression)
%23 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :17 :27) // validChars[random.Next(0, validChars.Length)] (ElementAccessExpression)
br ^4

^4: // SimpleBlock
%24 = cbde.load %10 : memref<i32> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :15 :40)
%25 = constant 1 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :15 :40)
%26 = addi %24, %25 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :15 :40)
cbde.store %26, %10 : memref<i32> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :15 :40)
br ^1

^3: // JumpBlock
%27 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :19 :30) // Not a variable of known type: chars
%28 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :19 :19) // new string(chars) (ObjectCreationExpression)
return %28 : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :19 :12)

^5: // ExitBlock
cbde.unreachable

}
func @_Core.Utilities.Toolkit.RandomPassword.RandomNumberGenerator$int.int$(i32, i32) -> i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :22 :8) {
^entry (%_min : i32, %_max : i32):
%0 = cbde.alloca i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :22 :48)
cbde.store %_min, %0 : memref<i32> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :22 :48)
%1 = cbde.alloca i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :22 :66)
cbde.store %_max, %1 : memref<i32> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :22 :66)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :24 :25) // new Random() (ObjectCreationExpression)
%4 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :25 :19) // Not a variable of known type: random
%5 = cbde.load %0 : memref<i32> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :25 :31)
%6 = cbde.load %1 : memref<i32> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :25 :36)
%7 = cbde.unknown : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :25 :19) // random.Next(min, max) (InvocationExpression)
return %7 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :25 :12)

^1: // ExitBlock
cbde.unreachable

}
