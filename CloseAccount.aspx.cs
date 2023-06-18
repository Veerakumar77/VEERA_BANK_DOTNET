using BusinessLogic;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YourBank
{
    public partial class CloseAccount : System.Web.UI.Page
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
            int accountId = int.Parse(TextBox1.Text);
            var customerAccount = logic.GetSavingsAccount(accountId);
            if(customerAccount.CustId != 0)
            {
                if(customerAccount.Balance <= 0)
                {
                    bool isSuccess = logic.CloseAccount(accountId);
                    if (isSuccess)
                    {
                        Label2.Text = "Account Closed Successfully!";
                        Label2.ForeColor = System.Drawing.Color.Green;
                    }
                    else
                    {
                        Label2.Text = "Close Account Failed";
                        Label2.ForeColor = System.Drawing.Color.Red;
                    }
                }
                else
                {
                    Label2.Text = "Please Withdraw your Amount";
                    Label2.ForeColor = System.Drawing.Color.Red;
                }
                
            }
            else
            {
                Label2.Text = "Entered Account does not Exist";
                Label2.ForeColor = System.Drawing.Color.Red;
            }

        }
    }
}