using BusinessLogic;
using BussinessEntity;
using ConsoleUI;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YourBank
{
    public partial class RegisterAccount : System.Web.UI.Page
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
            else
            {
                if (Session["name"] != null)
                {
                    TextBox1.Text = Session["name"].ToString();
                }
                if (Session["pan"] != null)
                {
                    TextBox3.Text = Session["pan"].ToString();
                }
                if (Session["newUserType"] != null)
                {
                    if (Session["newUserType"].ToString() == "employee")
                    {
                        RadioButton2.Checked = true;
                    }
                    else if (Session["newUserType"].ToString() == "customer")
                    {
                        RadioButton1.Checked = true;
                    }
                }
                if (Session["address"] != null)
                {
                    TextBox2.Text = Session["address"].ToString();
                }
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
        protected void Button1_Click1(object sender, EventArgs e)
        {
            int ut = 0;
            Logins reg = new Logins();
            CustomerLogic logic = new CustomerLogic();
            var cust = logic.GetUsers();

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
            var panExist = cust.Where(x => x.PAN == reg.PAN).ToList();
            if (panExist.Count == 0)
            {
                CustomerDetails cus = new CustomerDetails();
                bool result = cus.Registration(reg);
                if (result)
                {
                    Label2.Text = "Registration Successfull";
                    Label2.ForeColor = Color.Green;
                    Session["name"] = null;
                    Session["pan"] = null;
                    Session["newUserType"] = null;
                    Session["address"] = null;
                }
                else
                {
                    Label2.Text = "Registration Failed";
                    Label2.ForeColor = Color.Red;
                }
            }
            else
            {
                Label2.Text = "PAN Number is Already Exist";
                Label2.ForeColor = Color.Red;
            }
        }
    }
}