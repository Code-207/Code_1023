using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;

namespace Code10.backstage.indent
{
    public partial class Indent : System.Web.UI.Page
    {
        public static int page = 1;
        public static int Conut = 1;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack)
                return;
            //Tool.Admin.admin();
            Session["Table"] = "admin";
            try
            {
                Response.Write("<script>console.log('TYPE:" + nameof(Model.indent) + "')</script>");
                Conut = Tool.Page<Model.indent>.TotalPage(4);
                string str = Request["id"];
                page = int.Parse(str);
                rep.DataSource = BackStages.List<Model.indent>.GetObj("indent", 4,page);
                rep.DataBind();
            }
            catch (Exception)
            {
                Response.Redirect("../Users/User.aspx?id=1&table=admin");
                rep.DataSource = BackStages.List<Model.indent>.GetObj("indent", 4,page);
                rep.DataBind();
            }
        }
    }
}