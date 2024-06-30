using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Collections.Generic;

namespace PatientInfoPortal.Models
{
    public class PatientInformation
    {
        [Key]
        public int ID { get; set; }

        public string Name { get; set; }

        public DateTime DateOfBirth { get; set; }

        // Foreign Key for DiseaseInformation
        [ForeignKey("DiseaseInformation")]
        public int DiseaseInformationID { get; set; }
        public DiseaseInformation DiseaseInformation { get; set; }

        // Foreign Key for NCD
        [ForeignKey("NCD")]
        public int NCDID { get; set; }
        public NCD NCD { get; set; }

        // Foreign Key for Allergies
        [ForeignKey("Allergies")]
        public int AllergiesID { get; set; }
        public Allergies Allergies { get; set; }

        public ICollection<NCD_Details> NCD_Details { get; set; }
        public ICollection<Allergies_Details> Allergies_Details { get; set; }

    }
}
