using Model;

namespace BackStages
{
    public class Users<T> where T:class,new()
    {
        public static Model.admin login<T>(string acc,string pwd) {

            return DAL.SqlHelper<admin>.Query($"select top 1 * from admin where name='{acc}' and pwd = {pwd}",null)[0];
        }
    }
}
