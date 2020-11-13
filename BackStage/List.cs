using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;

namespace BackStages
{
    public class List<T> where T : class, new()
    {
        public static ArrayList Table_name() {
            ArrayList list = new ArrayList();
            foreach (var item in Assembly.Load("Model").GetTypes())
            {
                list.Add(item.Name);
            }
            return list;
        }

        public static IList<T> GetObj(string name,int size,int page)
        {
            string sql = $"select * from(select top {size} *from(select top({page} * {size}) *from {name} order by crtime asc)as admin order by crtime desc) crtime order by crtime asc";
            return DAL.SqlHelper<T>.Query(sql, null);
        }
        public static IList<T> GetObj(string name)
        {
            return DAL.SqlHelper<T>.Query("select * from " + name + "", null);
        }
        public static int DelObj(string name,int id)
        {
            return DAL.SqlHelper<T>.ExceuteNonQuery("delete from " + name + " where id = "+id+"");
        }
    }
}
