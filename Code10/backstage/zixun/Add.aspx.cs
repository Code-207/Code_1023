using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Code10.backstage.zixun
{
    public partial class Add : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Tool.UpFile t = new Tool.UpFile();
            Model.zixun admin = new Model.zixun()
            {
                title = Name.Text,
                name = Name.Text,
                imgurl = t.upFileName(this.FileUpload1,"../img/zixun/"),
                content = contexta.Value
            };
            _ = BackStages.Add<Model.zixun>.AddZx(admin) > 0 ? Tool.Tool.Alert("True","../img/zixun/"+admin.imgurl) : Tool.Tool.Alert("False");
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