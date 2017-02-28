using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace IMS.ViewModels
{
    public class PurchaseOrderViewModel : IEnumerable
    {
        public PurchaseOrder PurchaseOrder { get; set; }
        public PurchaseOrderDetail PurchaseOrderDetail { get; set; }

        public IEnumerator GetEnumerator()
        {
            throw new NotImplementedException();
        }
    }
}