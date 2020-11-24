using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Code10.Tool;

namespace Code10.backstage.fangying
{
    public partial class upt : System.Web.UI.Page
    {
        public static Model.fangying Hq;
        public static string[] Dizhi;
        public static int i;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                i = int.Parse(Request[ID]);
            }
            catch (Exception exception)
            {
                i = 1;
            }
            
            Hq = BLL.Product.Getfangying(i);
            at.Value = Hq.fangying_text;
            title.Value = Hq.fangying_title;
            Image1.ImageUrl = "../img/fangying/" + Hq.fangying_imageurl;
        }

        protected void Button1_OnClick(object sender, EventArgs e)
        {
            Tool.UpFile a = new UpFile();
            Model.fangying hps = new Model.fangying()
            {
                fangying_text = at.Value,
                fangying_title=title.Value,
                fangying_imageurl = a.upFileName(this.Image1, this.FileUpload1, "../img/fangying/")
            };
            _ = BackStages.Upt.UpFy(hps) > 0 ? Tool.Tool.Alert("True", "../img/fangying/" + Hq.fangying_imageurl) : Tool.Tool.Alert("False");
        }
    }
}