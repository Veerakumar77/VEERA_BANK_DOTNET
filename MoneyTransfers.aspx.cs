using BusinessLogic;
using BussinessEntity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YourBank
{
    public partial class MoneyTransfers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["utype"] == null)
            {
                Response.Redirect("LoginForm.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MoneyTransfer mt = new MoneyTransfer();
            CustomerLogic logic = new CustomerLogic();

            mt.CID = int.Parse((string)Session["cid"]);
            mt.AccountId = int.Parse(TextBox1.Text);
            mt.Balance = decimal.Parse(TextBox2.Text);
            mt.Password = TextBox3.Text;

            var sendCustomer = logic.GetCustomersAccount(mt.CID);
            var receiveCustomer = logic.GetSavingsAccount(mt.AccountId);
            if (sendCustomer.password == mt.Password)
            {
                if (receiveCustomer.CustId != 0)
                {
                    if(sendCustomer.Balance > mt.Balance)
                    {
                        bool isSuccess = logic.MoneyTransfer(mt);
                        if (isSuccess)
                        {
                            Label2.Text = "Money Transfered Successfully!";
                            Label2.ForeColor = System.Drawing.Color.Green;
                        }
                        else
                        {
                            Label2.Text = "Money Transaction Failed";
                            Label2.ForeColor = System.Drawing.Color.Red;
                        }
                    }
                    else
                    {
                        Label2.Text = "Insufficient Balance in your Account";
                        Label2.ForeColor = System.Drawing.Color.Red;
                    }
                }
                else
                {
                    Label2.Text = "Account Number does not exist";
                    Label2.ForeColor = System.Drawing.Color.Red;
                }
            }
            else
            {
                Label2.Text = "Password Incorrect";
                Label2.ForeColor = System.Drawing.Color.Red;
            }


        }
    }
}