using BusinessLogic;
using BussinessEntity;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YourBank
{
    public partial class PANValidate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["utype"] == null)
            {
                Response.Redirect("LoginForm.aspx");
            }
            else if (Session["utype"].ToString() == "Customer")
            {
                Response.Redirect("LoginForm.aspx");
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            CustomerLogic logic = new CustomerLogic();
            string pan = TextBox1.Text;
            var allEmp = logic.GetEmployees();
            var allcust = logic.GetCustomers();
            var allMang = logic.GetManager();

            bool isCustomer = allcust.Any(y => y.PAN == pan);
            bool isEmployee = allEmp.Any(x => x.PAN == pan);
            bool isMgr = allMang.Any(x => x.PAN == pan);

            if (!isEmployee && !isCustomer && !isMgr)
            {
                Session["pan"] = pan;
                Response.Redirect("OpenAccounts.aspx");
            }
            else
            {
                Label2.Text = "PAN is Already Exist, Cannot Open Account for this PAN!";
            }
        }
    }
}