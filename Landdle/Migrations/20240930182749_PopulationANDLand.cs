using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Landdle.Migrations
{
    /// <inheritdoc />
    public partial class PopulationANDLand : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "LandKM2",
                table: "Country",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<int>(
                name: "Population",
                table: "Country",
                type: "int",
                nullable: false,
                defaultValue: 0);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "LandKM2",
                table: "Country");

            migrationBuilder.DropColumn(
                name: "Population",
                table: "Country");
        }
    }
}
