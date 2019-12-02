namespace ShoeShopOnline.Model.DAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Slide")]
    public partial class Slide
    {
        public int Id { get; set; }

        [Required(ErrorMessage = "Baòn chýa nhâòp choòn hiÌnh aÒnh")]
        [StringLength(256)]
        [Display(Name = "HiÌnh aÒnh")]
        public string UrlImage { get; set; }
        [Display(Name = "Thýì týò")]
        public int? DisplayOrder { get; set; }
        [Display(Name = "Liên kêìt")]
        [StringLength(256)]
        public string Link { get; set; }
        [Display(Name = "Mô taÒ")]
        [StringLength(256)]
        public string Description { get; set; }
        [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy HH:mm}", ApplyFormatInEditMode = true)]
        [Display(Name = "NgaÌy taòo")]
        public DateTimeOffset? CreatedOn { get; set; }
        [Display(Name = "NgýõÌi taòo")]
        [StringLength(256)]
        public string CreatedBy { get; set; }
        [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy HH:mm}", ApplyFormatInEditMode = true)]
        [Display(Name = "NgaÌy câòp nhâòt")]
        public DateTimeOffset? ModifiedOn { get; set; }
        [Display(Name = "NgýõÌi câòp nhâòt")]
        [StringLength(256)]
        public string ModifiedBy { get; set; }
        [Display(Name = "Traòng thaìi")]
        public bool IsDeleted { get; set; }
    }
}
