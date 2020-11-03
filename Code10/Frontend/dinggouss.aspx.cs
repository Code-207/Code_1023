using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;

namespace Code10.Frontend
{
    public partial class dinggouss : System.Web.UI.Page
    {
       public static Model.product pr;
        int id = 1;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
                return;
            string sid = Request["id"];
            if (Request["id"] == null)
            {
                pr = (Model.product)BLL.Product.GetProductS(1)[0];
            }
            else {
                id = int.Parse(sid);
                pr = (Model.product)BLL.Product.GetProductS(int.Parse(sid))[0];
            } 
        }

        protected  void indent_OnClick( object sender, EventArgs e)
        {
            Response.Write("<script>alert('" + PName.Text + "')</script>");
            if (BLL.Product.AddIndents(new indent()
            {
                indent_name = PName.Text.Trim(),
                indent_phone = Phone.Text.Trim(),
                product_id = id,
                indent_mail = emlia.Text.Trim(),
                indent_site = address.Text.Trim()
            }) > 0)
            {
                Response.Write("<script>alert('成功')</script>");
            }
            else
            {
                
                Response.Write("<script>alert('FALSE')</script>");
            }

        }
        /*
        
                 
         */
    }
}