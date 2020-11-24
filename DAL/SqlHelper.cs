using System;
using Dapper;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public static class SqlHelper<T> where T : class, new()
    {
        private static readonly string constr = ConfigurationManager.ConnectionStrings["DapperCon"].ConnectionString;
        public static void Log(string sql)
        {
            using (FileStream stream = File.Open("C:/Users/admin/source/repos/Code_1023/Code10/text/Sql.log", FileMode.Append))
            {
                BinaryWriter bw = new BinaryWriter(stream, Encoding.UTF8);
                bw.Write($"\r\r\n时间：{DateTime.Now}\r\r\n");
                bw.Write($"Sql：{sql}");

            }
        }
        public static int ExceuteNonQuery(string sql, T model)
        {
            Log(sql);
            using (IDbConnection con = new SqlConnection(constr)) // 面向接口开发,降低耦合度
            {
                con.Open();
                return con.Execute(sql, model);
            }
        }
        public static int ExceuteNonQuery(string sql)
        {
            Log(sql);
            using (IDbConnection con = new SqlConnection(constr)) // 面向接口开发,降低耦合度
            {
                con.Open();
                
                    return con.Execute(sql);
            }
        }
        public static async Task<int> ExceuteNonQueryAsync(string sql)
        {
            using (IDbConnection con = new SqlConnection(constr)) // 面向接口开发,降低耦合度
            {
                con.Open();
                return await con.ExecuteAsync(sql);
            }
        }

        public static IList<T> Query(string sql, T model)
        {
            Log(sql);
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
