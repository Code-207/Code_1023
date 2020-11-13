using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Code10.Tool
{
    public class Page<T> where T:class,new()
    {
        public static int TotalPage(int size) {
            int count = BackStages.List<T>.GetObj(typeof(T).Name).Count;
            return count % size == 0 ? count / size : count / size + 1;
        }
    }
}