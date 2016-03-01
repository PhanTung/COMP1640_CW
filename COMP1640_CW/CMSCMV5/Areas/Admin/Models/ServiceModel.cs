using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CMSCMV5.Areas.Admin.Models
{
    public class ServiceModel
    {
        public int id { get; set; }

        public string title { get; set; }

        public string sumary { get; set; }

        [AllowHtml]
        public string content { get; set; }

        public int oder { get; set; }
    }
}