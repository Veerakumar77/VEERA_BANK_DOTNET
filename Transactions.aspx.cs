using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLogic;
using BussinessEntity;

namespace YourBank
{
    public partial class Transactions : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["utype"] == null)
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
            int tt = 0;
            bool validTransaction = false;
            CustomerLogic logic = new CustomerLogic();
            AccountTransactions trans = new AccountTransactions();
            trans.CustId = int.Parse((string)Session["cid"]);
            trans.Balance = decimal.Parse(TextBox1.Text);
            trans.Password = TextBox2.Text;
            if (RadioButton1.Checked)
            {
                tt = 0;
            }
            else if (RadioButton2.Checked)
            {
                tt = 1;
            }
            trans.TransactionType = (TransactionType)tt;

            var getCustomerAccount = logic.GetCustomersAccount(trans.CustId);
            if(getCustomerAccount != null)
            {
                if(trans.Password == getCustomerAccount.password)
                {
                    if (trans.TransactionType == TransactionType.DEPOSIT)
                    {
                        if (trans.Balance < 100)
                        {
                            Label2.Text = "Please Deposit Minimum 100 rupees";
                        }
                        else
                        {
                            validTransaction = true;
                        }
                    }
                    else if (trans.TransactionType == TransactionType.WITHDRAW)
                    {
                        if (trans.Balance > getCustomerAccount.Balance)
                        {
                            Label2.Text = "Your Account have a Insufficient Money";
                        }
                        else
                        {
                            validTransaction = true;
                        }
                    }
                    if (validTransaction)
                    {
                        bool isSuccess = logic.CustomerTransactions(trans);
                        if (isSuccess)
                        {
                            Label2.Text = "Transaction Completed Successfully!!";
                            Label2.ForeColor = Color.LightGreen;
                        }
                        else
                        {
                            Label2.Text = "Transaction Failed";
                            Label2.ForeColor = Color.Red;
                        }
                    }
                }
                else
                {
                    Label2.Text = "Password Incorrect";
                }
                
            }
            else
            {
                Label2.Text = "Account does not exist!";
            }


        }
    }
}