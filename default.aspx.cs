using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace aspxForum.Assets
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string username = string.Empty;
            username = (String)(Session["usr"]);
            if (String.IsNullOrEmpty(username))
            {
                usr.Text = "Guest";
            }
            else
            {
                usr.Text = username;
            }

        }
    }
}