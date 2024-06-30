using System.ComponentModel.DataAnnotations;

namespace PatientInfoPortal.Models
{
    public class Allergies
    {
        [Key]
        public int ID { get; set; }
        public string AllergyName { get; set; }
    }
}
