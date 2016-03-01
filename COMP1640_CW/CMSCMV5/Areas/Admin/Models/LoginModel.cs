using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CMSCMV5.Areas.Admin.Models
{
    public class LoginModel
    {
        [Display(Name = "Tài khoản:")]
        [Required(ErrorMessage = "Hãy nhập tài khoản")]
        public string acc { get; set; }

        [Display(Name = "Mật khẩu:")]
        [Required(ErrorMessage = "Hãy nhập mật khẩu")]
        public string pass { get; set; }
    }

    public class ChangePassModel
    {
        [Display(Name = "Tài khoản:")]        
        public string acc { get; set; }

        [Display(Name = "Mật khẩu cũ:")]
        [Required(ErrorMessage = "Hãy nhập mật khẩu")]
        public string passold { get; set; }

        [Display(Name = "Mật khẩu:")]
        [Required(ErrorMessage = "Hãy nhập mật khẩu")]
        public string pass1 { get; set; }

        [Display(Name = "Xác Nhận Mật khẩu:")]
        //[Compare("pass1",ErrorMessage="Xác nhận không chính xác")]
        public string pass2 { get; set; }
    }
}