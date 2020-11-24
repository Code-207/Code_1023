using Model;
using Code10.Tool;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Code10.backstage.Admin
{
    public partial class Admin : System.Web.UI.Page
    {
        public static int page = 1;
        public static int Count=1;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (IsPostBack)
                return;
            Tool.Admin.admin();
            Session["Web_Url"] = "admin.aspx";
            try
            {
                Count = Tool.Page<admin>.TotalPage(4);
                string str = Request["id"];
                page = int.Parse(str);
                rep.DataSource = BackStages.List<admin>.GetObj("admin", 4, page);
                rep.DataBind();
            }
            catch (Exception)
            {
                
                rep.DataSource = BackStages.List<admin>.GetObj("admin", 4, page);
                rep.DataBind();
            }
        }
    }
}