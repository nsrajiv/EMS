namespace EMS.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class tbl_state_master
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public tbl_state_master()
        {
            tbl_city_master = new HashSet<tbl_city_master>();
            tbl_EmployeeAddress = new HashSet<tbl_EmployeeAddress>();
        }

        public int id { get; set; }

        public int country_id { get; set; }

        [Required]
        [StringLength(3)]
        public string code { get; set; }

        [Required]
        [StringLength(50)]
        public string name { get; set; }

        public byte status { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tbl_city_master> tbl_city_master { get; set; }

        public virtual tbl_country_master tbl_country_master { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tbl_EmployeeAddress> tbl_EmployeeAddress { get; set; }
    }
}
