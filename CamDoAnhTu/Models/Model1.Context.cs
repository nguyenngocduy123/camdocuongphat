﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CamDoAnhTu.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Entity.Core.Objects;
    using System.Linq;
    
    public partial class CamdoAnhTuEntities1 : DbContext
    {
        public CamdoAnhTuEntities1()
            : base("name=CamdoAnhTuEntities1")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Customer> Customers { get; set; }
        public virtual DbSet<history> histories { get; set; }
        public virtual DbSet<Loan> Loans { get; set; }
        public virtual DbSet<User> Users { get; set; }
    
        public virtual ObjectResult<GetCustomerEven_Result> GetCustomerEven()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<GetCustomerEven_Result>("GetCustomerEven");
        }
    
        public virtual ObjectResult<GetCustomerOdd_Result> GetCustomerOdd()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<GetCustomerOdd_Result>("GetCustomerOdd");
        }
    }
}
