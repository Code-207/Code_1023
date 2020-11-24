using System;
using System.Collections.Generic;
using System.Text;

namespace Model
{
    public class fangying
    {
        public int id { get; set; }
        public string fangying_title { get; set; }
        public System.DateTime fangying_time { get; set; }
        public string fangying_text { get; set; }
        public DateTime? crtime { get; set; }
        public DateTime? uptime { get; set; }
        public int? state { get; set; }
        public string fangying_imageurl { get; set; }

       
    }
}
