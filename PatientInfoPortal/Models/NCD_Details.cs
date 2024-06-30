using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace PatientInfoPortal.Models
{
    public class NCD_Details
    {
        [Key]
        public int ID { get; set; }

        [ForeignKey("PatientInformationNew2")]
        public int PatientID { get; set; }
        public PatientInformation PatientInformationNew2 { get; set; }

        [ForeignKey("NCDNew2")]
        public int NCDID { get; set; }
        public NCD NCDNew2 { get; set; }
    }
}
