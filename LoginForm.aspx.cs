using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLogic;
using BussinessEntity;
using ConsoleUI;

namespace YourBank
{
    public partial class LoginForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            int ut = 0;
            Logins login = new Logins();
            CustomerLogic logic = new CustomerLogic();
            CustomerDetails custDt = new ConsoleUI.CustomerDetails();
            login.UserName = TextBox1.Text;
            login.Password = TextBox2.Text;
            if (RadioButton1.Checked)
            {
                ut = 0;
            }
            if (RadioButton2.Checked)
            {
                ut = 1;
            }
            if (RadioButton3.Checked)
            {
                ut = 2;
            }
            login.UserType = (userType)ut;
            int userTp = custDt.Login(login);
            if (userTp == 1)
            {
                Session["utype"] = "Customer";
                Session["uname"] = TextBox1.Text;
                var allCust = logic.GetCustomers();
                var loginUser = allCust.Where(c => c.CustName == Session["uname"].ToString());
                if(loginUser.Count() > 0)
                {
                    var cid = loginUser.Select(x => x.CustId).ToList();
                    Session["cid"] = cid[0].ToString();
                    Response.Redirect("CustomerHome.aspx");
                }
                else
                {
                    Label2.Text = "This user does not have a account";
                    Label2.ForeColor = Color.Red;
                }
                
            }
            else if (userTp == 2)
            {
                Session["utype"] = "Employee";
                Session["uname"] = TextBox1.Text;
                Response.Redirect("EmployeeHome.aspx");
            }
            else if (userTp == 3)
            {
                Session["utype"] = "Manager";
                Session["uname"] = TextBox1.Text;
                Response.Redirect("ManagerHome.aspx");
            }
            else
            {
                Label2.Text = "Invalid User";
                Label2.ForeColor = Color.Red;
            }
        }
    }
}