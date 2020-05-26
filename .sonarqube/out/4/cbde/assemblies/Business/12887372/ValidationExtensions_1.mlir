// Skipping function IsCidValid(none), it contains poisonous unsupported syntaxes

func @_Business.ValidationRules.ValidationExtensions.AddChecksumToCid$long$(none) -> none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :16 :2) {
^entry (%_cidWithoutChecksum : none):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :16 :38)
cbde.store %_cidWithoutChecksum, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :16 :38)
br ^0

^0: // JumpBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ComputeCidChecksum
%1 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :18 :37) // Not a variable of known type: cidWithoutChecksum
%2 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :18 :18) // ComputeCidChecksum(cidWithoutChecksum) (InvocationExpression)
%4 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :19 :11) // Not a variable of known type: cidWithoutChecksum
%5 = constant 100 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :19 :32)
%6 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :19 :11) // Binary expression on unsupported types cidWithoutChecksum / 100
%7 = constant 100 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :19 :39)
%8 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :19 :10) // Binary expression on unsupported types (cidWithoutChecksum / 100) * 100
%9 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :19 :45) // Not a variable of known type: checksum
%10 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :19 :10) // Binary expression on unsupported types (cidWithoutChecksum / 100) * 100 + checksum
return %10 : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :19 :3)

^1: // ExitBlock
cbde.unreachable

}
func @_Business.ValidationRules.ValidationExtensions.IsCidValid$long$(none) -> i1 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :22 :2) {
^entry (%_citizenId : none):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :22 :32)
cbde.store %_citizenId, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :22 :32)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :24 :15) // Not a variable of known type: citizenId
%3 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :25 :15) // Not a variable of known type: TcNo
%4 = constant 100 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :25 :22)
%5 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :25 :15) // Binary expression on unsupported types TcNo / 100
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ComputeCidChecksum
%7 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :26 :37) // Not a variable of known type: citizenId
%8 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :26 :18) // ComputeCidChecksum(citizenId) (InvocationExpression)
%10 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :27 :22) // Not a variable of known type: ATCNO
%11 = constant 100 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :27 :30)
%12 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :27 :22) // Binary expression on unsupported types ATCNO * 100
%13 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :27 :36) // Not a variable of known type: checksum
%14 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :27 :22) // Binary expression on unsupported types ATCNO * 100 + checksum
%15 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :27 :49) // Not a variable of known type: TcNo
%16 = cbde.unknown : i1  loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :27 :21) // comparison of unknown type: (ATCNO * 100 + checksum) == TcNo
%17 = cbde.alloca i1 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :27 :7) // returnValue
cbde.store %16, %17 : memref<i1> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :27 :7)
%18 = cbde.load %17 : memref<i1> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :29 :10)
return %18 : i1 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :29 :3)

