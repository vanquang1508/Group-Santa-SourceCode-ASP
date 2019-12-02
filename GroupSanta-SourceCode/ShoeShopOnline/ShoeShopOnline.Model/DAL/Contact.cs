namespace ShoeShopOnline.Model.DAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Contact")]
    public partial class Contact
    {
        public int Id { get; set; }

        [StringLength(256)]
        [Display(Name = "Tiêu ðêÌ")]
        public string Title { get; set; }
        [Display(Name = "Chi tiêìt")]
        [StringLength(256)]
        public string ObjectName { get; set; }
        [Display(Name = "Ðiòa chiÒ")]
        [StringLength(256)]
        public string Address { get; set; }
        [Display(Name = "Sôì ðiêòn thoaòi")]
        [StringLength(20)]
        [DataType(DataType.PhoneNumber)]
        public string Mobile { get; set; }
        [Display(Name = "Website")]
        [StringLength(256)]
        public string Website { get; set; }
        [StringLength(256)]
        [RegularExpression(@"\A(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?)\Z",
        ErrorMessage = "Không ðuìng ðiònh daòng email")]
        [Display(Name = "Email")]
        public string Email { get; set; }
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
