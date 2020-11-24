using System;
using System.Collections.Generic;
using System.Text;

namespace Model
{
    public class hp
    {
        public Guid id { get; set; }
        public string hq_phone { get; set; }
        public string hq_fax { get; set; }
        public string hq_emil { get; set; }
        public string hq_name { get; set; }
        public Nullable<System.DateTime> crtime { get; set; }
        public Nullable<System.DateTime> uptime { get; set; }
        public Nullable<int> state { get; set; }
        public string hq_site { get; set; }
        public string Img_url { get; set; }

        
    }
}
