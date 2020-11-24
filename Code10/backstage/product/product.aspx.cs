using System;

namespace Code10.backstage.product
{
    public partial class product : System.Web.UI.Page
    {
        public static int page = 1;
        public static int Conut = 1;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
                return;
            Tool.Admin.admin();
            Session["table"] = "product";
            Session["Web_Url"] = "product.aspx";
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
               // Response.Redirect("../product/product.aspx");
                rep.DataSource = BackStages.List<Model.product>.GetObj("product", 4, page);
                rep.DataBind();
            }
        }
    }
}