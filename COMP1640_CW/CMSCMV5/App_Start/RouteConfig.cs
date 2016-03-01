using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace CMSCMV5
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            routes.MapRoute(
               name: "OnpayGate1Done",
               url: "onpaygate1done",
               defaults: new { controller = "OnPay", action = "NhanQuocTe" },
               namespaces: new[] { "CMSCMV5.Areas.Site.Controllers" }
           ).DataTokens.Add("Area", "Site");

            routes.MapRoute(
               name: "OnpayGate2Done",
               url: "onpaygate2done",
               defaults: new { controller = "OnPay", action = "NhanNoiDia" },
               namespaces: new[] { "CMSCMV5.Areas.Site.Controllers" }
           ).DataTokens.Add("Area", "Site");

            routes.MapRoute(
               name: "OnpayGate1",
               url: "onpaygate1",
               defaults: new { controller = "OnPay", action = "QuocTe" },
               namespaces: new[] { "CMSCMV5.Areas.Site.Controllers" }
           ).DataTokens.Add("Area", "Site");

            routes.MapRoute(
               name: "OnpayGate2",
               url: "onpaygate2",
               defaults: new { controller = "OnPay", action = "NoiDia" },
               namespaces: new[] { "CMSCMV5.Areas.Site.Controllers" }
           ).DataTokens.Add("Area", "Site");

            routes.MapRoute(
               name: "Onpay",
               url: "onpay/{id}",
               defaults: new { controller = "OnPay", action = "Index", id = UrlParameter.Optional },
               namespaces: new[] { "CMSCMV5.Areas.Site.Controllers" }
           ).DataTokens.Add("Area", "Site");

            routes.MapRoute(
                name: "Help",
                url: "help/{id}/{title}",
                defaults: new { controller = "Help", action = "Index", title = UrlParameter.Optional, id = UrlParameter.Optional },
                namespaces: new[] { "CMSCMV5.Areas.Site.Controllers" }
            ).DataTokens.Add("Area", "Site");

            routes.MapRoute(
                name: "Admissions",
                url: "admissions",
                defaults: new { controller = "InfoMe", action = "Admissions" },
                namespaces: new[] { "CMSCMV5.Areas.Site.Controllers" }
            ).DataTokens.Add("Area", "Site");

            routes.MapRoute(
                name: "Our_Introduction",
                url: "our-introduction",
                defaults: new { controller = "InfoMe", action = "Index" },
                namespaces: new[] { "CMSCMV5.Areas.Site.Controllers" }
            ).DataTokens.Add("Area", "Site");

            routes.MapRoute(
                name: "Our_Strategy",
                url: "our-strategy",
                defaults: new { controller = "InfoMe", action = "Strategy" },
                namespaces: new[] { "CMSCMV5.Areas.Site.Controllers" }
            ).DataTokens.Add("Area", "Site");

            routes.MapRoute(
                name: "Service",
                url: "service/{id}/{title}",
                defaults: new { controller = "Service", action = "detail", title = UrlParameter.Optional, id = UrlParameter.Optional },
                namespaces: new[] { "CMSCMV5.Areas.Site.Controllers" }
            ).DataTokens.Add("Area", "Site");

            routes.MapRoute(
                name: "Exp",
                url: "experience",
                defaults: new { controller = "Info", action = "Exp" },
                namespaces: new[] { "CMSCMV5.Areas.Site.Controllers" }
            ).DataTokens.Add("Area", "Site");

            routes.MapRoute(
                name: "Info",
                url: "information",
                defaults: new { controller = "Info", action = "Info" },
                namespaces: new[] { "CMSCMV5.Areas.Site.Controllers" }
            ).DataTokens.Add("Area", "Site");

            routes.MapRoute(
                name: "Location",
                url: "location",
                defaults: new { controller = "Info", action = "Location" },
                namespaces: new[] { "CMSCMV5.Areas.Site.Controllers" }
            ).DataTokens.Add("Area", "Site");

            routes.MapRoute(
                name: "ListPhoto",
                url: "photos",
                defaults: new { controller = "Photo", action = "Index" },
                namespaces: new[] { "CMSCMV5.Areas.Site.Controllers" }
            ).DataTokens.Add("Area", "Site");

            routes.MapRoute(
                name: "ListNew",
                url: "news",
                defaults: new { controller = "News", action = "Index" },
                namespaces: new[] { "CMSCMV5.Areas.Site.Controllers" }
            ).DataTokens.Add("Area", "Site");

            routes.MapRoute(
                name: "NewDetail",
                url: "new/{id}/{title}",
                defaults: new { controller = "News", action = "Detail", title = UrlParameter.Optional, id = UrlParameter.Optional },
                namespaces: new[] { "CMSCMV5.Areas.Site.Controllers" }
            ).DataTokens.Add("Area", "Site");

            routes.MapRoute(
                name: "AjaxGetInfoPice",
                url: "ajaxGetTours",
                defaults: new { controller = "Tours", action = "GetInfo", search = UrlParameter.Optional, page = UrlParameter.Optional },
                namespaces: new[] { "CMSCMV5.Areas.Site.Controllers" }
            ).DataTokens.Add("Area", "Site");

            routes.MapRoute(
                name: "AjaxSubmitInfoPice",
                url: "ajaxSubmitTours",
                defaults: new { controller = "Tours", action = "SubmitInfo", search = UrlParameter.Optional, page = UrlParameter.Optional },
                namespaces: new[] { "CMSCMV5.Areas.Site.Controllers" }
            ).DataTokens.Add("Area", "Site");

            routes.MapRoute(
                name: "ListTour",
                url: "tours/{search}/{page}",
                defaults: new { controller = "Tours", action = "Index", search = UrlParameter.Optional, page = UrlParameter.Optional },
                namespaces: new[] { "CMSCMV5.Areas.Site.Controllers" }
            ).DataTokens.Add("Area", "Site");

            routes.MapRoute(
                name: "TourDetail",
                url: "tour/{id}/{title}",
                defaults: new { controller = "Tours", action = "Detail", title = UrlParameter.Optional, id = UrlParameter.Optional },
                namespaces: new[] { "CMSCMV5.Areas.Site.Controllers" }
            ).DataTokens.Add("Area", "Site");

            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional },
                namespaces: new[] { "CMSCMV5.Areas.Site.Controllers" }
            ).DataTokens.Add("Area", "Site");
        }
    }
}
