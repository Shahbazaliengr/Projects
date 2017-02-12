using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace IMS.Controllers
{
    public class IMSController : Controller
    {
        // GET: IMS
        public ActionResult Requisition()
        {
            return View();
        }
    }
}