using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;

namespace Code10.Frontend
{
    public partial class fangyings : System.Web.UI.Page
    {
        public static int Count = 1;
        public static int page = 1;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
                return;
            try
            {
                Count = Tool.Page<Model.fangying>.TotalPage(4);
                string str = Request["id"];
                page = int.Parse(str);
                RFangYing.DataSource = BackStages.List<Model.fangying>.GetObj("fangying", 4, page);
                RFangYing.DataBind();
            }
            catch (Exception)
            {
                RFangYing.DataSource = BackStages.List<Model.fangying>.GetObj("fangying", 4, page);
                RFangYing.DataBind();
            }


        }
    }
}