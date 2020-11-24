using Model;
using Code10.Tool;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Code10.backstage.share
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
                return;
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Write("<script>暂不支持此功能</script>");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                var p = BackStages.Users<admin>.login(Acc.Text, Pwd.Text);
                Tool.Tool.Alert(p.name);
                if (p.id != 0)
                {
                    Tool.Tool.Alert(p.name);
                    Session["Name"] = p.name;
                    Session["Root"] = p.root;
                    Session["Img"] = p.imurl;
                    Response.Redirect("Index.aspx");
                }
                else
                {
                    Tool.Tool.Alert("登录失败");
                }
            }
            catch (Exception exception)
            {
                Tool.Tool.Alert("登录失败");
            }
           
        }
    }
}