using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;

namespace Code10.backstage.indent
{
    public partial class Add : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
                return;
            Tool.Admin.admin();
        }
        //insert into indent(indent_name,product_id,indent_mail,site)value()

        protected void Button1_Click(object sender, EventArgs e)
        {
           throw new AbandonedMutexException();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            throw new NotImplementedException();
        }
    }
}