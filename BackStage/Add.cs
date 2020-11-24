using System.Data.SqlClient;
using System.Runtime.InteropServices;
using Model;

namespace BackStages
{
    public class Add<T> where T : class, new()
    {
        public static int AddAdmin(T t)
        {
            string sql = "insert into admin(name,imurl,root,pwd)values(@name,@imurl,@root,@pwd)";
            return DAL.SqlHelper<T>.ExceuteNonQuery(sql, t);
        }
        public static int AddBook(T t)
        {
            string sql = "insert into jieshu(jieshu_name,jieshu_title,jieshu_press,jieshu_intro,jieshu_imageurl,jieshu_price,jieshu_Directory,jieshu_section)values(@jieshu_name,@jieshu_title,@jieshu_press,@jieshu_intro,@jieshu_imageurl,@jieshu_price,@jieshu_Directory,@jieshu_section)";
            return DAL.SqlHelper<T>.ExceuteNonQuery(sql, t);
        }
        public static int AddPro(T t)
        {
            string sql = "insert into product(product_name,product_intro,product_imageurl,product_price,product_content)values(@product_name,@product_intro,@product_imageurl,@product_price,@product_content)";
            return DAL.SqlHelper<T>.ExceuteNonQuery(sql, t);
        }

        public static int AddFangying(fangying admin)
        {
            string sql = "insert into fangying(fangying_title,fangying_time,fangying_text,fangying_imageurl)values(@fangying_title,@fangying_time,@fangying_text,@fangying_imageurl)";
            return DAL.SqlHelper<fangying>.ExceuteNonQuery(sql, admin);
        }

        public static int AddZx(zixun admin)
        {
            string sql = "insert into zixun(title,content,name,imgurl)values(@title,@content,@name,@imgurl)";
            return DAL.SqlHelper<zixun>.ExceuteNonQuery(sql, admin);
        }
    }
}