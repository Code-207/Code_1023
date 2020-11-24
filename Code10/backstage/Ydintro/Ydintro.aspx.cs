using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Code10.Tool;
using Model;

namespace Code10.backstage.Ydintro
{
    public partial class Ydintro : System.Web.UI.Page
    {
        public static Model.Ydintro Hq;
        public static string[] Dizhi;
        protected void Page_Load(object sender, EventArgs e)
        {
            Hq = BLL.Product.GetYdintro()[0];
            at.Value = Hq.content;
            Image1.ImageUrl = "../img/Ydintro/" + Hq.imgurl;
        }

        protected void Button1_OnClick(object sender, EventArgs e)
        {
            Tool.UpFile a = new UpFile();
            Model.Ydintro hps = new Model.Ydintro()
            {
                content = at.Value,
                imgurl = a.upFileName(this.Image1,this.FileUpload1,"../img/Ydintro/")
            };
            _ = BackStages.Upt.UpYdintro(hps) > 0 ? Tool.Tool.Alert("True", "../img/Ydintro/" + Hq.imgurl) : Tool.Tool.Alert("False");
        }
    }
}