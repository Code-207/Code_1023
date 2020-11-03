using Dapper;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;


namespace DAL
{
    public static class SqlHelper<T> where T : class, new()
    {
        private static readonly string Constr = ConfigurationManager.ConnectionStrings["DapperCon"].ConnectionString;

        public static string ExceuteNonQuery(string sql)
        {

            using (IDbConnection con = new SqliteConnection("server=.;database=yingting;uid=sa;password=11"))
            {

                con.Open();
                //return con.Execute(sql, model);
                return con.Database;
            }

        }

        public static IList<T> Query(string sql, T model)
        {
            using (IDbConnection con = new SqlConnection(Constr))
            {
                con.Open();
                if (model == null)
                {
                    return con.Query<T>(sql).ToList();
                }

                return con.Query<T>(sql, model).ToList();
            }


        }

    }
}