//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ThiWebNC
{
    using System;
    using System.Collections.Generic;
    
    public partial class TinhTrangLoaiTour
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public TinhTrangLoaiTour()
        {
            this.LoaiTour = new HashSet<LoaiTour>();
        }
    
        public string MaTinhTrangLoaiTour { get; set; }
        public string TenTinhTrangLoaiTour { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<LoaiTour> LoaiTour { get; set; }
    }
}