using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace aspxForum
{
    public partial class SignIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["SubmitBtn"] != null)
            {
                string fileName = "DB.mdf";
                string login = Request.Form["login"];
                string pass = Request.Form["password"];
                string sqlSelectLogin = ("SELECT username FROM userDB WHERE username = '" + login + "'");
                string sqlCheckAdmin = ("SELECT admin FROM userDB WHERE username = '" + login + "'");
                string sqlSelectPass = ("SELECT password FROM userDB WHERE username = '" + login + "'");
                String username = csTOsql.Query(fileName, sqlSelectLogin);
                //bool admin = bool.Parse(csTOsql.Query(fileName, sqlCheckAdmin));
                if (String.IsNullOrEmpty(username))
                {
                    errmsg.Text = "The username was not found in the database";
                }
                else
                {
                    string sqlPass = csTOsql.Query(fileName, sqlSelectPass);
                    if (sqlPass != pass)
                    {
                        errmsg.Text = "The password doesn't match the username";
                    }
                    else
                    {
                        //Session["isAdmin"] = admin;
                        Session["usr"] = username;
                        Server.Transfer("default.aspx");
                    }
                }
                
            }


        }
    }
}