using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace PatientInfoPortal.Models
{
    public class Allergies_Details
    {
        [Key]
        public int ID { get; set; }

        [ForeignKey("PatientInformationNew1")]
        public int PatientID { get; set; }
        public PatientInformation PatientInformationNew1 { get; set; }

        [ForeignKey("AllergiesNew1")]
        public int AllergiesID { get; set; }
        public Allergies AllergiesNew1 { get; set; }
    }
}
