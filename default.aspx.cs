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
            //if (Request.Form["SubmitBtn"] != null)
            //{
            //    Session.Clear();
            //}
            bool admin;
            Session["TempPriv"] = false;
            if((Session["isAdmin"]) is null)
            {
                admin = (bool)(Session["TempPriv"]);
            }
            else
            {
                admin = (bool)(Session["isAdmin"]);
            }
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
                nonRegMenu.Visible = true;
                RegMenu.Visible = false;
                Reg.Visible = false;
                nonReg.Visible = true;
            }
            else
            {
                nonRegMenu.Visible = false;
                RegMenu.Visible = true;
                Reg.Visible = true;
                nonReg.Visible = false;
            }
            if (admin)
            {
                adminq.Visible = true;
            }
            else
            {
                adminq.Visible = false;
            }

        }
    }
}