using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLogic;
using BussinessEntity;

namespace YourBank
{
    public partial class OpenAccounts : System.Web.UI.Page
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
            int at = 0;
            CustomerLogic logic = new CustomerLogic();
            Customers ct = new Customers();
            SavingAccount sv = new SavingAccount();
            ct.CustName = TextBox1.Text;
            ct.Address = TextBox2.Text;
            ct.PAN = Session["pan"].ToString();
            ct.DOB = DateTime.Parse(TextBox4.Text);
            ct.Password = TextBox7.Text;
            sv.Balance = Decimal.Parse(TextBox5.Text);
            
            if (RadioButton1.Checked)
            {
                at = 0;
            }
            else if (RadioButton2.Checked)
            {
                at = 1;
            }
            sv.AccountType = (AccountType)at;
            if(ct.DOB < DateTime.Now)
            {
                if (sv.Balance >= 1000)
                {
                    bool result = logic.OpenAccount(ct, sv, out int cid, out int acId, out string pass);

                    if (result)
                    {
                        Session["name"] = TextBox1.Text;
                        Session["address"] = TextBox2.Text;
                        Session["newUserType"] = userType.customer;
                        Response.Redirect($"AccountResponse.aspx?cid={cid}&acid={acId}&pass={pass}");
                    }
                    else
                    {
                        Label2.Text = "Request Failed!";
                        Label2.ForeColor = System.Drawing.Color.Red;
                    }
                }
                else
                {
                    Label2.Text = "Please Enter Minimum Amount 1000 rupees!";
                    Label2.ForeColor = System.Drawing.Color.Red;
                }
            }
            else
            {
                Label2.Text = "Please Enter Valid Date!";
                Label2.ForeColor = System.Drawing.Color.Red;
            }
            
           
        }
    }
}