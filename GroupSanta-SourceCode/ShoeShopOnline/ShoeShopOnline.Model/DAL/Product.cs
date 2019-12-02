namespace ShoeShopOnline.Model.DAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using System.Web.Mvc;

    [Table("Product")]
    public partial class Product
    {
        [Display(Name = "T�n sa�n ph��m")]
        public Guid Id { get; set; }

        [StringLength(256)]
        [Display(Name = "T�n sa�n ph��m")]
        [Required(ErrorMessage = "Ba�n ch�a nh��p t�n sa�n ph��m")]
        public string Name { get; set; }
        [Display(Name = "Ma� khuy��n ma�i")]
        [StringLength(20)]
        public string Code { get; set; }
        [Required(ErrorMessage = "Ba�n ch�a nh��p t�n link li�n k��t")]
        [Display(Name = "Li�n k��t")]
        [StringLength(256)]
        public string MetaTitle { get; set; }
        [Display(Name = "M� ta�")]
        [AllowHtml]
        public string Description { get; set; }
        [Display(Name = "A�nh")]
        [StringLength(256)]
        public string UrlImage { get; set; }
        [Display(Name = "Gia�")]
        [DataType(DataType.Currency)]
        [DisplayFormat(DataFormatString = "{0:C0}")]
        public decimal? Price { get; set; }
        [Display(Name = "Gia� khuy��n ma�i")]
        [DataType(DataType.Currency)]
        [DisplayFormat(DataFormatString = "{0:C0}")]
        public decimal? PromotionPrice { get; set; }
        [Display(Name = "S�� l���ng")]
        public int? Quantity { get; set; }
        [Display(Name = "Loa�i sa�n ph��m")]
        public Guid? ProductCategoryId { get; set; }
        [Column(TypeName = "ntext")]
        [Display(Name = "Chi ti��t")]
        public string Detail { get; set; }
        [Display(Name = "T�� kho�a")]
        [StringLength(256)]
        public string MetaKeywords { get; set; }
        [Display(Name = "Sa�n ph��m Hot")]
        public bool? TopHot { get; set; }
        [Display(Name = "Sa�n ph��m bi�nh th���ng mu�c 1")]
        public bool? IsNormalProduct1 { get; set; }
        [Display(Name = "Sa�n ph��m bi�nh th���ng mu�c 2")]
        public bool? IsNormalProduct2 { get; set; }
        [Display(Name = "Sa�n ph��m m��i")]
        public bool? IsNewProduct { get; set; }
        [Display(Name = "L���t xem")]
        public int? ViewCount { get; set; }
        [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy HH:mm}", ApplyFormatInEditMode = true)]
        [Display(Name = "Nga�y ta�o")]
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
        public virtual ProductCategory ProductCategory { get; set; }
    }
}
