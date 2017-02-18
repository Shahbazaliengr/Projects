using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using IMS;

namespace IMS.Controllers
{
    public class PurchaseOrdersController : Controller
    {
        private IMSContext db = new IMSContext();

        // GET: PurchaseOrders
        public ActionResult Index()
        {
            var purchaseOrders = db.PurchaseOrders.Include(p => p.PercentageValue).Include(p => p.PercentageValue1).Include(p => p.Supplier);
            return View(purchaseOrders.ToList());
        }

        // GET: PurchaseOrders/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PurchaseOrder purchaseOrder = db.PurchaseOrders.Find(id);
            if (purchaseOrder == null)
            {
                return HttpNotFound();
            }
            return View(purchaseOrder);
        }

        // GET: PurchaseOrders/Create
        public ActionResult Create()
        {
            ViewBag.DiscountTypeId = new SelectList(db.PercentageValues, "PercentageValueId", "PercentageValue1");
            ViewBag.SalesTaxTypeId = new SelectList(db.PercentageValues, "PercentageValueId", "PercentageValue1");
            ViewBag.SupplierId = new SelectList(db.Suppliers, "SupplierId", "SupplierName");
            return View();
        }

        // POST: PurchaseOrders/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "PurchaseOrderId,SupplierId,OrderNo,ReferenceNo,DeliveryDate,PurchaseOrderDate,Discount,DiscountTypeId,SalesTax,SalesTaxTypeId")] PurchaseOrder purchaseOrder)
        {
            if (ModelState.IsValid)
            {
                db.PurchaseOrders.Add(purchaseOrder);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.DiscountTypeId = new SelectList(db.PercentageValues, "PercentageValueId", "PercentageValue1", purchaseOrder.DiscountTypeId);
            ViewBag.SalesTaxTypeId = new SelectList(db.PercentageValues, "PercentageValueId", "PercentageValue1", purchaseOrder.SalesTaxTypeId);
            ViewBag.SupplierId = new SelectList(db.Suppliers, "SupplierId", "SupplierName", purchaseOrder.SupplierId);
            return View(purchaseOrder);
        }

        // GET: PurchaseOrders/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PurchaseOrder purchaseOrder = db.PurchaseOrders.Find(id);
            if (purchaseOrder == null)
            {
                return HttpNotFound();
            }
            ViewBag.DiscountTypeId = new SelectList(db.PercentageValues, "PercentageValueId", "PercentageValue1", purchaseOrder.DiscountTypeId);
            ViewBag.SalesTaxTypeId = new SelectList(db.PercentageValues, "PercentageValueId", "PercentageValue1", purchaseOrder.SalesTaxTypeId);
            ViewBag.SupplierId = new SelectList(db.Suppliers, "SupplierId", "SupplierName", purchaseOrder.SupplierId);
            return View(purchaseOrder);
        }

        // POST: PurchaseOrders/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "PurchaseOrderId,SupplierId,OrderNo,ReferenceNo,DeliveryDate,PurchaseOrderDate,Discount,DiscountTypeId,SalesTax,SalesTaxTypeId")] PurchaseOrder purchaseOrder)
        {
            if (ModelState.IsValid)
            {
                db.Entry(purchaseOrder).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.DiscountTypeId = new SelectList(db.PercentageValues, "PercentageValueId", "PercentageValue1", purchaseOrder.DiscountTypeId);
            ViewBag.SalesTaxTypeId = new SelectList(db.PercentageValues, "PercentageValueId", "PercentageValue1", purchaseOrder.SalesTaxTypeId);
            ViewBag.SupplierId = new SelectList(db.Suppliers, "SupplierId", "SupplierName", purchaseOrder.SupplierId);
            return View(purchaseOrder);
        }

        // GET: PurchaseOrders/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PurchaseOrder purchaseOrder = db.PurchaseOrders.Find(id);
            if (purchaseOrder == null)
            {
                return HttpNotFound();
            }
            return View(purchaseOrder);
        }

        // POST: PurchaseOrders/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            PurchaseOrder purchaseOrder = db.PurchaseOrders.Find(id);
            db.PurchaseOrders.Remove(purchaseOrder);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
