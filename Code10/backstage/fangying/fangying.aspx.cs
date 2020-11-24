using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Code10.backstage.fangying
{
    public partial class fangying : System.Web.UI.Page
    {
        public static int page = 1;
        public static int Count = 1;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
                return;
            //Tool.Admin.admin();
            Session["Web_Url"] = "fangying.aspx";
            Session["Table"] = "fangying";
            try
            {
                Count = Tool.Page<Model.fangying>.TotalPage(4);
                string str = Request["id"];
                page = int.Parse(str);
                rep.DataSource = BackStages.List<Model.fangying>.GetObj("fangying", 4, page);
                rep.DataBind();
            }
            catch (Exception)
            {
                rep.DataSource = BackStages.List<Model.fangying>.GetObj("fangying", 4, page);
                rep.DataBind();
            }
        }
    }
}