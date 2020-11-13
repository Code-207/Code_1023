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
            Response.Write("暂不支持此功能");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var p = BackStages.Users<admin>.login<Model.admin>(Acc.Text,Pwd.Text);
            if (p.id != 0)
            {
                Session["Name"] = p.name;
                Session["Root"] = p.root;
                Session["img"] = p.imurl;
                Response.Redirect("Index.aspx");
            }
            else 
            {
                Response.Write("输入错误");
            }
        }
    }
}