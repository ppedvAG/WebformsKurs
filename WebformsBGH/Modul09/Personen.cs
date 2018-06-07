namespace WebformsBGH.Modul09
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Personen")]
    public partial class Personen
    {
        public int Id { get; set; }

        [StringLength(5)]
        public string Bearbeiter { get; set; }

        [StringLength(50)]
        public string FullName { get; set; }

        [StringLength(50)]
        public string Ort { get; set; }
        public virtual ICollection<ToDo> ToDo { get; set; }
    }
}
