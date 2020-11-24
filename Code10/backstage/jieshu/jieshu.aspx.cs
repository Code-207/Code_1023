using System;

namespace Code10.backstage.jieshu
{
    public partial class jieshu : System.Web.UI.Page
    {
        public static int page = 1;
        public static int Count = 1;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
                Tool.Admin.admin();
            Session["Table"] = "JieShu";
            Session["Web_Url"] = "JieSh.aspx";
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