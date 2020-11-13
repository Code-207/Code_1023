using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Code10.Frontend
{
    public partial class jieshus : System.Web.UI.Page
    {
        public static Model.jieshu jieshu;
        public static int id=2;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
                return;
            if (Request["id"] != null)
            {
                string sid = Request["id"];
                id = int.Parse(sid);
                jieshu = BLL.Product.GetJs(id)[0];
            }
            else {
                jieshu = BLL.Product.GetJs(id)[0]!=null? BLL.Product.GetJs(id)[0]: BLL.Product.GetJs(2)[0];
            }
            
        }
    }
}