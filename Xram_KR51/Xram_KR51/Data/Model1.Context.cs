﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Xram_KR51.Data
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class KR_5_XRAMEntities : DbContext
    {
        public KR_5_XRAMEntities()
            : base("name=KR_5_XRAMEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<id_doljnost> id_doljnost { get; set; }
        public virtual DbSet<id_Pol> id_Pol { get; set; }
        public virtual DbSet<User> User { get; set; }
    }
}