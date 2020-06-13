using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace aspxForum
{
    public partial class Sign_outer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           Session.Abandon();
            Response.Redirect("~/default.aspx");


        }
    }
}