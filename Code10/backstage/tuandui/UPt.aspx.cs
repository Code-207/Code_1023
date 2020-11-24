using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Code10.Tool;

namespace Code10.backstage.tuandui
{
    public partial class UPt : System.Web.UI.Page
    {
        public static Model.tuandui Hq;
        public static string[] Dizhi;
        public static int i;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                i = int.Parse(Request["id"]);
                Model.tuandui a = new Model.tuandui()
                {
                    id = i
                };
                Hq = BLL.Product.Gettuandui(a);
            }
            catch (Exception)
            {
                i = 1;
                Model.tuandui a = new Model.tuandui()
                {
                    id = i
                };
                Hq = BLL.Product.Gettuandui(a);
            }
            intof.Value = Hq.intof;
            name.Text = Hq.name;
            Title.Text = Hq.title;
            Image1.ImageUrl = "../img/tuandui/" + Hq.iamgeurl;
        }

        protected void Button1_OnClick(object sender, EventArgs e)
        {
            Tool.UpFile a = new UpFile();
            Model.tuandui hps = new Model.tuandui()
            {
                name = name.Text,
                intof = intof.Value,
                iamgeurl = a.upFileName(this.Image1, this.FileUpload1, "../img/tuandui/"),
                title = Title.Text
            };
            _ = BackStages.Upt.UpTD(hps) > 0 ? Tool.Tool.Alert("True", "../img/fangying/" + Hq.iamgeurl) : Tool.Tool.Alert("False");
        }
    }
}