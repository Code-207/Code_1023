using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Code10.backstage.share
{
    public partial class del : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
                return;
            if (Session["Table"] == null || Request["Id"] == null)
            {
                Response.Write("<script>window.history.go(-1);</script>");
                Response.Redirect("Index.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
                Response.Write("<script>console.log('1')</script>");
                int id = int.Parse(Request["id"]);
                Response.Write("<script>console.log('"+ BackStages.List<object>.DelObj(Session["Table"].ToString(), id) +"')</script>");
                Response.Redirect("../"+Session["table"]+"/"+ Session["table"] + ".aspx");

        }
    }
}