func @_DataAccess.Migrations.Pg.Login.Up$Microsoft.EntityFrameworkCore.Migrations.MigrationBuilder$(none) -> () loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\DataAccess\\Migrations\\Pg\\20200525163436_Login.cs" :6 :8) {
^entry (%_migrationBuilder : none):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\DataAccess\\Migrations\\Pg\\20200525163436_Login.cs" :6 :35)
cbde.store %_migrationBuilder, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\DataAccess\\Migrations\\Pg\\20200525163436_Login.cs" :6 :35)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\DataAccess\\Migrations\\Pg\\20200525163436_Login.cs" :8 :12) // Not a variable of known type: migrationBuilder
%2 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\DataAccess\\Migrations\\Pg\\20200525163436_Login.cs" :9 :22) // "PasswordHash" (StringLiteralExpression)
%3 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\DataAccess\\Migrations\\Pg\\20200525163436_Login.cs" :10 :23) // "Users" (StringLiteralExpression)
%4 = constant 1 : i1 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\DataAccess\\Migrations\\Pg\\20200525163436_Login.cs" :11 :26) // true
%5 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\DataAccess\\Migrations\\Pg\\20200525163436_Login.cs" :8 :12) // migrationBuilder.AddColumn<byte[]>(                  name: "PasswordHash",                  table: "Users",                  nullable: true) (InvocationExpression)
%6 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\DataAccess\\Migrations\\Pg\\20200525163436_Login.cs" :13 :12) // Not a variable of known type: migrationBuilder
%7 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\DataAccess\\Migrations\\Pg\\20200525163436_Login.cs" :14 :22) // "PasswordSalt" (StringLiteralExpression)
%8 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\DataAccess\\Migrations\\Pg\\20200525163436_Login.cs" :15 :23) // "Users" (StringLiteralExpression)
%9 = constant 1 : i1 loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\DataAccess\\Migrations\\Pg\\20200525163436_Login.cs" :16 :26) // true
%10 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\DataAccess\\Migrations\\Pg\\20200525163436_Login.cs" :13 :12) // migrationBuilder.AddColumn<byte[]>(                  name: "PasswordSalt",                  table: "Users",                  nullable: true) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_DataAccess.Migrations.Pg.Login.Down$Microsoft.EntityFrameworkCore.Migrations.MigrationBuilder$(none) -> () loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\DataAccess\\Migrations\\Pg\\20200525163436_Login.cs" :19 :8) {
^entry (%_migrationBuilder : none):
%0 = cbde.alloca none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\DataAccess\\Migrations\\Pg\\20200525163436_Login.cs" :19 :37)
cbde.store %_migrationBuilder, %0 : memref<none> loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\DataAccess\\Migrations\\Pg\\20200525163436_Login.cs" :19 :37)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\DataAccess\\Migrations\\Pg\\20200525163436_Login.cs" :21 :12) // Not a variable of known type: migrationBuilder
%2 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\DataAccess\\Migrations\\Pg\\20200525163436_Login.cs" :22 :22) // "PasswordHash" (StringLiteralExpression)
%3 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\DataAccess\\Migrations\\Pg\\20200525163436_Login.cs" :23 :23) // "Users" (StringLiteralExpression)
%4 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\DataAccess\\Migrations\\Pg\\20200525163436_Login.cs" :21 :12) // migrationBuilder.DropColumn(                  name: "PasswordHash",                  table: "Users") (InvocationExpression)
%5 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\DataAccess\\Migrations\\Pg\\20200525163436_Login.cs" :25 :12) // Not a variable of known type: migrationBuilder
%6 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\DataAccess\\Migrations\\Pg\\20200525163436_Login.cs" :26 :22) // "PasswordSalt" (StringLiteralExpression)
%7 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\DataAccess\\Migrations\\Pg\\20200525163436_Login.cs" :27 :23) // "Users" (StringLiteralExpression)
%8 = cbde.unknown : none loc("E:\\src\\NewGenSource\\NorthwindBackend\\Sennedjem\\DataAccess\\Migrations\\Pg\\20200525163436_Login.cs" :25 :12) // migrationBuilder.DropColumn(                  name: "PasswordSalt",                  table: "Users") (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
