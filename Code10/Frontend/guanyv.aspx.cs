using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Code10.Frontend
{
    public partial class guanyv : System.Web.UI.Page
    {
        public static Model.President Pre;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
                return;
            Pre=BLL.Product.GetPRE()[0];
        }
    }
}