using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Code10.Frontend
{
    public partial class zixun : System.Web.UI.Page
    {

        public static int Count = 1;
        public static int page = 1;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
                return;
            try
            {
                Count = Tool.Page<Model.zixun>.TotalPage(4);
                string str = Request["id"];
                page = int.Parse(str);
                rep.DataSource = BackStages.List<Model.zixun>.GetObj("zixun", 4, page);
                rep.DataBind();
            }
            catch (Exception)
            {
                rep.DataSource = BackStages.List<Model.zixun>.GetObj("zixun", 4, page);
                rep.DataBind();
            }


        }
    }
}