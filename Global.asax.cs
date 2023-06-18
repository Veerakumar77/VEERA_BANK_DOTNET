using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Web.UI.WebControls;

namespace YourBank
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {

        }
        protected void Session_Start(object sender, EventArgs e)
        {
            Session["utype"] = null;
            Session["uname"] = null;
            Session["pan"] = null;
            Session["cid"] = null;
            Session["newUserType"] = null;
            Session["name"] = null;
        }
    }
}