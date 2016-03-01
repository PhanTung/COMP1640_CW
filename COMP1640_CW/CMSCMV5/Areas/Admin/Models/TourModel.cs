using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CMSCMV5.Areas.Admin.Models
{
    public class TourModel
    {
        public int id { get; set; }

        public string name { get; set; }

        [AllowHtml]
        public string description { get; set; }

        public string note { get; set; }

        public float price { get; set; }

        public float price2 { get; set; }

        public string img { get; set; }

        [AllowHtml]
        public string has { get; set; }

        [AllowHtml]
        public string need { get; set; }

        public int start { get; set; }
    }

    public class SceduModel
    {
        public SceduModel()
        {
            dayData = new List<DayData>();
        }

        public int id { get; set; }

        public List<DayData> dayData { get; set; }
    }

    public class OderModel
    {
        public int id { get; set; }

        [AllowHtml]
        public string description { get; set; }

        public string DateTime { get; set; }

        public int type { get; set; }
    }

    public class DayData
    {
        public string name { get; set; }

        [AllowHtml]
        public string description { get; set; }
    }
}