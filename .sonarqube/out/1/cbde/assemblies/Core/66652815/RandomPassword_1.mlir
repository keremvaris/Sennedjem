func @_Core.Utilities.Toolkit.RandomPassword.CreateRandomPassword$int$(i32) -> none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :8 :8) {
^entry (%_length : i32):
%0 = cbde.alloca i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :8 :50)
cbde.store %_length, %0 : memref<i32> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :8 :50)
br ^0

^0: // ForInitializerBlock
%1 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :11 :32) // "ABCDEFGHJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*?_-" (StringLiteralExpression)
%3 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :12 :25) // new Random() (ObjectCreationExpression)
%5 = cbde.load %0 : memref<i32> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :16 :36)
%6 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :16 :31) // char[length] (ArrayType)
%7 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :16 :27) // new char[length] (ArrayCreationExpression)
%9 = constant 0 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :17 :25)
%10 = cbde.alloca i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :17 :21) // i
cbde.store %9, %10 : memref<i32> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :17 :21)
br ^1

^1: // BinaryBranchBlock
%11 = cbde.load %10 : memref<i32> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :17 :28)
%12 = cbde.load %0 : memref<i32> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :17 :32)
%13 = cmpi "slt", %11, %12 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :17 :28)
cond_br %13, ^2, ^3 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :17 :28)

^2: // SimpleBlock
%14 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :19 :16) // Not a variable of known type: chars
%15 = cbde.load %10 : memref<i32> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :19 :22)
%16 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :19 :16) // chars[i] (ElementAccessExpression)
%17 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :19 :27) // Not a variable of known type: validChars
%18 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :19 :38) // Not a variable of known type: random
%19 = constant 0 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :19 :50)
%20 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :19 :53) // Not a variable of known type: validChars
%21 = cbde.unknown : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :19 :53) // validChars.Length (SimpleMemberAccessExpression)
%22 = cbde.unknown : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :19 :38) // random.Next(0, validChars.Length) (InvocationExpression)
%23 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :19 :27) // validChars[random.Next(0, validChars.Length)] (ElementAccessExpression)
br ^4

^4: // SimpleBlock
%24 = cbde.load %10 : memref<i32> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :17 :40)
%25 = constant 1 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :17 :40)
%26 = addi %24, %25 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :17 :40)
cbde.store %26, %10 : memref<i32> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :17 :40)
br ^1

^3: // JumpBlock
%27 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :21 :30) // Not a variable of known type: chars
%28 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :21 :19) // new string(chars) (ObjectCreationExpression)
return %28 : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :21 :12)

^5: // ExitBlock
cbde.unreachable

}
func @_Core.Utilities.Toolkit.RandomPassword.RandomNumberGenerator$int.int$(i32, i32) -> i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :24 :8) {
^entry (%_min : i32, %_max : i32):
%0 = cbde.alloca i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :24 :48)
cbde.store %_min, %0 : memref<i32> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :24 :48)
%1 = cbde.alloca i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :24 :66)
cbde.store %_max, %1 : memref<i32> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :24 :66)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :26 :25) // new Random() (ObjectCreationExpression)
%4 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :27 :19) // Not a variable of known type: random
%5 = cbde.load %0 : memref<i32> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :27 :31)
%6 = cbde.load %1 : memref<i32> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :27 :36)
%7 = cbde.unknown : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :27 :19) // random.Next(min, max) (InvocationExpression)
return %7 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Core\\Utilities\\Toolkit\\RandomPassword.cs" :27 :12)

^1: // ExitBlock
cbde.unreachable

}
