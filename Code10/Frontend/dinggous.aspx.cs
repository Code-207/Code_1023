using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Code10.Frontend
{
    public partial class dinggous : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack)
                return;
            string i = Request["id"];
            if (i!= null)
            {
                dinggoused.DataSource = BLL.Product.GetProductS(int.Parse(i));
                dinggoused.DataBind();
            }
            else
            {
                
                dinggoused.DataSource = BLL.Product.GetProductS(1);
                dinggoused.DataBind();
            }
            
        }
    }
}