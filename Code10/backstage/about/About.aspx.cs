using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Code10.Tool;
using Model;

namespace Code10.backstage.about
{
    public partial class About : System.Web.UI.Page
    {
        public static Model.About Hq;
        public static string[] Dizhi;
        protected void Page_Load(object sender, EventArgs e)
        {
            Hq = (Model.About)BLL.Product.GetAbout()[0];
            Name.Text = Hq.about_linkman;
            Phone.Text = Hq.about_phone;
            Dizhi = Hq.about_site.Split('/');
            TextBox1.Text = Dizhi[3];
            Image1.ImageUrl = "../img/about/" + Hq.about_siteurl;
        }

        protected void Button1_OnClick(object sender, EventArgs e)
        {
            Tool.UpFile a = new UpFile();
            Model.About hps = new Model.About()
            {
                about_linkman = Name.Text,
                about_phone = Phone.Text,
                about_site = dis.Text,
                about_siteurl = a.upFileName(Image1, this.FileUpload1, "../img/about/")
            };
            _ = BackStages.Upt.UpAbout(hps) > 0 ? Tool.Tool.Alert("True","about/"+ Hq.about_siteurl) : Tool.Tool.Alert("False");
        }
    }
}