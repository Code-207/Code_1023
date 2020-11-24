using System;
using Model;

namespace BackStages
{
    public class Users<T> where T:class,new()
    {
        public static Model.admin login(string acc,string pwd) {

            try
            {
                return DAL.SqlHelper<admin>.Query($"select top 1 * from admin where name='{acc}' and pwd = {pwd}", null)[0];
            }
            catch (Exception )
            {
                return null;
            }
           
        }
    }
}
