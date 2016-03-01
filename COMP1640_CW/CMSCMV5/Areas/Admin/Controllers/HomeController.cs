using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CMSCMV5.Areas.Admin.Controllers
{
    [Authorize]
    public class HomeController : Controller
    {
        // GET: Admin/Home
        public ActionResult Index()
        {
            using (var db = new DAO.Entities())
            {
                var time = DateTime.Now;
                //ViewBag.countOderNew = db.BookTours.Where(x => x.BookDate <= time && (x.Status == 0 || x.Status == 1 || x.Status == 2)).Count();
                //ViewBag.countOderDone = db.BookTours.Where(x => x.BookDate <= time && x.Status == 4).Count();
                //ViewBag.countOderPenDing = db.BookTours.Where(x => x.Status == 3).Count();
            }
            for (int i = 0; i < 1000; i++)
            {

            }
            return View();
        }

        [ChildActionOnly]
        public PartialViewResult Menu()
        {
            return PartialView();
        }
    }
}