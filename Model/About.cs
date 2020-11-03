using System;
using System.Collections.Generic;
using System.Text;

namespace Model
{
    public class About
    {
        public Guid id { get; set; }
        public string product_name { get; set; }
        public string about_site { get; set; }
        public string about_siteurl { get; set; }
        public Nullable<System.DateTime> crtime { get; set; }
        public Nullable<System.DateTime> uptime { get; set; }
        public Nullable<int> state { get; set; }
        public string about_linkman { get; set; }
        public string about_phone { get; set; }
    }
}
