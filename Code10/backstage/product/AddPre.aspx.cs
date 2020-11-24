using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Code10.Tool;

namespace Code10.backstage.product
{
    public partial class AddPre : System.Web.UI.Page
    {
        //insert into product(product_name,product_intro,product_imageurl,product_price,product_content)
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
                return;
           Tool.Admin.admin();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Tool.UpFile up=new UpFile();
            Tool.UpFile t = new Tool.UpFile();
            Model.product product = new Model.product()
            {
                product_name = Name.Text,
                product_intro= intro.Text,
                product_imageurl=up.upFileName(this.Img, "../img/product/"),
                product_content = content.Text,
                product_price = int.Parse(price.Text)
            };
            _ = BackStages.Add<Model.product>.AddPro(product) > 0 ? Tool.Tool.Alert("True") : Tool.Tool.Alert("False");
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
                Response.Redirect("product.aspx");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect(Session["Web_Url"].ToString());
        }
    }
}