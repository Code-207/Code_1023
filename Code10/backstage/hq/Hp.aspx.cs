using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Code10.Tool;
using Model;

namespace Code10.backstage.hq
{
    public partial class Hp : System.Web.UI.Page
    {
        public static Model.hp Hq;
        public static string[] Dizhi;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
                return;
            Tool.Admin.admin();
            Hq = BLL.Product.GetHp()[0];
            Name.Text = Hq.hq_name;
            emlia.Text = Hq.hq_emil;
            Fox.Text = Hq.hq_fax;
            Phone.Text = Hq.hq_phone;
            Dizhi = Hq.hq_site.Split('/');
            try
            {
                TextBox1.Text = Dizhi[3];
            }
            catch (Exception exception)
            {
                Console.WriteLine(exception);
                throw;
            }
            
            Image1.ImageUrl = "../img/" + Hq.Img_url;
        }

        protected void Button1_OnClick(object sender, EventArgs e)
        {
            Tool.UpFile a=new UpFile();
            hp hps =new hp()
            {
               hq_name = Name.Text,
               hq_emil =  emlia.Text,
               hq_fax = Fox.Text,
               hq_phone = Phone.Text,
               hq_site = dis.Text,
               Img_url =a.upFileName(Image1,this.FileUpload1,"../img/")
            };
            _ = BackStages.Upt.UptHp(hps) > 0 ? Tool.Tool.Alert("True",Hq.Img_url) : Tool.Tool.Alert("False");
        }
    }
}