using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using CMSCMV5.Areas.Admin.Models;

namespace CMSCMV5.Areas.Admin.Controllers
{
    public class AccountController : Controller
    {
        [AllowAnonymous]
        public ActionResult Login()
        {
            if (User.Identity.IsAuthenticated)
            {
                FormsAuthentication.SignOut();
                return RedirectToAction("Login");
            }
            return View();
        }

        [HttpPost, AllowAnonymous]
        public ActionResult Login(LoginModel model, string ReturnUrl)
        {
            if (ModelState.IsValid)
            {
                using (var db = new DAO.Entities())
                {
                    var passHas = CoreFunction.GetMd5Hash(model.pass);
                    var accountData = db.asp_User.FirstOrDefault(x => x.account == model.acc && x.password == passHas);
                    if (accountData!= null)
                    {
                        FormsAuthentication.SetAuthCookie(model.acc, false);

                        if (Url.IsLocalUrl(ReturnUrl))
                        {
                            return Redirect(ReturnUrl);
                        }
                        return RedirectToAction("index", "Home");
                    }
                    else
                    {
                        TempData["mess"] = "Sai tài khoản hoặc mật khẩu";
                    }
                }                
            }
            return View(model);
        }

        [AllowAnonymous]
        public ActionResult Logout()
        {
            FormsAuthentication.SignOut();

            return RedirectToAction("Login");
        }
    }
}