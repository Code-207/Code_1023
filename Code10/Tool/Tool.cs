using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Code10.Tool
{
    public class Tool:Page
    {
        public static void Script(string code)
        {
            HttpContext.Current.Response.Write($"<Script>{code}</Script>");
        }
        public static string Alert(string Val,string url)
        {
            HttpContext.Current.Response.Write($"<Script>alert('{Val}')</Script>");
            string file = System.Web.HttpContext.Current.Server.MapPath(url);

            if (System.IO.File.Exists(file))
            {
                System.IO.File.Delete(file);
            }

            return Val;
        }
        public static string Alert(string Val)
        {
            HttpContext.Current.Response.Write($"<Script>alert('{Val}')</Script>");
            return Val;
        }
        public static void Console(string Val)
        {
            HttpContext.Current.Response.Write($"<Script>console.log('{Val}')</Script>");
        }
        public static void Refresh()
        {
            HttpContext.Current.Response.Write($"<Script>location.reload();</Script>");
        }
    }
}