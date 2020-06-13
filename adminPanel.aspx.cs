using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace aspxForum
{
    public partial class adminPanel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string user = (String)Session["usr"];
            if (String.IsNullOrEmpty(user))
            {
                Server.Transfer("default.aspx");
            }
            usr.Text = user;
            bool admin;
            if ((bool)Session["isAdmin"] != true)
            {
                Response.Redirect("default.aspx");
            }
            else
            {
                admin = true;
            }

            // User Counter
            string fileName = "DB.mdf";
            string sqlSelectUsers = ("SELECT COUNT(username) FROM userDB");
            int users = csTOsql.IntQuery(fileName, sqlSelectUsers);
            string usersNum = ("" + users);
            numberofusers.Text = usersNum +1;

        }
    }
}