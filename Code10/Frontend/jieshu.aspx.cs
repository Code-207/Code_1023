using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Code10.Frontend
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        public static int Count = 1;
        public static int page = 1;

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                Count = Tool.Page<Model.jieshu>.TotalPage(4);
                string str = Request["id"];
                page = int.Parse(str);
                jslist.DataSource = BackStages.List<Model.jieshu>.GetObj("jieshu", 4, page);
                jslist.DataBind();
            }
            catch (Exception)
            {
                jslist.DataSource = BackStages.List<Model.jieshu>.GetObj("jieshu", 4, page);
                jslist.DataBind();
            }


        }
    }
}