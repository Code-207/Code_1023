using System;

namespace Model
{
    public class jieshu
    {
        public int id { get; set; }
        public string jieshu_name { get; set; }
        public string jieshu_title { get; set; }
        public string jieshu_press { get; set; }
        public string jieshu_intro { get; set; }
        public string jieshu_imageurl { get; set; }
        public int jieshu_price { get; set; }
        public string jieshu_Directory { get; set; }
        public DateTime? crtime { get; set; }
        public DateTime? uptime { get; set; }
        public int? state { get; set; }
        public string jieshu_section { get; set; }
    }
}