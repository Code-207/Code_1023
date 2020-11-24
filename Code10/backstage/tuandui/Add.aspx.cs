using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Code10.backstage.tuandui
{
    public partial class Add : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
                return;
            Tool.Admin.admin();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Tool.UpFile t = new Tool.UpFile();
            Model.jieshu admin = new Model.jieshu()
            {
            };
            _ = BackStages.Add<Model.jieshu>.AddBook(admin) > 0 ? Tool.Tool.Alert("True") : Tool.Tool.Alert("False");
            try
            {
                Response.Redirect(Session["Web_Url"].ToString());
            }
            catch (Exception)
            {
                Response.Redirect("~/backstage/tuandui/tuandui.aspx");
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect(Session["Web_Url"].ToString());
        }
    }
}