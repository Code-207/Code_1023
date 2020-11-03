using System;

namespace Code10.Models
{
    public class admin
    {
        public int id { get; set; }
        public string name { get; set; }
        public bool? root { get; set; }
        public DateTime? crtime { get; set; }
        public int? state { get; set; }
    }
}