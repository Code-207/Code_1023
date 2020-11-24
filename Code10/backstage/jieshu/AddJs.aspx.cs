using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;

namespace Code10.backstage.jieshu
{
    public partial class AddJs : System.Web.UI.Page
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
                jieshu_name=jieshu_name.Text,
                jieshu_title=jieshu_title.Text,
                jieshu_Directory = jieshu_Directory.Text,
                jieshu_imageurl = t.upFileName(this.Img,"../img/Book/"),
                jieshu_intro =jieshu_intro.Text,
                jieshu_press = jieshu_press.Text,
                jieshu_price = int.Parse(jieshu_price.Text),
                jieshu_section = jieshu_section.Text
            };
            _ = BackStages.Add<Model.jieshu>.AddBook(admin) > 0 ? Tool.Tool.Alert("True") : Tool.Tool.Alert("False");
            try
            {
                Response.Redirect(Session["Web_Url"].ToString());
            }
            catch (Exception exception)
            {
                Response.Redirect("Admin.aspx");
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect(Session["Web_Url"].ToString());
        }
    }
}