using System;

namespace Code10.Frontend
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack)
                return;
            product.DataSource = BLL.Product.GetList();
            product.DataBind();

        }
    }
}