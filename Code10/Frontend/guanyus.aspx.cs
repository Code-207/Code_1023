using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;

namespace Code10.Frontend
{
    public partial class guanyus : System.Web.UI.Page
    {
        public static Ydintro Yd;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
                return;
            Yd = BLL.Product.GetYd()[0];
        }
    }
}