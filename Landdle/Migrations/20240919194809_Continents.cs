using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Landdle.Migrations
{
    /// <inheritdoc />
    public partial class Continents : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "ContinentId",
                table: "Country",
                type: "int",
                nullable: true);

            migrationBuilder.CreateTable(
                name: "Continent",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Name = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Continent", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "CountryContinent",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CountryId = table.Column<int>(type: "int", nullable: false),
                    ContinentId = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CountryContinent", x => x.Id);
                    table.ForeignKey(
                        name: "FK_CountryContinent_Continent_ContinentId",
                        column: x => x.ContinentId,
                        principalTable: "Continent",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_CountryContinent_Country_CountryId",
                        column: x => x.CountryId,
                        principalTable: "Country",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_Country_ContinentId",
                table: "Country",
                column: "ContinentId");

            migrationBuilder.CreateIndex(
                name: "IX_CountryContinent_ContinentId",
                table: "CountryContinent",
                column: "ContinentId");

            migrationBuilder.CreateIndex(
                name: "IX_CountryContinent_CountryId",
                table: "CountryContinent",
                column: "CountryId");

            migrationBuilder.AddForeignKey(
                name: "FK_Country_Continent_ContinentId",
                table: "Country",
                column: "ContinentId",
                principalTable: "Continent",
                principalColumn: "Id");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Country_Continent_ContinentId",
                table: "Country");

            migrationBuilder.DropTable(
                name: "CountryContinent");

            migrationBuilder.DropTable(
                name: "Continent");

            migrationBuilder.DropIndex(
                name: "IX_Country_ContinentId",
                table: "Country");

            migrationBuilder.DropColumn(
                name: "ContinentId",
                table: "Country");
        }
    }
}
