using BussinessEntity;
using ConsoleUI;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLogic;

namespace YourBank
{
    public partial class CreateEmployees : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["utype"] == null)
            {
                Response.Redirect("LoginForm.aspx");
            }
            else if(Session["utype"].ToString() != "Manager")
            {
                Response.Redirect("LoginForm.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int dt = 0;
            CustomerLogic logic = new CustomerLogic();
            Employees emp  = new Employees();
            var emps = logic.GetEmployees();
            emp.Empname = TextBox1.Text;
            emp.PAN = TextBox3.Text;
            emp.Password = TextBox5.Text;
            if (RadioButton1.Checked)
            {
                dt = 0;
            }
            else if(RadioButton2.Checked)
            {
                dt = 1;
            }
            emp.DeptId = (Dept)dt;
            emp.DeptId = (BussinessEntity.Dept)(emp.DeptId == BussinessEntity.Dept.Deposit ? 1001 : 1002);
            var panExist = emps.Where(x => x.PAN == emp.PAN).ToList();
            if (panExist.Count == 0)
            {
                bool result = logic.CreateEmployee(emp);
                if (result)
                {
                    Session["pan"] = TextBox3.Text;
                    Session["name"] = TextBox1.Text;
                    Session["newUserType"] = userType.employee;
                    Label2.Text = "Employee Created Successfully";
                    Label2.ForeColor = System.Drawing.Color.Green;
                    HyperLink8.Visible = true;
                }
                else
                {
                    Label2.Text = "Request Failed";
                    Label2.ForeColor = System.Drawing.Color.Red;
                }
            }
            else
            {
                Label2.Text = "PAN Number is Already Exist";
                Label2.ForeColor = System.Drawing.Color.Red;
            }
            
        }
    }
}