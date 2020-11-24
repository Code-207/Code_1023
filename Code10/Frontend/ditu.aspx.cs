using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Code10.Frontend
{
    public partial class ditu : System.Web.UI.Page
    {
        public static About about;
        public static hp hp;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
                return;
            about = (About)BLL.Product.GetAbout()[0];
            hp = BLL.Product.GetHp()[0];
        }
    }
}