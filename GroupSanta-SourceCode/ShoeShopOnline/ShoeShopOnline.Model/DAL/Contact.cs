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
        [Display(Name = "Ti�u ���")]
        public string Title { get; set; }
        [Display(Name = "Chi ti��t")]
        [StringLength(256)]
        public string ObjectName { get; set; }
        [Display(Name = "�i�a chi�")]
        [StringLength(256)]
        public string Address { get; set; }
        [Display(Name = "S�� �i��n thoa�i")]
        [StringLength(20)]
        [DataType(DataType.PhoneNumber)]
        public string Mobile { get; set; }
        [Display(Name = "Website")]
        [StringLength(256)]
        public string Website { get; set; }
        [StringLength(256)]
        [RegularExpression(@"\A(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?)\Z",
        ErrorMessage = "Kh�ng �u�ng �i�nh da�ng email")]
        [Display(Name = "Email")]
        public string Email { get; set; }
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
