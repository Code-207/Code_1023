using Model;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Code10.Frontend
{
    public partial class jieshuss : System.Web.UI.Page
    {
        public static int id = 2;
        public static jieshu Jieshu;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
                return;
            try
            {
                if (Request["id"] is null)
                {
                    Jieshu = BLL.Product.GetJs(2)[0];
                }
                else
                {
                    var s = Request["id"];
                    var js = BLL.Product.GetJs(int.Parse(s));
                    if (js.Count < 0)
                    {
                        Response.Redirect("error.html");
                    }
                    else
                    {
                        Jieshu = js[0];
                    }

                }
            }
            catch (Exception)
            {

                Response.Redirect("error.html");
            }

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Write("<script>console.log('Name:"+ Name.Text + "')</script>");
            Response.Write("<script>console.log('jsindent_id:" + id + "')");
            Response.Write("<script>console.log('jsindent_phone:" + Phone.Text + "')</script>");
            Response.Write("<script>console.log('Area:" + Area.Text + "')</script>");
            Response.Write("<script>console.log('Emlia:" + Emlia.Text + "')</script>");
            BLL.Product.AddJs(new jsindent()
            {
                jsindent_id = id,
                jsindent_name = Name.Text,
                jsindent_phone = Phone.Text,
                jsindent_site = Area.Text,
                jsindent_mail = Emlia.Text
            });
        }
    }
}