using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CMSCMV5.Areas.Admin.Models
{
    public class OrdersModel
    {
        public int Id { get; set; }
        public int Tourid { get; set; }
        public int Quantity { get; set; }
        public float price { get; set; }

        public int typepay { get; set; }
        public int typebill { get; set; }

        public string bookdate { get; set; }

        public string modedate { get; set; }

    }

    public class MemberInfoModel
    {

        public int id { get; set; }

        public string firtName { get; set; }

        public string lastName { get; set; }

        public string phone { get; set; }

        public string email { get; set; }

        public string bithday { get; set; }

        public string gender { get; set; }

        public string country { get; set; }

        public string passport {get;set;}

        public string nationality { get; set; }

        public string note { get; set; }
    }
}