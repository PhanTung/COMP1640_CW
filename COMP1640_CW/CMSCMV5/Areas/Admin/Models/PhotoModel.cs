using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace CMSCMV5.Areas.Admin.Models
{
    public class PhotoModel
    {
        public int id { get; set; }

        [Required(ErrorMessage="Bạn phải nhập tiêu đề")]
        public string name { get; set; }

        [Required(ErrorMessage = "Bạn phải chọn ảnh")]
        public string img { get; set; }
    }
}