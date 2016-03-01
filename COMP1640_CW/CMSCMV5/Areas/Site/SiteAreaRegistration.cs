using System.Diagnostics;
using System.Web.Mvc;

namespace CMSCMV5.Areas.Site
{
    public class SiteAreaRegistration : AreaRegistration 
    {
        public override string AreaName 
        {
            get 
            {
                return "Site";
            }
        }

        public override void RegisterArea(AreaRegistrationContext context) 
        {
            Trace.WriteLine("Site");           
        }
    }
}