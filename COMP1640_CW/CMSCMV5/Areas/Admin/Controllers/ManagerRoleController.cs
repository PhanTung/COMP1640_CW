using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using CMSCMV5.DAO;
using CMSCMV5.Areas.Admin.Models;

namespace CMSCMV5.Areas.Admin.Controllers
{
    [Authorize(Roles = "0")]
    public class ManagerRoleController : Controller
    {

        public ActionResult ListGroup(int id = 0)
        {
            using (var db = new Entities())
            {
                var data = db.asp_Group.ToList();
                if (id == 0 && data.Count > 0)
                {
                    id = data[0].id;
                }
                ViewBag.Id = id;
                return View(data);
            }
        }

        [ChildActionOnly]
        public ActionResult Group(int id = 0)
        {
            using (var db = new Entities())
            {
                var model = new CreateGroupModel();
                model.roles = db.asp_Role.Select(x => new RoleData { name = x.name, description = x.description }).ToList();
                var data = db.asp_Group.FirstOrDefault(x => x.id == id);
                if (data != null)
                {
                    model.id = data.id;
                    model.name = data.name;
                    model.description = data.description;
                    foreach (var item in model.roles)
                    {
                        if (data.asp_Role.Any(x => x.name == item.name))
                        {
                            item.check = true;
                        }
                    }
                }
                return PartialView(model);
            }
        }

        [HttpPost]
        public ActionResult Group(CreateGroupModel model)
        {
            if (ModelState.IsValid)
            {
                using (var db = new Entities())
                {
                    var data = db.asp_Group.FirstOrDefault(x => x.id == model.id);
                    if (data == null)
                    {
                        data = new asp_Group
                        {
                            name = model.name,
                            description = model.description,
                            status = 0
                        };
                        foreach (var item in model.roles)
                        {
                            if (item.check && !data.asp_Role.Any(x => x.name == item.name))
                            {
                                var roleItem = db.asp_Role.FirstOrDefault(x => x.name == item.name);
                                if (roleItem != null)
                                {
                                    data.asp_Role.Add(roleItem);
                                }
                            }
                            else if (!item.check && data.asp_Role.Any(x => x.name == item.name))
                            {
                                var roleItem = db.asp_Role.FirstOrDefault(x => x.name == item.name);
                                if (roleItem != null)
                                {
                                    data.asp_Role.Remove(roleItem);
                                }
                            }
                        }
                        db.asp_Group.Add(data);
                        db.SaveChanges();                        
                        TempData["mess"] = "Đã thêm dữ liệu thành công";
                    }
                    else
                    {
                        data.name = model.name;
                        data.description = model.description;
                        foreach (var item in model.roles)
                        {
                            if (item.check && !data.asp_Role.Any(x => x.name == item.name))
                            {
                                var roleItem = db.asp_Role.FirstOrDefault(x => x.name == item.name);
                                if (roleItem != null)
                                {
                                    data.asp_Role.Add(roleItem);
                                }
                            }
                            else if (!item.check && data.asp_Role.Any(x => x.name == item.name))
                            {
                                var roleItem = db.asp_Role.FirstOrDefault(x => x.name == item.name);
                                if (roleItem != null)
                                {
                                    data.asp_Role.Remove(roleItem);
                                }
                            }
                        }
                        db.SaveChanges();                        
                        TempData["mess"] = "Đã cập nhật dữ liệu thành công";
                    }
                }
            }
            return RedirectToAction("ListGroup", new { id = model.id });
        }

        public ActionResult AddGroup()
        {
            return RedirectToAction("ListGroup", new { id = -1 });
        }

        public ActionResult DeleteGroup(int id = 0)
        {
            using (var db = new Entities())
            {
                var data = db.asp_Group.FirstOrDefault(x => x.id == id);
                if (data != null)
                {
                    var check = db.asp_User.FirstOrDefault(x => x.asp_Group.Any(g => g.id == data.id));
                    if (check == null)
                    {
                        db.asp_Group.Remove(data);
                        db.SaveChanges();                        
                        TempData["mess"] = "Bạn đã xóa dữ liệu thành công";
                    }
                    else
                    {
                        TempData["mess"] = "Nhóm quyền này đã có tài khoản sử dụng nên không thể xóa được";
                        return RedirectToAction("ListGroup", new { id = id });
                    }

                }
                return RedirectToAction("ListGroup");
            }
        }

