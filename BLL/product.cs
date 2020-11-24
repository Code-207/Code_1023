using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace BLL
{
    public class Product
    {
        public  static IList<Model.product> GetList()
        {
            return DAL.SqlHelper<Model.product>.Query("select top 2* from product ", null).ToList();
        }

        public static IList<Model.product> GetProductS(int id )
        {
            return DAL.SqlHelper<Model.product>.Query("select * from product where id ="+id+"", null);
        }

        public static IList<Model.jieshu> GetJs()
        {
            return DAL.SqlHelper<Model.jieshu>.Query("select top 4 * from jieshu ", null);
        }
        public static IList<Model.jieshu> GetJs(int id)
        {
            return DAL.SqlHelper<Model.jieshu>.Query("select top 4 * from jieshu where id = "+id+"", null);
        }
        public static int AddIndents(indent sIndent)
        {

            return DAL.SqlHelper<indent>.ExceuteNonQuery("insert into indent(indent_name,indent_phone,product_id,indent_mail,indent_site)values(@indent_name,@indent_phone,@product_id,@indent_mail,@indent_site)", model: sIndent);
        }
        public static IList<Model.hp> GetHp()
        {
            return DAL.SqlHelper<Model.hp>.Query("select * from hq", null);
        }
        public static IList<Model.Ydintro> GetYdintro()
        {
            return DAL.SqlHelper<Model.Ydintro>.Query("select top 1 * from Ydintro", null);
        }
       
        public static IList GetAbout()
        {
            return DAL.SqlHelper<Model.About>.Query("select top 1 * from about", null).ToList();
        }
        public static IList<Model.hp> GetZiXun()
        {
            return DAL.SqlHelper<Model.hp>.Query("select * from zo", null);
        }
        public static IList<Model.fangying> GetFangYang(int id)
        {
            return DAL.SqlHelper<Model.fangying>.Query("select * from fangying where id=" + id+"", null);
        }
        public static IList<Model.fangying> GetFangYang()
        {
            return DAL.SqlHelper<Model.fangying>.Query("select top 3* from fangying where id%2=0", null);
        }
        public static IList<Model.President> GetPRE()
        {
            return DAL.SqlHelper<Model.President>.Query("select top 3* from President", null);
        }
        public static IList<Model.Ydintro> GetYd()
        {
            return DAL.SqlHelper<Model.Ydintro>.Query("select top 1 * from Ydintro", null);
        }
        public static IList<Model.tuandui> GetTuan()
        {
            return DAL.SqlHelper<Model.tuandui>.Query("select * from tuandui", null);
        }
        public static int AddJs(jsindent jsIndent)
        {
            return DAL.SqlHelper<jsindent>.ExceuteNonQuery("insert into jsindent(jsindent_name,jsindent_phone,jsindent_id,jsindent_mail,jsindent_site)values(@jsindent_name,@jsindent_phone, @jsindent_id, @jsindent_mail, @jsindent_site)", model: jsIndent);
        }

        public static Model.fangying Getfangying(int id)
        {
            return DAL.SqlHelper<Model.fangying>.Query("select top  1 * from fangying where id="+id+"", null)[0];
        }

        public static admin GetAdmin(admin o)
        {
            string sql = "select * from admin where id = @id";
           return DAL.SqlHelper<Model.admin>.Query(sql, o)[0];
        }

        public static indent GetIndent(indent indent)
        {
            string sql = "select * from indent where id = @id";
            return DAL.SqlHelper<Model.indent>.Query(sql, indent)[0];
        }

        public static product Getproduct(product p0)
        {
            string sql = "select * from product where id = @id";
            return DAL.SqlHelper<Model.product>.Query(sql, p0)[0];
        }

        public static tuandui Gettuandui(tuandui p0)
        {
            string sql = "select * from tuandui where id = @id";
            return DAL.SqlHelper<Model.tuandui>.Query(sql, p0)[0];
        }
    }
}
