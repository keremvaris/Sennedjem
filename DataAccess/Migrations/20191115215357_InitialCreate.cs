using System;
using Microsoft.EntityFrameworkCore.Migrations;
using Npgsql.EntityFrameworkCore.PostgreSQL.Metadata;

namespace DataAccess.Migrations {
    public partial class InitialCreate : Migration {
        protected override void Up (MigrationBuilder migrationBuilder) {
            migrationBuilder.CreateTable (
                name: "Categories",
                columns : table => new {
                    CategoryId = table.Column<int> (nullable: false)
                        .Annotation ("Npgsql:ValueGenerationStrategy", NpgsqlValueGenerationStrategy.IdentityByDefaultColumn),
                        CategoryName = table.Column<string> (nullable: true)
                },
                constraints : table => {
                    table.PrimaryKey ("PK_Categories", x => x.CategoryId);
                });

            migrationBuilder.CreateTable (
                name: "Logs",
                columns : table => new {
                    Id = table.Column<int> (nullable: false)
                        .Annotation ("Npgsql:ValueGenerationStrategy", NpgsqlValueGenerationStrategy.IdentityByDefaultColumn),
                        LogDetail = table.Column<string> (nullable: true),
                        Date = table.Column<DateTime> (nullable: false),
                        Audit = table.Column<string> (nullable: true)
                },
                constraints : table => {
                    table.PrimaryKey ("PK_Logs", x => x.Id);
                });

            migrationBuilder.CreateTable (
                name: "OperationClaims",
                columns : table => new {
                    Id = table.Column<int> (nullable: false)
                        .Annotation ("Npgsql:ValueGenerationStrategy", NpgsqlValueGenerationStrategy.IdentityByDefaultColumn),
                        Name = table.Column<string> (nullable: true)
                },
                constraints : table => {
                    table.PrimaryKey ("PK_OperationClaims", x => x.Id);
                });

            migrationBuilder.CreateTable (
                name: "Products",
                columns : table => new {
                    ProductID = table.Column<int> (nullable: false)
                        .Annotation ("Npgsql:ValueGenerationStrategy", NpgsqlValueGenerationStrategy.IdentityByDefaultColumn),
                        ProductName = table.Column<string> (nullable: true),
                        CategoryId = table.Column<int> (nullable: false),
                        QuantityPerUnit = table.Column<string> (nullable: true),
                        UnitPrice = table.Column<decimal> (nullable: false),
                        UnitsInStock = table.Column<short> (nullable: false)
                },
                constraints : table => {
                    table.PrimaryKey ("PK_Products", x => x.ProductID);
                });

            migrationBuilder.CreateTable (
                name: "UserOperationClaims",
                columns : table => new {
                    Id = table.Column<int> (nullable: false)
                        .Annotation ("Npgsql:ValueGenerationStrategy", NpgsqlValueGenerationStrategy.IdentityByDefaultColumn),
                        UserId = table.Column<int> (nullable: false),
                        OperationClaimId = table.Column<int> (nullable: false)
                },
                constraints : table => {
                    table.PrimaryKey ("PK_UserOperationClaims", x => x.Id);
                });

            migrationBuilder.CreateTable (
                name: "Users",
                columns : table => new {
                    Id = table.Column<int> (nullable: false)
                        .Annotation ("Npgsql:ValueGenerationStrategy", NpgsqlValueGenerationStrategy.IdentityByDefaultColumn),
                        FirstName = table.Column<string> (nullable: true),
                        LastName = table.Column<string> (nullable: true),
                        Email = table.Column<string> (nullable: true),
                        PasswordSalt = table.Column<byte[]> (nullable: true),
                        PasswordHash = table.Column<byte[]> (nullable: true),
                        Status = table.Column<bool> (nullable: false)
                },
                constraints : table => {
                    table.PrimaryKey ("PK_Users", x => x.Id);
                });
        }

        protected override void Down (MigrationBuilder migrationBuilder) {
            migrationBuilder.DropTable (
                name: "Categories");

            migrationBuilder.DropTable (
                name: "Logs");

            migrationBuilder.DropTable (
                name: "OperationClaims");

            migrationBuilder.DropTable (
                name: "Products");

            migrationBuilder.DropTable (
                name: "UserOperationClaims");

            migrationBuilder.DropTable (
                name: "Users");
        }
    }
}