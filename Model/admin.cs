using System;

namespace Model
{
    public class admin
    {
        public int id { get; set; }
        public string name { get; set; }
        public int? root { get; set; }
        public DateTime? crtime { get; set; }
        public int? state { get; set; }

        public string imurl { get; set; }
        public string pwd { get; set; }
    }
}