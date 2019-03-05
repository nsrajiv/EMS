namespace EMS.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class tbl_EmployeeAddress
    {
        public int id { get; set; }

        public int employee_id { get; set; }

        public bool ispermanant { get; set; }

        [StringLength(500)]
        public string addressline1 { get; set; }

        [StringLength(500)]
        public string addressline2 { get; set; }

        public int? country { get; set; }

        public int? state { get; set; }

        public int? city { get; set; }

        [StringLength(50)]
        public string pin { get; set; }

        [StringLength(15)]
        public string contact { get; set; }

        public byte status { get; set; }

        public virtual tbl_city_master tbl_city_master { get; set; }

        public virtual tbl_country_master tbl_country_master { get; set; }

        public virtual tbl_Employee tbl_Employee { get; set; }

        public virtual tbl_state_master tbl_state_master { get; set; }
    }
}
