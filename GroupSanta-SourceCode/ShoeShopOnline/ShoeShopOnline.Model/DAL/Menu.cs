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

        [Required(ErrorMessage = "Ba�n ch�a nh��p t�n menu")]
        [StringLength(256)]
        [Display(Name = "T�n")]
        public string MenuName { get; set; }
        [Display(Name = "Li�n k��t")]
        [StringLength(256)]
        [Required(ErrorMessage = "Ba�n ch�a nh��p li�n k��t")]
        public string Link { get; set; }
        [Display(Name = "Th�� t��")]
        public int? DisplayOrder { get; set; }
        [Display(Name = "Menu con")]
        public int? ParentId { get; set; }
        [Display(Name = "Ki��u sang trang")]
        [Required(ErrorMessage = "Ba�n ch�a nh��p ki��u sang trang")]
        [StringLength(256)]
        public string Target { get; set; }
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
