using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Code10.Tool
{
    public class Page<T> where T:class,new()
    {
        /// <summary>
        ///  分页方法
        /// </summary>
        /// <param name="size">每页尺寸</param>
        /// <returns>应分的总页数</returns>
        public static int TotalPage(int size) {
            int count = BackStages.List<T>.GetObj(typeof(T).Name).Count;
            return count % size == 0 ? count / size : count / size + 1;
        }
    }
}