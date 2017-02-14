//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace IMS
{
    using System;
    using System.Collections.Generic;
    
    public partial class PurchaseOrder
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public PurchaseOrder()
        {
            this.PurchaseOrderDetails = new HashSet<PurchaseOrderDetail>();
            this.SupplierBills = new HashSet<SupplierBill>();
        }
    
        public int PurchaseOrderId { get; set; }
        public Nullable<int> SupplierId { get; set; }
        public string OrderNo { get; set; }
        public string ReferenceNo { get; set; }
        public Nullable<System.DateTime> DeliveryDate { get; set; }
        public Nullable<System.DateTime> PurchaseOrderDate { get; set; }
        public Nullable<decimal> Discount { get; set; }
        public Nullable<int> DiscountTypeId { get; set; }
        public Nullable<decimal> SalesTax { get; set; }
        public Nullable<int> SalesTaxTypeId { get; set; }
    
        public virtual PercentageValue PercentageValue { get; set; }
        public virtual PercentageValue PercentageValue1 { get; set; }
        public virtual Supplier Supplier { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PurchaseOrderDetail> PurchaseOrderDetails { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SupplierBill> SupplierBills { get; set; }
    }
}