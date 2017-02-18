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
    public class PurchaseOrderDetailsController : Controller
    {
        private IMSContext db = new IMSContext();

        // GET: PurchaseOrderDetails
        public ActionResult Index()
        {
            var purchaseOrderDetails = db.PurchaseOrderDetails.Include(p => p.Product).Include(p => p.PurchaseOrder).Include(p => p.Requisition);
            return View(purchaseOrderDetails.ToList());
        }

        // GET: PurchaseOrderDetails/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PurchaseOrderDetail purchaseOrderDetail = db.PurchaseOrderDetails.Find(id);
            if (purchaseOrderDetail == null)
            {
                return HttpNotFound();
            }
            return View(purchaseOrderDetail);
        }

        // GET: PurchaseOrderDetails/Create
        public ActionResult Create()
        {
            ViewBag.ProductId = new SelectList(db.Products, "ProductId", "ProductName");
            ViewBag.PurchaseOrderId = new SelectList(db.PurchaseOrders, "PurchaseOrderId", "OrderNo");
            ViewBag.RequisitionId = new SelectList(db.Requisitions, "RequisitionId", "Reason");
            return View();
        }

        // POST: PurchaseOrderDetails/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "PurchaseOrderDetailId,PurchaseOrderId,ProductId,Quantity,UnitPrice,RequisitionId")] PurchaseOrderDetail purchaseOrderDetail)
        {
            if (ModelState.IsValid)
            {
                db.PurchaseOrderDetails.Add(purchaseOrderDetail);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.ProductId = new SelectList(db.Products, "ProductId", "ProductName", purchaseOrderDetail.ProductId);
            ViewBag.PurchaseOrderId = new SelectList(db.PurchaseOrders, "PurchaseOrderId", "OrderNo", purchaseOrderDetail.PurchaseOrderId);
            ViewBag.RequisitionId = new SelectList(db.Requisitions, "RequisitionId", "Reason", purchaseOrderDetail.RequisitionId);
            return View(purchaseOrderDetail);
        }

        // GET: PurchaseOrderDetails/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PurchaseOrderDetail purchaseOrderDetail = db.PurchaseOrderDetails.Find(id);
            if (purchaseOrderDetail == null)
            {
                return HttpNotFound();
            }
            ViewBag.ProductId = new SelectList(db.Products, "ProductId", "ProductName", purchaseOrderDetail.ProductId);
            ViewBag.PurchaseOrderId = new SelectList(db.PurchaseOrders, "PurchaseOrderId", "OrderNo", purchaseOrderDetail.PurchaseOrderId);
            ViewBag.RequisitionId = new SelectList(db.Requisitions, "RequisitionId", "Reason", purchaseOrderDetail.RequisitionId);
            return View(purchaseOrderDetail);
        }

        // POST: PurchaseOrderDetails/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "PurchaseOrderDetailId,PurchaseOrderId,ProductId,Quantity,UnitPrice,RequisitionId")] PurchaseOrderDetail purchaseOrderDetail)
        {
            if (ModelState.IsValid)
            {
                db.Entry(purchaseOrderDetail).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.ProductId = new SelectList(db.Products, "ProductId", "ProductName", purchaseOrderDetail.ProductId);
            ViewBag.PurchaseOrderId = new SelectList(db.PurchaseOrders, "PurchaseOrderId", "OrderNo", purchaseOrderDetail.PurchaseOrderId);
            ViewBag.RequisitionId = new SelectList(db.Requisitions, "RequisitionId", "Reason", purchaseOrderDetail.RequisitionId);
            return View(purchaseOrderDetail);
        }

        // GET: PurchaseOrderDetails/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PurchaseOrderDetail purchaseOrderDetail = db.PurchaseOrderDetails.Find(id);
            if (purchaseOrderDetail == null)
            {
                return HttpNotFound();
            }
            return View(purchaseOrderDetail);
        }

        // POST: PurchaseOrderDetails/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            PurchaseOrderDetail purchaseOrderDetail = db.PurchaseOrderDetails.Find(id);
            db.PurchaseOrderDetails.Remove(purchaseOrderDetail);
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
