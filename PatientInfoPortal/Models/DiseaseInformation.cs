using System.ComponentModel.DataAnnotations;

namespace PatientInfoPortal.Models
{
    public class DiseaseInformation
    {
        [Key]
        public int ID { get; set; }
        public string DiseaseName { get; set; }
    }
}
