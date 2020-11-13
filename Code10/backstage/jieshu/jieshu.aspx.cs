using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Code10.Tool;
using Model;

namespace Code10.backstage.jieshu
{
    public partial class jieshu : System.Web.UI.Page
    {
        public static int page = 1;
        public static int Count = 1;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (IsPostBack)
                return;
            Admin.admin();
            Session["Table"] = "admin";
            try
            {
                Count = Tool.Page<Model.jieshu>.TotalPage(4);
                string str = Request["id"];
                page = int.Parse(str);
                rep.DataSource = BackStages.List<Model.jieshu>.GetObj(nameof(Model.jieshu), 4, page);
                rep.DataBind();
            }
            catch (Exception)
            {

                rep.DataSource = BackStages.List<Model.jieshu>.GetObj(nameof(Model.jieshu), 4, page);
                rep.DataBind();
            }
        }
    }
}