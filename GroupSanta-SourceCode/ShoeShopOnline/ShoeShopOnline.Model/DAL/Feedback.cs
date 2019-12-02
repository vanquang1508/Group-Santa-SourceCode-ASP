namespace ShoeShopOnline.Model.DAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Feedback")]
    public partial class Feedback
    {
        public Guid Id { get; set; }

        [StringLength(256)]
        //[Required(ErrorMessage = "Baòn chıa nhâòp hoò vaÌ tên")]
        [Display(Name = "Hoò vaÌ tên")]
        public string Name { get; set; }
        [DataType(DataType.PhoneNumber)]
        [RegularExpression(@"^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$",
                   ErrorMessage = "Ğiònh daòng sôì ğiêòn thoaòi không ğuìng")]
        [Display(Name = "Sôì ğiêòn thoaòi")]
        [StringLength(50)]
        public string Phone { get; set; }
        //[Required(ErrorMessage = "Baòn chıa nhâòp email")]
        [Display(Name = "Email")]
        [RegularExpression("^[a-zA-Z0-9_\\.-]+@([a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,6}$", ErrorMessage = "Ğiònh daòng email không ğuìng.")]
        [StringLength(256)]
        public string Email { get; set; }
        [Display(Name = "Ğiòa chiÒ")]
        [StringLength(256)]
        public string Address { get; set; }
        [Required(ErrorMessage = "Baòn chıa nhâòp nôòi dung")]
        [Display(Name = "Nôòi dung")]
        public string Content { get; set; }
        [Display(Name = "PhaÒn hôÌi")]
        public string Reply { get; set; }
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
