namespace ShoeShopOnline.Model.DAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ProductCategory")]
    public partial class ProductCategory
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ProductCategory()
        {
            Product = new HashSet<Product>();
        }

        public Guid Id { get; set; }

        [StringLength(256)]
        [Display(Name = "Loa�i sa�n ph��m")]
        public string Name { get; set; }

        [StringLength(256)]
        [Display(Name = "Li�n k��t")]
        public string MetaTitle { get; set; }
        //[Display(Name = "Loa�i sa�n ph��m")]
        public int? ParentId { get; set; }
        [Display(Name = "STT")]
        public int? DisplayOrder { get; set; }
        [Display(Name = "Ti�u ��� SEO")]
        [StringLength(256)]
        public string SeoTitle { get; set; }
        [Display(Name = "T�� kho�a")]
        [StringLength(256)]
        public string MetaKeywords { get; set; }
        [Display(Name = "M� ta� t�� kho�a")]
        [StringLength(256)]
        public string MetaDescriptions { get; set; }
        [Display(Name = "Nga�y ta�o")]
        [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy HH:mm}", ApplyFormatInEditMode = true)]
        public DateTimeOffset? CreatedOn { get; set; }
        [StringLength(256)]
        [Display(Name = "Ng���i ta�o")]
        public string CreatedBy { get; set; }
        [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy HH:mm}", ApplyFormatInEditMode = true)]
        [Display(Name = "Nga�y c��p nh��t")]
        public DateTimeOffset? ModifiedOn { get; set; }
        [StringLength(256)]
        [Display(Name = "Ng���i c��p nh��t")]
        public string ModifiedBy { get; set; }
        [Display(Name = "Tra�ng tha�i")]
        public bool IsDeleted { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Product> Product { get; set; }
    }
}
