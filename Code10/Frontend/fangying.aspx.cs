using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Code10.Frontend
{
    public partial class fangying : System.Web.UI.Page
    {
        public static int id=2;
        public static Model.fangying Fy;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
                return;
            if (Request["id"] != null) 
            {
                string sid = Request["id"];
                id = int.Parse(sid);
            }
            Fy = BLL.Product.GetFangYang(id)[0];
        }
    }
}