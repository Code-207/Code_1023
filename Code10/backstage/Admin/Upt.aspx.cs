using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Code10.Tool;
using Model;

namespace Code10.backstage.Admin
{
    public partial class Upt : System.Web.UI.Page
    {
        public static Model.admin Hq;
        public static string[] Dizhi;
        public static int i = 1;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
                return;
            //Tool.Admin.admin();
            try
            {
                i = int.Parse(Request["id"]);
                admin a = new admin()
                {
                    id = i
                };
                Hq = BLL.Product.GetAdmin(a);
            }
            catch (Exception exception)
            {
                i = 11;
                admin a = new admin()
                {
                    id = i
                };
                Hq = BLL.Product.GetAdmin(a);
            }

            Name.Text = Hq.name;
            Image1.ImageUrl = "../img/admin/" + Hq.imurl;
        }

        protected void Button1_OnClick(object sender, EventArgs e)
        {
            Tool.UpFile a = new UpFile();
            if (OPwd.Text == Hq.pwd && NPwd.Text == Pwd.Text)
            {
                admin hps = new admin()
                {
                    pwd = Pwd.Text,
                    name = Name.Text,
                    imurl = a.upFileName(this.FileUpload1, "../img/admin/")
                };
                _ = BackStages.List<Model.admin>.GetAdmin(hps) > 0 ? Tool.Tool.Alert("True", "../img/admin/" + Hq.imurl) : Tool.Tool.Alert("False");
            }
            else
            {
                Tool.Tool.Alert("某项输入不合法");
            }

        }
    }
}