using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace aspxForum
{
    public partial class ResetPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["Submitbtn"] != null)
            {
                string fileName = "DB.mdf";
                string email = Request.Form["email"];
                errmsg.Text = "Reset Password Serivce is currently down, please try again later";
            }


        }
    }
}