        public ActionResult ListAccount(string id)
        {
            using (var db = new Entities())
            {
                var data = db.asp_User.ToList();
                if (string.IsNullOrEmpty(id) && data.Count > 0)
                {
                    id = data[0].account;
                }
                ViewBag.Id = id;
                return View(data);
            }
        }

        public ActionResult AddAccount()
        {
            return RedirectToAction("ListAccount", new { id = "0" });
        }

        [ChildActionOnly]
        public ActionResult Account(string id)
        {
            using (var db = new Entities())
            {
                var model = new CreateAccountModel();
                model.groups = db.asp_Group.Select(x => new GroupData { id = x.id, name = x.name, description = x.description }).ToList();
                var data = db.asp_User.FirstOrDefault(x => x.account == id);
                if (data != null)
                {
                    model.account = data.account;
                    model.name = data.userName;                    
                    //model.password
                    model.email = data.email;
                    model.edit = true;
                    foreach (var item in model.groups)
                    {
                        if (data.asp_Group.Any(x => x.id == item.id))
                        {
                            item.check = true;
                        }
                    }
                }
                return PartialView(model);
            }
        }

        [HttpPost]
        public ActionResult Account(CreateAccountModel model)
        {
            if (ModelState.IsValid)
            {
                using (var db = new Entities())
                {
                    var data = db.asp_User.FirstOrDefault(x => x.account == model.account);
                    if (data == null)
                    {
                        //check mat khau
                        if (string.IsNullOrEmpty(model.password))
                        {
                            TempData["mess"] = "Bạn chưa nhập mật khẩu";
                            return RedirectToAction("ListAccount", new { id = model.account });
                        }
                        data = new asp_User
                        {
                            account = model.account,
                            userName = model.name,                            
                            password = CoreFunction.GetMd5Hash(model.password),
                            email = model.email
                        };
                        foreach (var item in model.groups)
                        {
                            if (item.check && !data.asp_Group.Any(x => x.id == item.id))
                            {
                                var groupItem = db.asp_Group.FirstOrDefault(x => x.id == item.id);
                                if (groupItem != null)
                                {
                                    data.asp_Group.Add(groupItem);
                                }
                            }
                            else if (!item.check && data.asp_Group.Any(x => x.id == item.id))
                            {
                                var groupItem = db.asp_Group.FirstOrDefault(x => x.id == item.id);
                                if (groupItem != null)
                                {
                                    data.asp_Group.Remove(groupItem);
                                }
                            }
                        }
                        db.asp_User.Add(data);
                        db.SaveChanges();                        
                        TempData["mess"] = "Đã thêm dữ liệu thành công";
                    }
                    else if (model.edit)
                    {
                        data.userName = model.name;
                        if (!string.IsNullOrEmpty(model.password))
                        {
                            data.password = CoreFunction.GetMd5Hash(model.password);
                        }
                        data.email = model.email;                        
                        foreach (var item in model.groups)
                        {
                            if (item.check && !data.asp_Group.Any(x => x.id == item.id))
                            {
                                var groupItem = db.asp_Group.FirstOrDefault(x => x.id == item.id);
                                if (groupItem != null)
                                {
                                    data.asp_Group.Add(groupItem);
                                }
                            }
                            else if (!item.check && data.asp_Group.Any(x => x.id == item.id))
                            {
                                var groupItem = db.asp_Group.FirstOrDefault(x => x.id == item.id);
                                if (groupItem != null)
                                {
                                    data.asp_Group.Remove(groupItem);
                                }
                            }
                        }
                        db.SaveChanges();                        
                        TempData["mess"] = "Đã cập nhật dữ liệu thành công";
                    }
                    else
                    {
                        TempData["mess"] = "Tài khoản đã tồn tại";
                    }
                }
            }
            return RedirectToAction("ListAccount", new { id = model.account });
        }

        public ActionResult DeleteAccount(string id = "0")
        {
            using (var db = new Entities())
            {
                var data = db.asp_User.FirstOrDefault(x => x.account == id);
                if (data != null)
                {
                    db.asp_User.Remove(data);
                    db.SaveChanges();                    
                    TempData["mess"] = "Bạn đã xóa dữ liệu thành công";
                }
                return RedirectToAction("ListAccount");
            }
        }
    }
}
