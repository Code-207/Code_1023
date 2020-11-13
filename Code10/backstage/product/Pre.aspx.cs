using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Code10.backstage.product
{
    public partial class Pre : System.Web.UI.Page
    {
        public static int page = 1;
        public static int Conut = 1;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
                return;
            Tool.Admin.admin();
            Session["Table"] = "admin";
            try
            {
                Response.Write("<script>console.log('TYPE:" + nameof(Model.product) + "')</script>");
                Conut = Tool.Page<Model.product>.TotalPage(4);
                string str = Request["id"];
                page = int.Parse(str);
                rep.DataSource = BackStages.List<Model.product>.GetObj("product", 4, page);
                rep.DataBind();
            }
            catch (Exception)
            {
                Response.Redirect("../product/pre.aspx?id=1&table=product");
                rep.DataSource = BackStages.List<Model.product>.GetObj("product", 4, page);
                rep.DataBind();
            }
        }
    }
}