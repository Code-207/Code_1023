using Dapper;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;

namespace DAL
{
    public static class SqlHelper<T> where T : class, new()
    {
        private static readonly string constr = ConfigurationManager.ConnectionStrings["DapperCon"].ConnectionString;

        public static int ExceuteNonQuery(string sql, T model)
        {
            using (IDbConnection con = new SqlConnection(constr)) // 面向接口开发,降低耦合度
            {
                con.Open();
                return con.Execute(sql, model);
            }
        }
        public static int ExceuteNonQuery(string sql)
        {
            using (IDbConnection con = new SqlConnection(constr)) // 面向接口开发,降低耦合度
            {
                con.Open();
                return con.Execute(sql);
            }
        }

        public static IList<T> Query(string sql, T model)
        {
            
            using (IDbConnection con = new SqlConnection(constr))
            {
                con.Open();
                if (model == null)
                {
                    return con.Query<T>(sql).ToList();
                }

                return con.Query<T>(sql, model).ToList<T>();
            }
        }
        public async static Task<IList<T>> QueryAsync(string sql, T model)
        {

            using (IDbConnection con = new SqlConnection(constr))
            {
                con.Open();
                if (model == null)
                {
                    return con.Query<T>(sql).ToList();
                }
                var s =await con.QueryAsync<T>(sql, model);
                return s.ToList(); ;
            }
        }
    }
}
