using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CMSCMV5.Areas.Admin.Models
{
    public class NewModel
    {
        public int id { get; set; }

        [Required(ErrorMessage = "Bạn phải nhập tiêu đề")]
        public string title { get; set; }

        [Required(ErrorMessage = "Bạn phải chọn ảnh")]
        public string img { get; set; }

        [AllowHtml]
        [Required(ErrorMessage = "Bạn phải nhập phần tóm tắt")]
        public string sumary { get; set; }

        [AllowHtml]
        [Required(ErrorMessage = "Bạn phải nhập nội dung")]
        public string content { get; set; }

        public string link { get; set; }

        public string by { get; set; }
    }
}