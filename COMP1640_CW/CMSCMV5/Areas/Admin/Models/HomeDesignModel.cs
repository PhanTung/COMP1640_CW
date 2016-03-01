using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.Web.Mvc;

namespace CMSCMV5.Areas.Admin.Models
{
    public class SlideShowModel
    {
        public int id { get; set; }

        public int tourId { get; set; }
        
        public string txt1 { get; set; }

        public string txt2 { get; set; }

        [Required(ErrorMessage="Bạn chưa chọn ảnh")]
        public string img { get; set; }

        public string link { get; set; }

        public int oder { get; set; }
    }

    public class LogoModel
    {
        [Required(ErrorMessage = "Bạn chưa chọn logo")]
        public string img { get; set; }
    }

    public class GioiThieuChungModel
    {        
        public string sumaryVitri { get; set; }

        public string sumaryCamnang { get; set; }
        
        public string sumaryThongtin { get; set; }

        [AllowHtml]
        public string contentThongtin { get; set; }

        [AllowHtml]
        public string contentVitri { get; set; }

        [AllowHtml]
        public string contentCamnang { get; set; }
    }

    public class InfoModel
    {
        public int id { get; set; }

        [AllowHtml]
        public string info { get; set; }

        [AllowHtml]
        public string service { get; set; }

        [AllowHtml]
        public string admissions { get; set; }
    }

    public class HelpDataModel
    {
        public HelpDataModel()
        {
            data1 = new HelpModel();
            data2 = new HelpModel();
            data3 = new HelpModel();
        }
        public HelpModel data1 { get; set; }

        public HelpModel data2 { get; set; }

        public HelpModel data3 { get; set; }
    }

    public class HelpModel
    {
        public string id { get; set; }
        public string title { get; set; }

        public string keyword { get; set; }

        [AllowHtml]
        public string sumary { get; set; }

        [AllowHtml]
        public string content { get; set; }
    }
}