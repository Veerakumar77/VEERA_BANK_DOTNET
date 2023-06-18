using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YourBank
{
    public partial class AccountResponse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uname"] == null)
            {
                Response.Redirect("LoginForm.aspx");
            }
            else if (Session["utype"].ToString() == "Customer")
            {
                Response.Redirect("LoginForm.aspx");
            }
            else
            {
                Label1.Text = "Account Created Successfully !";
                Label3.Text = Request.QueryString["cid"];
                Label5.Text = Request.QueryString["acId"];
                Label7.Text = Request.QueryString["pass"];
            }
        }
        protected void Page_PreInit(object sender, EventArgs e)
        {

            if (Session["utype"] != null)
            {
                if (Session["utype"].ToString() == "Customer")
                {
                    this.MasterPageFile = "~/CustomersDasboard.master";
                }
                else if (Session["utype"].ToString() == "Employee")
                {
                    this.MasterPageFile = "~/EmployeeDasboard.master";
                }
                else if (Session["utype"].ToString() == "Manager")
                {
                    this.MasterPageFile = "~/ManagerDashboard.master";
                }
            }

        }
    }
}