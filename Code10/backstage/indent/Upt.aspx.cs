using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Code10.Tool;
using Model;

namespace Code10.backstage.indent
{
    public partial class Upt : System.Web.UI.Page
    {
        public static Model.indent Hq;
        public static string[] Dizhi;
        public static int i = 1;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
                return;
            //Tool.Admin.admin();
            try
            {
                i = int.Parse(Request["id"]);
                Model.indent a = new Model.indent()
                {
                    id = i
                };
                Hq = BLL.Product.GetIndent(a);
            }
            catch
            {
                i = 1;
                Model.indent a = new Model.indent()
                {
                    id = i
                };
                Hq = BLL.Product.GetIndent(a);
            }

            Dizhi = Hq.indent_site.Split('/');
             indent_name.Text = Hq.indent_name;
            indent_phone.Text = Hq.indent_phone;
                indent_mail.Text = Hq.indent_mail;
                TextBox1.Text = Hq.indent_site;
        }

        protected void Button1_OnClick(object sender, EventArgs e)
        {
                Model.indent hps = new Model.indent()
                {
                    id = Hq.id,
                     indent_name = indent_name.Text,
                     indent_phone = indent_phone.Text,
                     indent_mail = indent_mail.Text,
                    indent_site = dis.Text
                };
                _ = BackStages.List<Model.indent>.GetIndent(hps) > 0 ? Tool.Tool.Alert("True") : Tool.Tool.Alert("False");
        }
    }
}