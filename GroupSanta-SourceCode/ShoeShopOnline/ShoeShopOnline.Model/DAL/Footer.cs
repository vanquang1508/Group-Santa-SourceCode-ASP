namespace ShoeShopOnline.Model.DAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Footer")]
    public partial class Footer
    {
        public Guid Id { get; set; }

        [StringLength(100)]
        [Display(Name = "CoppyRight")]
        public string CoppyRight { get; set; }
        [Display(Name = "Ðiòa chiÒ")]
        [StringLength(256)]
        public string Address { get; set; }
        [Display(Name = "Sôì ðiêòn thoaòi")]
        [StringLength(256)]
        [DataType(DataType.PhoneNumber)]
        public string PhoneNumber { get; set; }
        [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy HH:mm}", ApplyFormatInEditMode = true)]
        [Display(Name = "NgaÌy taòo")]
        public DateTimeOffset? CreatedOn { get; set; }
        [StringLength(256)]
        [Display(Name = "NgýõÌi taòo")]
        public string CreatedBy { get; set; }
        [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy HH:mm}", ApplyFormatInEditMode = true)]
        [Display(Name = "NgaÌy câòp nhâòt")]
        public DateTimeOffset? ModifiedOn { get; set; }
        [StringLength(256)]
        [Display(Name = "NgýõÌi câòp nhâòt")]
        public string ModifiedBy { get; set; }
        [Display(Name = "Traòng thaìi")]
        public bool IsDeleted { get; set; }
    }
}
