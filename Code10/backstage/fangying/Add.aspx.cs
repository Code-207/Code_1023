using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;

namespace Code10.backstage.fangying
{
    public partial class Add : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
                return;
            //Tool.Admin.admin();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Tool.UpFile t=new Tool.UpFile();
            Model.fangying admin=new Model.fangying()
            {
                fangying_title = fangying_title.Text,
                fangying_time = DateTime.Parse(fangying_time.Text),
                fangying_text = at.Value,
                fangying_imageurl = t.upFileName(this.Img,"../img/fangying/")
            };
            _ = BackStages.Add<Model.admin>.AddFangying(admin) > 0 ? Tool.Tool.Alert("True") : Tool.Tool.Alert("False");
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
                 p.StartInfo.UseShellExecute = false;
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