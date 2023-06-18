using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YourBank
{
    public partial class Logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                Session["utype"] = null;
                Session["uname"] = null;
                Session["pan"] = null;
                Session["cid"] = null;
                Session["newUserType"] = null;
                Session["name"] = null;
                Response.Redirect("LoginForm.aspx");
            
        }
    }
}