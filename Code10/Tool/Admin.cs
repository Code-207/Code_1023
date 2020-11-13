using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;


namespace Code10.Tool
{
    public class Admin : System.Web.UI.Page
    {
        public static void admin( ) {
            if (HttpContext.Current.Session["Name"] == null)
                HttpContext.Current.Response.Redirect("../share/login.aspx");
        }
    }
}