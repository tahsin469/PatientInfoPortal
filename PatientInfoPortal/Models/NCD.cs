
using System.ComponentModel.DataAnnotations;

namespace PatientInfoPortal.Models
{
    public class NCD
    {
        [Key]
        public int ID { get; set; }
        public string NCDName { get; set; }
    }
}
