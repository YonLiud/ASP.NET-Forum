using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace aspxForum
{
    public partial class ctrlpanel : System.Web.UI.Page
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
            Session["TempPriv"] = false;
            if ((Session["isAdmin"]) is null)
            {
                admin = (bool)(Session["TempPriv"]);
            }
            else
            {
                admin = (bool)(Session["isAdmin"]);
            }

            if (admin)
            {
                Prm.Text = "Admin";
            }
            else
            {
                Prm.Text = "User";
            }
            if (Request.Form["Submitbtnp"] != null)
            {
                string fileName = "DB.mdf";
                string pass = Request.Form["passwordp"];
                string prepass = Request.Form["passwordrp"];
                string sqlSelectPrepass = ("SELECT password FROM userDB WHERE username = '" + user + "'");
                String sqlPrepass = csTOsql.Query(fileName, sqlSelectPrepass);
                String sqlUpdatePass = ("UPDATE userDB SET password = '" + pass + "' WHERE username = '" + user + "'");
                if (sqlPrepass != prepass)
                {
                    errmsg.Text = "Previous Password Does not match the original password of the user";
                }
                else
                {
                    csTOsql.Query(fileName, sqlUpdatePass);
                    errmsg.Text = "Password has been changed successfully";
                }
            }

        }
    }
}