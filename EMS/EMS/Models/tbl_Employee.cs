namespace EMS.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class tbl_Employee
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public tbl_Employee()
        {
            tbl_EmployeeAddress = new HashSet<tbl_EmployeeAddress>();
        }

        public int id { get; set; }

        [Required]
        [StringLength(5)]
        public string empno { get; set; }

        [Required]
        [StringLength(50)]
        public string name { get; set; }

        [StringLength(50)]
        public string dept { get; set; }

        [StringLength(10)]
        public string contact { get; set; }

        [Required]
        [StringLength(50)]
        public string email { get; set; }

        public byte status { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tbl_EmployeeAddress> tbl_EmployeeAddress { get; set; }
    }
}
