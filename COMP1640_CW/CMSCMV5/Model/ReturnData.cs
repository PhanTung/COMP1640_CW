using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CMSCMV5.Models
{
    public class ReturnData<T>
    {
        public bool success { get; set; }
        public int? error { get; set; }
        public string errortxt { get; set; }
        public T data { get; set; }
    }

    public class ReturnPageData<T>
    {
        public ReturnPageData()
        {
            paging = new Paging();
        }
        public bool success { get; set; }
        public int? error { get; set; }
        public Paging paging { get; set; }
        public T data { get; set; }
    }

    public class Paging
    {
        public int page { get; set; }

        public int pagesize { get; set; }

        public int total { get; set; }
    }

    public class RevertDataModel
    {
        public string multicast_id { get; set; }

        public int success { get; set; }

        public int failure { get; set; }

        public int canonical_ids { get; set; }

        public Results[] results { get; set; }
    }

    public class Results
    {
        public string message_id { get; set; }

        public string registration_id { get; set; }

        public string error { get; set; }
    }

    public class ResultCard
    {
        public string Status { get;set;}

        public string Message { get; set; }

        public string Amount { get; set; }

        public string TransId { get; set; }
    }
}