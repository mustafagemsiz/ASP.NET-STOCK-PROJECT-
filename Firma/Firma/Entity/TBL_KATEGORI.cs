//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Firma.Entity
{
    using System;
    using System.Collections.Generic;
    
    public partial class TBL_KATEGORI
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public TBL_KATEGORI()
        {
            this.TBL_URUN = new HashSet<TBL_URUN>();
        }
    
        public int KATEGORIID { get; set; }
        public string KATEGORIAD { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TBL_URUN> TBL_URUN { get; set; }
    }
}
