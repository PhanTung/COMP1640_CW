using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.Web.Mvc;

namespace CMSCMV5.Areas.Admin.Models
{
    public class CreateGroupModel
    {
        public CreateGroupModel()
        {
            roles = new List<RoleData>();
        }

        public int id { get; set; }

        [Required(ErrorMessage="Hãy nhập tên nhóm")]
        [Display(Name="Tên nhóm")]
        public string name { get; set; }

        [Display(Name = "Mô tả nhóm")]
        public string description { get; set; }

        public List<RoleData> roles { get; set; }
    }

    public class RoleData
    {
        public string name { get; set; }

        public string description { get; set; }

        public bool check { get; set; }
    }

    public class CreateAccountModel
    {

        public CreateAccountModel()
        {
            groups = new List<GroupData>();
        }

        public bool edit { get; set; } 

        [Required(ErrorMessage = "Hãy nhập tài khoản")]
        [Display(Name = "Tài khoản")]
        public string account { get; set; }

        [Required(ErrorMessage = "Hãy nhập tên")]
        [Display(Name = "Tên người dùng")]
        public string name { get; set; }

        [Display(Name = "Mật khẩu")]
        public string password { get; set; }

        [Required(ErrorMessage = "Hãy nhập email")]
        [Display(Name = "Nhập email")]
        public string email { get; set; }

        public List<GroupData> groups { get; set; }
    }
   
    public class GroupData
    {
        public int id { get; set; }

        public string name { get; set; }

        public string description { get; set; }

        public bool check { get; set; }
    }
}