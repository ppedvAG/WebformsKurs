namespace WebformsBGH.Modul09
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ToDo")]
    public partial class ToDo
    {
        public int Id { get; set; }

        [StringLength(50)]
        public string Aufgabe { get; set; }

        public DateTime? Datum { get; set; }

        public bool? Erledigt { get; set; }

        [StringLength(5)]
        public string Bearbeiter { get; set; }
       // [InverseProperty("Bearbeiter")]
       //public virtual Personen Personen { get; set; }
    }
}
