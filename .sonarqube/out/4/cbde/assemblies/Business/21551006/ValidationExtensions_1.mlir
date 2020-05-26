// Skipping function IsCidValid(none), it contains poisonous unsupported syntaxes

func @_Business.ValidationRules.ValidationExtensions.AddChecksumToCid$long$(none) -> none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :12 :8) {
^entry (%_cidWithoutChecksum : none):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :12 :44)
cbde.store %_cidWithoutChecksum, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :12 :44)
br ^0

^0: // JumpBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ComputeCidChecksum
%1 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :14 :46) // Not a variable of known type: cidWithoutChecksum
%2 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :14 :27) // ComputeCidChecksum(cidWithoutChecksum) (InvocationExpression)
%4 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :15 :20) // Not a variable of known type: cidWithoutChecksum
%5 = constant 100 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :15 :41)
%6 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :15 :20) // Binary expression on unsupported types cidWithoutChecksum / 100
%7 = constant 100 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :15 :48)
%8 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :15 :19) // Binary expression on unsupported types (cidWithoutChecksum / 100) * 100
%9 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :15 :54) // Not a variable of known type: checksum
%10 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :15 :19) // Binary expression on unsupported types (cidWithoutChecksum / 100) * 100 + checksum
return %10 : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :15 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_Business.ValidationRules.ValidationExtensions.IsCidValid$long$(none) -> i1 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :18 :8) {
^entry (%_citizenId : none):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :18 :38)
cbde.store %_citizenId, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :18 :38)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :20 :24) // Not a variable of known type: citizenId
%3 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :21 :24) // Not a variable of known type: TcNo
%4 = constant 100 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :21 :31)
%5 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :21 :24) // Binary expression on unsupported types TcNo / 100
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ComputeCidChecksum
%7 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :22 :46) // Not a variable of known type: citizenId
%8 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :22 :27) // ComputeCidChecksum(citizenId) (InvocationExpression)
%10 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :23 :31) // Not a variable of known type: ATCNO
%11 = constant 100 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :23 :39)
%12 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :23 :31) // Binary expression on unsupported types ATCNO * 100
%13 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :23 :45) // Not a variable of known type: checksum
%14 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :23 :31) // Binary expression on unsupported types ATCNO * 100 + checksum
%15 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :23 :58) // Not a variable of known type: TcNo
%16 = cbde.unknown : i1  loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :23 :30) // comparison of unknown type: (ATCNO * 100 + checksum) == TcNo
%17 = cbde.alloca i1 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :23 :16) // returnValue
cbde.store %16, %17 : memref<i1> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :23 :16)
%18 = cbde.load %17 : memref<i1> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :25 :19)
return %18 : i1 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :25 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_Business.ValidationRules.ValidationExtensions.ComputeCidChecksum$long$(none) -> none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :28 :8) {
^entry (%_citizenId : none):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :28 :46)
cbde.store %_citizenId, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :28 :46)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :30 :24) // Not a variable of known type: citizenId
%16 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :33 :20) // Not a variable of known type: TcNo
%17 = constant 100 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :33 :27)
%18 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :33 :20) // Binary expression on unsupported types TcNo / 100
%19 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :33 :40) // Not a variable of known type: TcNo
%20 = constant 100 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :33 :47)
%21 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :33 :40) // Binary expression on unsupported types TcNo / 100
%22 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :33 :57) // Not a variable of known type: ATCNO
%23 = constant 10 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :33 :65)
%24 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :33 :57) // Binary expression on unsupported types ATCNO % 10
%25 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :33 :77) // Not a variable of known type: ATCNO
%26 = constant 10 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :33 :85)
%27 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :33 :77) // Binary expression on unsupported types ATCNO / 10
%28 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :33 :94) // Not a variable of known type: ATCNO
%29 = constant 10 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :33 :102)
%30 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :33 :94) // Binary expression on unsupported types ATCNO % 10
%31 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :33 :114) // Not a variable of known type: ATCNO
%32 = constant 10 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :33 :122)
%33 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :33 :114) // Binary expression on unsupported types ATCNO / 10
%34 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :34 :17) // Not a variable of known type: ATCNO
%35 = constant 10 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :34 :25)
%36 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :34 :17) // Binary expression on unsupported types ATCNO % 10
%37 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :34 :37) // Not a variable of known type: ATCNO
%38 = constant 10 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :34 :45)
%39 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :34 :37) // Binary expression on unsupported types ATCNO / 10
%40 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :34 :54) // Not a variable of known type: ATCNO
%41 = constant 10 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :34 :62)
%42 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :34 :54) // Binary expression on unsupported types ATCNO % 10
%43 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :34 :74) // Not a variable of known type: ATCNO
%44 = constant 10 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :34 :82)
%45 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :34 :74) // Binary expression on unsupported types ATCNO / 10
%46 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :34 :91) // Not a variable of known type: ATCNO
%47 = constant 10 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :34 :99)
%48 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :34 :91) // Binary expression on unsupported types ATCNO % 10
%49 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :34 :111) // Not a variable of known type: ATCNO
%50 = constant 10 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :34 :119)
%51 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :34 :111) // Binary expression on unsupported types ATCNO / 10
%52 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :35 :17) // Not a variable of known type: ATCNO
%53 = constant 10 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :35 :25)
%54 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :35 :17) // Binary expression on unsupported types ATCNO % 10
%55 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :35 :37) // Not a variable of known type: ATCNO
%56 = constant 10 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :35 :45)
%57 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :35 :37) // Binary expression on unsupported types ATCNO / 10
%58 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :35 :54) // Not a variable of known type: ATCNO
%59 = constant 10 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :35 :62)
%60 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :35 :54) // Binary expression on unsupported types ATCNO % 10
%61 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :35 :74) // Not a variable of known type: ATCNO
%62 = constant 10 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :35 :82)
%63 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :35 :74) // Binary expression on unsupported types ATCNO / 10
%64 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :35 :91) // Not a variable of known type: ATCNO
%65 = constant 10 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :35 :99)
%66 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :35 :91) // Binary expression on unsupported types ATCNO % 10
%67 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :35 :111) // Not a variable of known type: ATCNO
%68 = constant 10 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :35 :119)
%69 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :35 :111) // Binary expression on unsupported types ATCNO / 10
%70 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :36 :17) // Not a variable of known type: ATCNO
%71 = constant 10 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :36 :25)
%72 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :36 :17) // Binary expression on unsupported types ATCNO % 10
%73 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :36 :37) // Not a variable of known type: ATCNO
%74 = constant 10 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :36 :45)
%75 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :36 :37) // Binary expression on unsupported types ATCNO / 10
%76 = constant 10 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :37 :19)
%77 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :37 :28) // Not a variable of known type: C1
%78 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :37 :33) // Not a variable of known type: C3
%79 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :37 :28) // Binary expression on unsupported types C1 + C3
%80 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :37 :38) // Not a variable of known type: C5
%81 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :37 :28) // Binary expression on unsupported types C1 + C3 + C5
%82 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :37 :43) // Not a variable of known type: C7
%83 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :37 :28) // Binary expression on unsupported types C1 + C3 + C5 + C7
%84 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :37 :48) // Not a variable of known type: C9
%85 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :37 :28) // Binary expression on unsupported types C1 + C3 + C5 + C7 + C9
%86 = constant 3 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :37 :54)
%87 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :37 :27) // Binary expression on unsupported types (C1 + C3 + C5 + C7 + C9) * 3
%88 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :37 :60) // Not a variable of known type: C2
%89 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :37 :65) // Not a variable of known type: C4
%90 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :37 :60) // Binary expression on unsupported types C2 + C4
%91 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :37 :70) // Not a variable of known type: C6
%92 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :37 :60) // Binary expression on unsupported types C2 + C4 + C6
%93 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :37 :75) // Not a variable of known type: C8
%94 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :37 :60) // Binary expression on unsupported types C2 + C4 + C6 + C8
%95 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :37 :26) // Binary expression on unsupported types ((C1 + C3 + C5 + C7 + C9) * 3) + (C2 + C4 + C6 + C8)
%96 = constant 10 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :37 :82)
%97 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :37 :25) // Binary expression on unsupported types (((C1 + C3 + C5 + C7 + C9) * 3) + (C2 + C4 + C6 + C8)) % 10
%98 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :37 :19) // Binary expression on unsupported types 10 - ((((C1 + C3 + C5 + C7 + C9) * 3) + (C2 + C4 + C6 + C8)) % 10)
%99 = constant 10 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :37 :89)
%100 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :37 :18) // Binary expression on unsupported types (10 - ((((C1 + C3 + C5 + C7 + C9) * 3) + (C2 + C4 + C6 + C8)) % 10)) % 10
%101 = constant 10 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :38 :19)
%102 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :38 :29) // Not a variable of known type: C2
%103 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :38 :34) // Not a variable of known type: C4
%104 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :38 :29) // Binary expression on unsupported types C2 + C4
%105 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :38 :39) // Not a variable of known type: C6
%106 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :38 :29) // Binary expression on unsupported types C2 + C4 + C6
%107 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :38 :44) // Not a variable of known type: C8
%108 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :38 :29) // Binary expression on unsupported types C2 + C4 + C6 + C8
%109 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :38 :50) // Not a variable of known type: Q1
%110 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :38 :28) // Binary expression on unsupported types (C2 + C4 + C6 + C8) + Q1
%111 = constant 3 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :38 :56)
%112 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :38 :27) // Binary expression on unsupported types ((C2 + C4 + C6 + C8) + Q1) * 3
%113 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :38 :62) // Not a variable of known type: C1
%114 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :38 :67) // Not a variable of known type: C3
%115 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :38 :62) // Binary expression on unsupported types C1 + C3
%116 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :38 :72) // Not a variable of known type: C5
%117 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :38 :62) // Binary expression on unsupported types C1 + C3 + C5
%118 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :38 :77) // Not a variable of known type: C7
%119 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :38 :62) // Binary expression on unsupported types C1 + C3 + C5 + C7
%120 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :38 :82) // Not a variable of known type: C9
%121 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :38 :62) // Binary expression on unsupported types C1 + C3 + C5 + C7 + C9
%122 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :38 :26) // Binary expression on unsupported types (((C2 + C4 + C6 + C8) + Q1) * 3) + (C1 + C3 + C5 + C7 + C9)
%123 = constant 10 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :38 :89)
%124 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :38 :25) // Binary expression on unsupported types ((((C2 + C4 + C6 + C8) + Q1) * 3) + (C1 + C3 + C5 + C7 + C9)) % 10
%125 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :38 :19) // Binary expression on unsupported types 10 - (((((C2 + C4 + C6 + C8) + Q1) * 3) + (C1 + C3 + C5 + C7 + C9)) % 10)
%126 = constant 10 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :38 :96)
%127 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :38 :18) // Binary expression on unsupported types (10 - (((((C2 + C4 + C6 + C8) + Q1) * 3) + (C1 + C3 + C5 + C7 + C9)) % 10)) % 10
%128 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :39 :30) // Not a variable of known type: Q1
%129 = constant 10 : i32 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :39 :35)
%130 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :39 :30) // Binary expression on unsupported types Q1 * 10
%131 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :39 :40) // Not a variable of known type: Q2
%132 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :39 :30) // Binary expression on unsupported types Q1 * 10 + Q2
%134 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :41 :19) // Not a variable of known type: returnValue
return %134 : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\Business\\Helpers\\ValidationExtensions.cs" :41 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function IsPhoneValid(none), it contains poisonous unsupported syntaxes

