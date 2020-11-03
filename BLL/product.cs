using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace BLL
{
    public class Product
    {
        public static IList<Model.product> GetList()
        {
           return DAL.SqlHelper<Model.product>.Query("select top 2* from product ", null);
        }

        public static IList<Model.product> GetProductS(int id )
        {
            return DAL.SqlHelper<Model.product>.Query("select * from product where id ="+id+"", null);
        }
        public static int AddIndents(indent sIndent)
        {

            return DAL.SqlHelper<indent>.ExceuteNonQuery("insert into indent(indent_name,indent_phone,product_id,indent_mail,indent_site)values(@indent_name,@indent_phone,@product_id,@indent_mail,@indent_site)", model: sIndent);
        }
        public static IList<Model.About> GetAbout()
        {
            return DAL.SqlHelper<Model.About>.Query("select * from About", null);
        }
        public static IList<Model.hp> GetHp()
        {
            return DAL.SqlHelper<Model.hp>.Query("select * from hq", null);
        }
        public static IList<Model.fangying> GetFangYang(int id)
        {
            return DAL.SqlHelper<Model.fangying>.Query("select * from fangying where id=" + id+"", null);
        }
        public static IList<Model.fangying> GetFangYang()
        {
            return DAL.SqlHelper<Model.fangying>.Query("select top 3* from fangying where id%2=0", null);
        }
    }
}