^1: // ExitBlock
cbde.unreachable

}
func @_Business.ValidationRules.ValidationExtensions.ComputeCidChecksum$long$(none) -> none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :32 :2) {
^entry (%_citizenId : none):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :32 :40)
cbde.store %_citizenId, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :32 :40)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :34 :15) // Not a variable of known type: citizenId
%16 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :37 :11) // Not a variable of known type: TcNo
%17 = constant 100 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :37 :18)
%18 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :37 :11) // Binary expression on unsupported types TcNo / 100
%19 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :37 :31) // Not a variable of known type: TcNo
%20 = constant 100 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :37 :38)
%21 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :37 :31) // Binary expression on unsupported types TcNo / 100
%22 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :37 :48) // Not a variable of known type: ATCNO
%23 = constant 10 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :37 :56)
%24 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :37 :48) // Binary expression on unsupported types ATCNO % 10
%25 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :37 :68) // Not a variable of known type: ATCNO
%26 = constant 10 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :37 :76)
%27 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :37 :68) // Binary expression on unsupported types ATCNO / 10
%28 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :37 :85) // Not a variable of known type: ATCNO
%29 = constant 10 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :37 :93)
%30 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :37 :85) // Binary expression on unsupported types ATCNO % 10
%31 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :37 :105) // Not a variable of known type: ATCNO
%32 = constant 10 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :37 :113)
%33 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :37 :105) // Binary expression on unsupported types ATCNO / 10
%34 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :38 :8) // Not a variable of known type: ATCNO
%35 = constant 10 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :38 :16)
%36 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :38 :8) // Binary expression on unsupported types ATCNO % 10
%37 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :38 :28) // Not a variable of known type: ATCNO
%38 = constant 10 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :38 :36)
%39 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :38 :28) // Binary expression on unsupported types ATCNO / 10
%40 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :38 :45) // Not a variable of known type: ATCNO
%41 = constant 10 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :38 :53)
%42 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :38 :45) // Binary expression on unsupported types ATCNO % 10
%43 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :38 :65) // Not a variable of known type: ATCNO
%44 = constant 10 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :38 :73)
%45 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :38 :65) // Binary expression on unsupported types ATCNO / 10
%46 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :38 :82) // Not a variable of known type: ATCNO
%47 = constant 10 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :38 :90)
%48 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :38 :82) // Binary expression on unsupported types ATCNO % 10
%49 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :38 :102) // Not a variable of known type: ATCNO
%50 = constant 10 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :38 :110)
%51 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :38 :102) // Binary expression on unsupported types ATCNO / 10
%52 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :39 :8) // Not a variable of known type: ATCNO
%53 = constant 10 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :39 :16)
%54 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :39 :8) // Binary expression on unsupported types ATCNO % 10
%55 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :39 :28) // Not a variable of known type: ATCNO
%56 = constant 10 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :39 :36)
%57 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :39 :28) // Binary expression on unsupported types ATCNO / 10
%58 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :39 :45) // Not a variable of known type: ATCNO
%59 = constant 10 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :39 :53)
%60 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :39 :45) // Binary expression on unsupported types ATCNO % 10
%61 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :39 :65) // Not a variable of known type: ATCNO
%62 = constant 10 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :39 :73)
%63 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :39 :65) // Binary expression on unsupported types ATCNO / 10
%64 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :39 :82) // Not a variable of known type: ATCNO
%65 = constant 10 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :39 :90)
%66 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :39 :82) // Binary expression on unsupported types ATCNO % 10
%67 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :39 :102) // Not a variable of known type: ATCNO
%68 = constant 10 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :39 :110)
%69 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :39 :102) // Binary expression on unsupported types ATCNO / 10
%70 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :40 :8) // Not a variable of known type: ATCNO
%71 = constant 10 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :40 :16)
%72 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :40 :8) // Binary expression on unsupported types ATCNO % 10
%73 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :40 :28) // Not a variable of known type: ATCNO
%74 = constant 10 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :40 :36)
%75 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :40 :28) // Binary expression on unsupported types ATCNO / 10
%76 = constant 10 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :41 :10)
%77 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :41 :19) // Not a variable of known type: C1
%78 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :41 :24) // Not a variable of known type: C3
%79 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :41 :19) // Binary expression on unsupported types C1 + C3
%80 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :41 :29) // Not a variable of known type: C5
%81 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :41 :19) // Binary expression on unsupported types C1 + C3 + C5
%82 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :41 :34) // Not a variable of known type: C7
%83 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :41 :19) // Binary expression on unsupported types C1 + C3 + C5 + C7
%84 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :41 :39) // Not a variable of known type: C9
%85 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :41 :19) // Binary expression on unsupported types C1 + C3 + C5 + C7 + C9
%86 = constant 3 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :41 :45)
%87 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :41 :18) // Binary expression on unsupported types (C1 + C3 + C5 + C7 + C9) * 3
%88 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :41 :51) // Not a variable of known type: C2
%89 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :41 :56) // Not a variable of known type: C4
%90 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :41 :51) // Binary expression on unsupported types C2 + C4
%91 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :41 :61) // Not a variable of known type: C6
%92 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :41 :51) // Binary expression on unsupported types C2 + C4 + C6
%93 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :41 :66) // Not a variable of known type: C8
%94 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :41 :51) // Binary expression on unsupported types C2 + C4 + C6 + C8
%95 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :41 :17) // Binary expression on unsupported types ((C1 + C3 + C5 + C7 + C9) * 3) + (C2 + C4 + C6 + C8)
%96 = constant 10 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :41 :73)
%97 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :41 :16) // Binary expression on unsupported types (((C1 + C3 + C5 + C7 + C9) * 3) + (C2 + C4 + C6 + C8)) % 10
%98 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :41 :10) // Binary expression on unsupported types 10 - ((((C1 + C3 + C5 + C7 + C9) * 3) + (C2 + C4 + C6 + C8)) % 10)
%99 = constant 10 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :41 :80)
%100 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :41 :9) // Binary expression on unsupported types (10 - ((((C1 + C3 + C5 + C7 + C9) * 3) + (C2 + C4 + C6 + C8)) % 10)) % 10
%101 = constant 10 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :42 :10)
%102 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :42 :20) // Not a variable of known type: C2
%103 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :42 :25) // Not a variable of known type: C4
%104 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :42 :20) // Binary expression on unsupported types C2 + C4
%105 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :42 :30) // Not a variable of known type: C6
%106 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :42 :20) // Binary expression on unsupported types C2 + C4 + C6
%107 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :42 :35) // Not a variable of known type: C8
%108 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :42 :20) // Binary expression on unsupported types C2 + C4 + C6 + C8
%109 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :42 :41) // Not a variable of known type: Q1
%110 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :42 :19) // Binary expression on unsupported types (C2 + C4 + C6 + C8) + Q1
%111 = constant 3 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :42 :47)
%112 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :42 :18) // Binary expression on unsupported types ((C2 + C4 + C6 + C8) + Q1) * 3
%113 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :42 :53) // Not a variable of known type: C1
%114 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :42 :58) // Not a variable of known type: C3
%115 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :42 :53) // Binary expression on unsupported types C1 + C3
%116 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :42 :63) // Not a variable of known type: C5
%117 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :42 :53) // Binary expression on unsupported types C1 + C3 + C5
%118 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :42 :68) // Not a variable of known type: C7
%119 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :42 :53) // Binary expression on unsupported types C1 + C3 + C5 + C7
%120 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :42 :73) // Not a variable of known type: C9
%121 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :42 :53) // Binary expression on unsupported types C1 + C3 + C5 + C7 + C9
%122 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :42 :17) // Binary expression on unsupported types (((C2 + C4 + C6 + C8) + Q1) * 3) + (C1 + C3 + C5 + C7 + C9)
%123 = constant 10 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :42 :80)
%124 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :42 :16) // Binary expression on unsupported types ((((C2 + C4 + C6 + C8) + Q1) * 3) + (C1 + C3 + C5 + C7 + C9)) % 10
%125 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :42 :10) // Binary expression on unsupported types 10 - (((((C2 + C4 + C6 + C8) + Q1) * 3) + (C1 + C3 + C5 + C7 + C9)) % 10)
%126 = constant 10 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :42 :87)
%127 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :42 :9) // Binary expression on unsupported types (10 - (((((C2 + C4 + C6 + C8) + Q1) * 3) + (C1 + C3 + C5 + C7 + C9)) % 10)) % 10
%128 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :43 :21) // Not a variable of known type: Q1
%129 = constant 10 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :43 :26)
%130 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :43 :21) // Binary expression on unsupported types Q1 * 10
%131 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :43 :31) // Not a variable of known type: Q2
%132 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :43 :21) // Binary expression on unsupported types Q1 * 10 + Q2
%134 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :45 :10) // Not a variable of known type: returnValue
return %134 : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :45 :3)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function IsPhoneValid(none), it contains poisonous unsupported syntaxes

