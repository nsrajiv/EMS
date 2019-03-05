namespace EMS.Models
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class ModelEMS : DbContext
    {
        public ModelEMS()
            : base("name=ModelEMS")
        {
        }

        public virtual DbSet<tbl_city_master> tbl_city_master { get; set; }
        public virtual DbSet<tbl_country_master> tbl_country_master { get; set; }
        public virtual DbSet<tbl_Employee> tbl_Employee { get; set; }
        public virtual DbSet<tbl_EmployeeAddress> tbl_EmployeeAddress { get; set; }
        public virtual DbSet<tbl_state_master> tbl_state_master { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<tbl_city_master>()
                .Property(e => e.code)
                .IsUnicode(false);

            modelBuilder.Entity<tbl_city_master>()
                .Property(e => e.name)
                .IsUnicode(false);

            modelBuilder.Entity<tbl_city_master>()
                .HasMany(e => e.tbl_EmployeeAddress)
                .WithOptional(e => e.tbl_city_master)
                .HasForeignKey(e => e.city);

            modelBuilder.Entity<tbl_country_master>()
                .Property(e => e.code)
                .IsUnicode(false);

            modelBuilder.Entity<tbl_country_master>()
                .Property(e => e.name)
                .IsUnicode(false);

            modelBuilder.Entity<tbl_country_master>()
                .HasMany(e => e.tbl_city_master)
                .WithRequired(e => e.tbl_country_master)
                .HasForeignKey(e => e.country_id)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<tbl_country_master>()
                .HasMany(e => e.tbl_EmployeeAddress)
                .WithOptional(e => e.tbl_country_master)
                .HasForeignKey(e => e.country);

            modelBuilder.Entity<tbl_country_master>()
                .HasMany(e => e.tbl_state_master)
                .WithRequired(e => e.tbl_country_master)
                .HasForeignKey(e => e.country_id)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<tbl_Employee>()
                .Property(e => e.empno)
                .IsUnicode(false);

            modelBuilder.Entity<tbl_Employee>()
                .Property(e => e.name)
                .IsUnicode(false);

            modelBuilder.Entity<tbl_Employee>()
                .Property(e => e.dept)
                .IsUnicode(false);

            modelBuilder.Entity<tbl_Employee>()
                .Property(e => e.contact)
                .IsUnicode(false);

            modelBuilder.Entity<tbl_Employee>()
                .Property(e => e.email)
                .IsUnicode(false);

            modelBuilder.Entity<tbl_Employee>()
                .HasMany(e => e.tbl_EmployeeAddress)
                .WithRequired(e => e.tbl_Employee)
                .HasForeignKey(e => e.employee_id)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<tbl_EmployeeAddress>()
                .Property(e => e.addressline1)
                .IsUnicode(false);

            modelBuilder.Entity<tbl_EmployeeAddress>()
                .Property(e => e.addressline2)
                .IsUnicode(false);

            modelBuilder.Entity<tbl_EmployeeAddress>()
                .Property(e => e.pin)
                .IsUnicode(false);

            modelBuilder.Entity<tbl_EmployeeAddress>()
                .Property(e => e.contact)
                .IsUnicode(false);

            modelBuilder.Entity<tbl_state_master>()
                .Property(e => e.code)
                .IsUnicode(false);

            modelBuilder.Entity<tbl_state_master>()
                .Property(e => e.name)
                .IsUnicode(false);

            modelBuilder.Entity<tbl_state_master>()
                .HasMany(e => e.tbl_city_master)
                .WithRequired(e => e.tbl_state_master)
                .HasForeignKey(e => e.state_id)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<tbl_state_master>()
                .HasMany(e => e.tbl_EmployeeAddress)
                .WithOptional(e => e.tbl_state_master)
                .HasForeignKey(e => e.state);
        }
    }
}
