using System;
using System.IO;
using System.Text;

namespace Code10.Tool
{
    public class LogIo
    {
        public static void Log(string sql)
        {
            using (FileStream stream=File.Open("text/sql.log",FileMode.Append))
            {
                BinaryWriter bw=new BinaryWriter(stream,Encoding.UTF8);
                bw.Write($"时间：{DateTime.Now}");
                bw.Write($"Sql：{sql}");
                
            }
        }
    }
}