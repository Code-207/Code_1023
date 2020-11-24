using Model;
using System;

namespace BackStages
{
    public class Upt
    {
        public static int UptHp(Model.hp hp)
        {
            string sql = $"update hq set hq_phone='{hp.hq_phone}',hq_fax='{hp.hq_fax}',hq_emil='{hp.hq_emil}',hq_name='{hp.hq_name}',hq_site='{hp.hq_site}',Img_url='{hp.Img_url}'";
             DAL.SqlHelper<hp>.ExceuteNonQuery(sql);
            return DAL.SqlHelper<hp>.ExceuteNonQuery(sql); ;
        }
        public static int UpAbout(Model.About hp)
        {
            string sql = $"update about set about_siteurl='{hp.about_siteurl}',about_site='{hp.about_site}',about_linkman='{hp.about_linkman}',about_phone='{hp.about_phone}'";
            DAL.SqlHelper<hp>.ExceuteNonQuery(sql);
            return DAL.SqlHelper<hp>.ExceuteNonQuery(sql); ;
        }

        public static int UpYdintro(Model.Ydintro hp)
        {
            string sql = $"update Ydintro set content='{hp.content}',imgurl='{hp.imgurl}'";
            DAL.SqlHelper<hp>.ExceuteNonQuery(sql);
            return DAL.SqlHelper<hp>.ExceuteNonQuery(sql); ;
        }

        public static int UpFy(fangying hps)
        {
            string sql = $"update fangying set fangying_title=@fangying_title,fangying_text=@fangying_text,fangying_imageurl=@fangying_imageurl where id = @id ";
            return DAL.SqlHelper<fangying>.ExceuteNonQuery(sql,hps); ;
        }

        public static int UpTD(tuandui hps)
        {
            string sql = $"update tuandui set name=@name,iamgeurl=@iamgeurl,title=@title,intof=@intof where id = @id ";
            return DAL.SqlHelper<tuandui>.ExceuteNonQuery(sql, hps); ;
        }
    }
}