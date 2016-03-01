using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CMSCMV5.Areas.Admin.Models
{
    public class CommentModel
    {
        public int id { get; set; }

        public string name { get; set; }

        public string avata { get; set; }

        public string comment { get; set; }
    }
}