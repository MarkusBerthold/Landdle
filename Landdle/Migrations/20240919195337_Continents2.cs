using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Landdle.Migrations
{
    /// <inheritdoc />
    public partial class Continents2 : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Country_Continent_ContinentId",
                table: "Country");

            migrationBuilder.DropIndex(
                name: "IX_Country_ContinentId",
                table: "Country");

            migrationBuilder.DropColumn(
                name: "ContinentId",
                table: "Country");

            migrationBuilder.CreateTable(
                name: "ContinentCountry",
                columns: table => new
                {
                    ContinentsId = table.Column<int>(type: "int", nullable: false),
                    CountriesId = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ContinentCountry", x => new { x.ContinentsId, x.CountriesId });
                    table.ForeignKey(
                        name: "FK_ContinentCountry_Continent_ContinentsId",
                        column: x => x.ContinentsId,
                        principalTable: "Continent",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_ContinentCountry_Country_CountriesId",
                        column: x => x.CountriesId,
                        principalTable: "Country",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_ContinentCountry_CountriesId",
                table: "ContinentCountry",
                column: "CountriesId");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "ContinentCountry");

            migrationBuilder.AddColumn<int>(
                name: "ContinentId",
                table: "Country",
                type: "int",
                nullable: true);

            migrationBuilder.CreateIndex(
                name: "IX_Country_ContinentId",
                table: "Country",
                column: "ContinentId");

            migrationBuilder.AddForeignKey(
                name: "FK_Country_Continent_ContinentId",
                table: "Country",
                column: "ContinentId",
                principalTable: "Continent",
                principalColumn: "Id");
        }
    }
}
