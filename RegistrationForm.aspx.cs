using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BussinessEntity;
using BusinessLogic;
using ConsoleUI;
using System.Drawing;

namespace YourBank
{
    public partial class RegistrationForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Page_PreInit(object sender, EventArgs e)
        {
            if (Session["utype"] != null)
            {
                if (Session["utype"].ToString() == "Customer")
                {
                    this.Master.MasterPageFile = "/CustomersDasboard.master";
                }
                else if (Session["utype"].ToString() == "Employee")
                {
                    this.Master.MasterPageFile = "/EmployeeDasboard.master";
                }
                else
                {
                    this.Master.MasterPageFile = "~/ManagerDashboard.Master";
                }
            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int ut = 0;
            Logins reg = new Logins();
            reg.Name = TextBox1.Text;
            reg.UserName = TextBox1.Text;
            reg.Address = TextBox2.Text;
            reg.PAN = TextBox3.Text;
            reg.Password = TextBox5.Text;
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
            reg.UserType = (userType)ut;

            CustomerDetails cus = new CustomerDetails();
            bool result = cus.Registration(reg);
            if (result)
            {
                Label2.Text = "Registration Successfull";
                Label2.ForeColor = Color.Green;
            }
            else
            {
                Label2.Text = "Registration Failied";
                Label2.ForeColor = Color.Red;
            }
        }
    }
}