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
            //bool admin = bool.Parse((String)(Session["isAdmin"]));
            string username = string.Empty;
            username = (String)(Session["usr"]);

            //username setup
            if (String.IsNullOrEmpty(username))
            {
                usr.Text = "Guest";
            }
            else
            {
                usr.Text = username;
            }


            //Privliges setup
            if (String.IsNullOrEmpty(username))
            {
                Reg.Visible = false;
                nonReg.Visible = true;
            }
            else
            {
                Reg.Visible = true;
                nonReg.Visible = false;
            }
        }
    }
}