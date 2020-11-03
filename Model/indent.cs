using System;
using Code10.Models;

namespace Model
{
    public class indent
    {
        public int id { get; set; }
        public string indent_name { get; set; }
        public string indent_phone { get; set; }
        public int? product_id { get; set; }
        public DateTime? crtime { get; set; }
        public DateTime? uptime { get; set; }
        public int? state { get; set; }
        public string indent_mail { get; set; }
        public string indent_site { get; set; }

        public virtual product product { get; set; }
    }
}