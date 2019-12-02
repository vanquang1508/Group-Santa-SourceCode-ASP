namespace ShoeShopOnline.Model.DAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Menu")]
    public partial class Menu
    {
        public int Id { get; set; }

        [Required(ErrorMessage = "Baòn chıa nhâòp tên menu")]
        [StringLength(256)]
        [Display(Name = "Tên")]
        public string MenuName { get; set; }
        [Display(Name = "Liên kêìt")]
        [StringLength(256)]
        [Required(ErrorMessage = "Baòn chıa nhâòp liên kêìt")]
        public string Link { get; set; }
        [Display(Name = "Thıì tıò")]
        public int? DisplayOrder { get; set; }
        [Display(Name = "Menu con")]
        public int? ParentId { get; set; }
        [Display(Name = "KiêÒu sang trang")]
        [Required(ErrorMessage = "Baòn chıa nhâòp kiêÒu sang trang")]
        [StringLength(256)]
        public string Target { get; set; }
        [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy HH:mm}", ApplyFormatInEditMode = true)]
        [Display(Name = "NgaÌy taòo")]
        public DateTimeOffset? CreatedOn { get; set; }
        [StringLength(256)]
        [Display(Name = "NgıõÌi taòo")]
        public string CreatedBy { get; set; }
        [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy HH:mm}", ApplyFormatInEditMode = true)]
        [Display(Name = "NgaÌy câòp nhâòt")]
        public DateTimeOffset? ModifiedOn { get; set; }
        [StringLength(256)]
        [Display(Name = "NgıõÌi câòp nhâòt")]
        public string ModifiedBy { get; set; }
        [Display(Name = "Traòng thaìi")]
        public bool IsDeleted { get; set; }
    }
}
