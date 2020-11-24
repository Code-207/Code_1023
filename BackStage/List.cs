using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;
using System.Web.UI.WebControls.WebParts;
using Model;

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

        /// <summary>
        ///  数据库分页方法
        /// </summary>
        /// <param name="name">Table_Name</param>
        /// <param name="size">每页条数</param>
        /// <param name="pageIndex">页码</param>
        /// <returns></returns>
        public static IList<T> GetObj(string name,int size,int pageIndex)
        {
            
                string sql = $"SELECT TOP {size} * FROM {name} WHERE id NOT IN(SELECT TOP {(pageIndex-1) * size} id FROM {name} ORDER BY ID asc) ORDER BY ID asc";

                return DAL.SqlHelper<T>.Query(sql, null);

            
        }
        public static IList<T> GetObj(string name)
        {
            return DAL.SqlHelper<T>.Query("select * from " + name + "", null);
        }
        public static int DelObj(string name,int id)
        {
            //if (name == "product")
            //{
            //    return DAL.SqlHelper<T>.ExceuteNonQuery("delete from " + name + " where product_id = " + id + "");
            //}
            //else
            //{
                return DAL.SqlHelper<T>.ExceuteNonQuery("delete from " + name + " where id = " + id + "");

            //}

           
        }
        public static int GetAdmin(admin o)
        {
            string sql = "update admin set name = @name,imurl=@imurl,pwd=@pwd where id = @id";
            return DAL.SqlHelper<Model.admin>.ExceuteNonQuery(sql, o);
        }

        public static int GetIndent(indent hps)
        {
            string sql = "update indent set indent_name= @indent_name,indent_phone=@indent_phone,indent_mail=@indent_mail,indent_site=@indent_site where id =@id";
            return DAL.SqlHelper<Model.indent>.ExceuteNonQuery(sql, hps);
        }

        public static int Getproduct(product a)
        {
            string sql = "update product set product_name= @product_name,product_intro=@product_intro,product_imageurl=@product_imageurl,product_price=@product_price,product_content=@product_content where id =@id";
            return DAL.SqlHelper<Model.product>.ExceuteNonQuery(sql, a);
        }
    }
}
