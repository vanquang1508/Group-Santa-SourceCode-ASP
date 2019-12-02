namespace ShoeShopOnline.Model.DAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("NewsCategory")]
    public partial class NewsCategory
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public NewsCategory()
        {
            News = new HashSet<News>();
        }

        public Guid Id { get; set; }
        [StringLength(256)]
        [DisplayName("Loa�i sa�n ph��m")]
        public string Name { get; set; }
        [DisplayName("Link li�n k��t")]
        [StringLength(256)]
        public string MetaTitle { get; set; }
        [DisplayName("Loa�i sa�n ph��m")]
        public int? ParentId { get; set; }
        [DisplayName("Th�� t��")]
        public int? DisplayOrder { get; set; }
        [DisplayName("Ti�u �� SEO")]
        [StringLength(256)]
        public string SeoTitle { get; set; }
        [DisplayName("T�� kho�a truy c��p")]
        [StringLength(256)]
        public string MetaKeywords { get; set; }
        [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy HH:mm}", ApplyFormatInEditMode = true)]
        public DateTimeOffset? CreatedOn { get; set; }
        [StringLength(256)]
        public string CreatedBy { get; set; }
        [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy HH:mm}", ApplyFormatInEditMode = true)]
        public DateTimeOffset? ModifiedOn { get; set; }
        [StringLength(256)]
        public string ModifiedBy { get; set; }
        public bool IsDeleted { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<News> News { get; set; }
    }
}
