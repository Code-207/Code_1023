using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Code10.Tool;
using Model;

namespace Code10.backstage.product
{
    public partial class upt : System.Web.UI.Page
    {
        public static Model.product Hq;
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
                Model.product a = new Model.product()
                {
                    id = i
                };
                Hq = BLL.Product.Getproduct(a);
            }
            catch
            {
                i = 1;
                Model.product a = new Model.product()
                {
                    id = i
                };
                Hq = BLL.Product.Getproduct(a);
            }

            product_name.Text = Hq.product_name;
            product_intro.Text = Hq.product_name;
            Image1.ImageUrl = "../img/product/" + Hq.product_imageurl;
            product_price.Text = Hq.product_price.ToString();
            product_content.Value = Hq.product_content;
            product_content.Rows = 12;
            product_content.Cols = 60;
        }

        protected void Button1_OnClick(object sender, EventArgs e)
        {
            Tool.UpFile u=new UpFile();
            Model.product a = new Model.product()
            {
                id = i,
                product_imageurl = u.upFileName(this.FileUpload1, "../img/product/"),
                product_name = product_name.Text,
                product_intro = product_intro.Text,
                product_price = int.Parse(product_price.Text),
                product_content = product_content.Value
            };
                _ = BackStages.List<Model.product>.Getproduct(a) > 0 ? Tool.Tool.Alert("True", "../img/product/" + Hq.product_imageurl) : Tool.Tool.Alert("False");

        }
    }
}