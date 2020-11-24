using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;
using Code10.Tool;

namespace Code10.backstage.Admin
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
            Tool.UpFile t=new Tool.UpFile();
            Model.admin admin=new admin()
            {
                name = Name.Text,
                pwd = pwd.Text,
                root = int.Parse(root.Text),
                imurl = t.upFileName(this.Img,"../img/admin/")
            };
            _ = BackStages.Add<Model.admin>.AddAdmin(admin) > 0 ? Tool.Tool.Alert("True") : Tool.Tool.Alert("False");
            try
            {
                Response.Redirect(Session["Web_Url"].ToString());
            }
            catch (Exception exception)
            {
                Process p = new Process();
                //设置要启动的应用程序
                 p.StartInfo.FileName = "cmd.exe";
                 p.StartInfo.RedirectStandardInput = true;
                 //输出信息
                 p.StartInfo.RedirectStandardOutput = true;
                 // 输出错误
                 p.StartInfo.RedirectStandardError = true;
                 //不显示程序窗口
                 p.StartInfo.CreateNoWindow = true;
                 //启动程序
                 p.Start();
                 p.StandardInput.WriteLine(exception);
                 p.StandardInput.AutoFlush = true;
                Console.WriteLine();
               Response.Redirect("Admin.aspx");
            }
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect(Session["Web_Url"].ToString());
        }
    }
}