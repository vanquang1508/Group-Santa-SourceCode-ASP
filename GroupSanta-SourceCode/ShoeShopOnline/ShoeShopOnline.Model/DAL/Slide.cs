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

        [Required(ErrorMessage = "Ba�n ch�a nh��p cho�n hi�nh a�nh")]
        [StringLength(256)]
        [Display(Name = "Hi�nh a�nh")]
        public string UrlImage { get; set; }
        [Display(Name = "Th�� t��")]
        public int? DisplayOrder { get; set; }
        [Display(Name = "Li�n k��t")]
        [StringLength(256)]
        public string Link { get; set; }
        [Display(Name = "M� ta�")]
        [StringLength(256)]
        public string Description { get; set; }
        [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy HH:mm}", ApplyFormatInEditMode = true)]
        [Display(Name = "Nga�y ta�o")]
        public DateTimeOffset? CreatedOn { get; set; }
        [Display(Name = "Ng���i ta�o")]
        [StringLength(256)]
        public string CreatedBy { get; set; }
        [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy HH:mm}", ApplyFormatInEditMode = true)]
        [Display(Name = "Nga�y c��p nh��t")]
        public DateTimeOffset? ModifiedOn { get; set; }
        [Display(Name = "Ng���i c��p nh��t")]
        [StringLength(256)]
        public string ModifiedBy { get; set; }
        [Display(Name = "Tra�ng tha�i")]
        public bool IsDeleted { get; set; }
    }
}
