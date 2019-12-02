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
        //[Required(ErrorMessage = "Ba�n ch�a nh��p ho� va� t�n")]
        [Display(Name = "Ho� va� t�n")]
        public string Name { get; set; }
        [DataType(DataType.PhoneNumber)]
        [RegularExpression(@"^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$",
                   ErrorMessage = "�i�nh da�ng s�� �i��n thoa�i kh�ng �u�ng")]
        [Display(Name = "S�� �i��n thoa�i")]
        [StringLength(50)]
        public string Phone { get; set; }
        //[Required(ErrorMessage = "Ba�n ch�a nh��p email")]
        [Display(Name = "Email")]
        [RegularExpression("^[a-zA-Z0-9_\\.-]+@([a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,6}$", ErrorMessage = "�i�nh da�ng email kh�ng �u�ng.")]
        [StringLength(256)]
        public string Email { get; set; }
        [Display(Name = "�i�a chi�")]
        [StringLength(256)]
        public string Address { get; set; }
        [Required(ErrorMessage = "Ba�n ch�a nh��p n��i dung")]
        [Display(Name = "N��i dung")]
        public string Content { get; set; }
        [Display(Name = "Pha�n h��i")]
        public string Reply { get; set; }
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
    }
}
