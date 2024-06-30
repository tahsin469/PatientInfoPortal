using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace PatientInfoPortal.Migrations
{
    public partial class InitialCreateAllergies_Details : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
    name: "Allergies_Detailss",
    columns: table => new
    {
        ID = table.Column<int>(type: "int", nullable: false)
            .Annotation("SqlServer:Identity", "1, 1"),
        PatientID = table.Column<int>(type: "int", nullable: false),
        AllergiesID = table.Column<int>(type: "int", nullable: false)
    },
    constraints: table =>
    {
        table.PrimaryKey("PK_Allergies_Detailss", x => x.ID);
        table.ForeignKey(
            name: "FK_Allergies_Detailss_Allergies_AllergiesID",
            column: x => x.AllergiesID,
            principalTable: "Allergies",
            principalColumn: "ID",
            onDelete: ReferentialAction.Cascade); // Keep this cascade if needed
        table.ForeignKey(
            name: "FK_Allergies_Detailss_Patients_PatientID",
            column: x => x.PatientID,
            principalTable: "Patients",
            principalColumn: "ID",
            onDelete: ReferentialAction.Restrict); // Change to NO ACTION or RESTRICT
    });

            migrationBuilder.CreateIndex(
                name: "IX_Allergies_Detailss_AllergiesID",
                table: "Allergies_Detailss",
                column: "AllergiesID");

            migrationBuilder.CreateIndex(
                name: "IX_Allergies_Detailss_PatientID",
                table: "Allergies_Detailss",
                column: "PatientID");

        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Allergies_Detailss");
        }
    }
}
