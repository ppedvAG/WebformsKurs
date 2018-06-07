namespace WebformsBGH.Modul09
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class DBModel : DbContext
    {
        public DBModel()
            : base("name=DBModel")
        {
        }

        public virtual DbSet<Personen> Personen { get; set; }
        public virtual DbSet<ToDo> ToDo { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Personen>()
                .Property(e => e.Bearbeiter)
                .IsUnicode(false);

            modelBuilder.Entity<Personen>()
                .Property(e => e.FullName)
                .IsUnicode(false);

            modelBuilder.Entity<Personen>()
                .Property(e => e.Ort)
                .IsUnicode(false);

            modelBuilder.Entity<ToDo>()
                .Property(e => e.Aufgabe)
                .IsUnicode(false);

            modelBuilder.Entity<ToDo>()
                .Property(e => e.Bearbeiter)
                .IsUnicode(false);
        }
    }
}
