namespace ShoeShopOnline.Model.DAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("OrderDetail")]
    public partial class OrderDetail
    {
        [Key]
        [Column(Order = 0)]
        [Display(Name = "T�n sa�n ph��m")]
        public Guid ProductId { get; set; }
        [Key]
        [Column(Order = 1)]
        public Guid OrderId { get; set; }
        [Display(Name = "S�� l���ng")]
        public int? Quantity { get; set; }
        [Display(Name = "Gia�")]
        [DataType(DataType.Currency)]
        [DisplayFormat(DataFormatString = "{0:C0}")]
        public decimal? Price { get; set; }
        [Display(Name = "Tha�nh ti��n")]
        [DataType(DataType.Currency)]
        [DisplayFormat(DataFormatString = "{0:C0}")]
        public decimal? Total => Price * Quantity;
        [Display(Name = "Nga�y ta�o")]
        [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy HH:mm}", ApplyFormatInEditMode = true)]
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
        public virtual Order Order { get; set; }
        public virtual Product Product { get; set; }
    }
}
