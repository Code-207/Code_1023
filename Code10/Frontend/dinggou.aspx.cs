using System;

namespace Code10.Frontend
{
    public partial class dinggou : System.Web.UI.Page
    {
        public static int Count = 1;
        public static int page = 1;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
                return;
            try
            {
                Count = Tool.Page<Model.product>.TotalPage(4);
                string str = Request["id"];
                page = int.Parse(str);
                product.DataSource = BackStages.List<Model.product>.GetObj("Product", 4, page);
                product.DataBind();
            }
            catch (Exception)
            {
                product.DataSource = BackStages.List<Model.product>.GetObj("Product", 4, page);
                product.DataBind();
            }

        }
    }
}
