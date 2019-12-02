using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace ShoeShopOnline.Model.DAL
{
    [Table("Role")]
    public partial class Role
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Role()
        {
            UserGroup = new HashSet<UserGroup>();
        }

        [StringLength(50)]
        [Display(Name = "Id")]
        [Required(ErrorMessage = "Ba�n ch�a nh��p Id")]
        public string Id { get; set; }

        [Required(ErrorMessage = "Ba�n ch�a nh��p m� ta�")]
        [StringLength(50)]
        [Display(Name = "M� ta�")]
        public string Name { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<UserGroup> UserGroup { get; set; }
    }
}
