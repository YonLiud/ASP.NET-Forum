using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace aspxForum
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["Submitbtn"] != null)
            {
                string fileName = "DB.mdf";
                string username = Request.Form["usernameInput"];
                string email = Request.Form["emailInput"];
                string password = Request.Form["passwordInput"];
                string sqlSelectUsr = ("SELECT username FROM userDB WHERE username = '" + username + "'");
                string sqlSelectEml = ("SELECT email FROM userDB WHERE email = '" + email + "'");
                string sqlInsert = "insert into userDB(username,email,password)" + "values('" + username + "', '" + email + "', '" + password + "') ";
                //Email Checker
                if (!String.IsNullOrEmpty(csTOsql.Query(fileName, sqlSelectUsr)))
                {
                    errmsg.Text = "The username is already being used";
                }
                else
                {
                    if(!String.IsNullOrEmpty(csTOsql.Query(fileName, sqlSelectEml)))
                    {
                        errmsg.Text = "The Email is already being used";
                    }
                    else
                    {
                        csTOsql.NonQuery(fileName, sqlInsert);
                        Server.Transfer("SignIn.aspx");

                    }
                }

             
            }
        }
    }
}