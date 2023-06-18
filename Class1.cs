using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using BussinessEntity;

namespace DAL
{
    public class CustomerDAL
    {
        SqlCommand cmd = null;
        SqlConnection con = new SqlConnection(@"Integrated security=sspi;database=BankPrj;server=TN-LT-1184\SQLEXPRESS");
        SqlDataReader dr = null;
        List<Customers> openCus = new List<Customers>();

        public bool AddUsers(Logins reg)
        {
            bool isSuccess;
            Logins user = new Logins();
            con.Open();
            string query = $"Insert into Users Values ('{reg.Name}','{reg.Address}','{reg.UserName}','{reg.Password}','{reg.UserType}','{reg.PAN}')";

            cmd = new SqlCommand(query, con);
            try
            {
                int res = cmd.ExecuteNonQuery();
                if (res > 0)
                {
                    isSuccess = true;
                }
                else
                {
                    isSuccess = false;
                }
            }
            catch (Exception ex)
            {
                isSuccess = false;
            }
           
            con.Close();

            return isSuccess;
        }

        public bool OpenAccount(Customers customer, SavingAccount savings,out int cid,out int acId,out string pass)
        {
            bool isSuccess;
            con.Open();
            cmd = new SqlCommand("AccountOpen",con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            //Parameters for SP
            cmd.Parameters.Add("@CustomerName", System.Data.SqlDbType.VarChar, 30).Value = customer.CustName;
            cmd.Parameters.Add("@Address", System.Data.SqlDbType.VarChar, 30).Value = customer.Address;
            cmd.Parameters.Add("@PAN", System.Data.SqlDbType.VarChar, 15).Value = customer.PAN;
            cmd.Parameters.Add("@DOB", System.Data.SqlDbType.DateTime).Value = customer.DOB;
            cmd.Parameters.Add("@Password", System.Data.SqlDbType.VarChar,15).Value = customer.Password;
            cmd.Parameters.Add("@MinimumBalance", System.Data.SqlDbType.BigInt).Value = savings.Balance;
            cmd.Parameters.Add("@AccountType", System.Data.SqlDbType.VarChar).Value = savings.AccountType;

            //OutPut Parameters for SP
            cmd.Parameters.Add("@CustID", System.Data.SqlDbType.Int).Direction = System.Data.ParameterDirection.Output;
            cmd.Parameters.Add("@AcID", System.Data.SqlDbType.Int).Direction = System.Data.ParameterDirection.Output;
            cmd.Parameters.Add("@Pass", System.Data.SqlDbType.VarChar,15).Direction = System.Data.ParameterDirection.Output;

            int cnt =  cmd.ExecuteNonQuery();
            if (cnt > 0)
            {
                isSuccess = true;
            }
            else
            {
                isSuccess= false;
            }
             cid = (int)cmd.Parameters["@CustID"].Value;
             acId = (int)cmd.Parameters["@AcID"].Value;
             pass = (string)cmd.Parameters["@Pass"].Value;
            con.Close() ;
            return isSuccess;
        }

        public List<Employees> ShowEmployeeDetails()
        {
            List<Employees> emp = new List<Employees>();
            con.Open() ;
            string query = "SELECT * FROM EMPLOYEE";
            cmd = new SqlCommand(query, con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Employees employee = new Employees();
                employee.Empid = dr.GetInt32(dr.GetOrdinal("EID"));
                employee.Empname = dr.GetString(dr.GetOrdinal("EmployeeName"));
                employee.DeptId = (Dept)dr.GetInt32(dr.GetOrdinal("DeptId"));
                employee.Password = dr.GetString(dr.GetOrdinal("Password"));
                employee.PAN = dr.GetString(dr.GetOrdinal("PAN"));

                emp.Add(employee);
            }
            con.Close();
            return emp;
        }

        public List<Manager> ShowManagerDetails()
        {
            List<Manager> manager = new List<Manager>();
            con.Open() ;
            string query = "Select * from Manager";
            cmd = new SqlCommand(query, con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Manager mgr = new Manager();
                mgr.Mid = dr.GetInt32(dr.GetOrdinal("MID"));
                mgr.ManagerName = dr.GetString(dr.GetOrdinal("ManagerName"));
                mgr.PAN = dr.GetString(dr.GetOrdinal("PAN"));

                manager.Add(mgr);
            }
            con.Close();
            return manager;
        }

        public List<Logins> ShowUsersDetails()
        {
            List<Logins> customer = new List<Logins>();
            con.Open();
            string query = "SELECT * FROM USERS";
            cmd = new SqlCommand(query, con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Logins user = new Logins();
                user.Id = dr.GetInt32(dr.GetOrdinal("Id"));
                user.Name = dr.GetString(dr.GetOrdinal("UName"));
                user.Address = dr.GetString(dr.GetOrdinal("Address"));
                user.UserName = dr.GetString(dr.GetOrdinal("UserName"));
                user.Password = dr.GetString(dr.GetOrdinal("Password"));
                user.PAN = dr.GetString(dr.GetOrdinal("PAN"));
                user.UserType = (userType)Enum.Parse(typeof(userType), dr.GetString(dr.GetOrdinal("UserType")));

                customer.Add(user);
            }
            con.Close();
            return customer;
        }

        public List<Customers> ShowCustomerDetails()
        {
            List<Customers> customer = new List<Customers>();
            con.Open();
            string query = "SELECT * FROM Customers";
            cmd = new SqlCommand(query, con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Customers user = new Customers();
                user.CustId = dr.GetInt32(dr.GetOrdinal("CId"));
                user.CustName = dr.GetString(dr.GetOrdinal("CustomerName"));
                user.Address = dr.GetString(dr.GetOrdinal("CustomerAddress"));
                user.DOB = dr.GetDateTime(dr.GetOrdinal("DOB"));
                user.Password = dr.GetString(dr.GetOrdinal("Password"));
                user.PAN = dr.GetString(dr.GetOrdinal("PAN"));

                customer.Add(user);
            }
            con.Close();
            return customer;
        }

        public bool CreateEmployee(Employees employee)
        {
            bool isSuccess;
            con.Open();
            string query = $"Insert into Employee values ('{employee.Empname}',{employee.DeptId},'{employee.Password}','{employee.PAN}')";
            cmd = new SqlCommand(query, con);
            try
            {
                int res = cmd.ExecuteNonQuery();
                if (res > 0)
                {
                    isSuccess = true;
                    con.Close();
                }
                else
                {
                    isSuccess = false;
                }
            }
            catch (Exception ex)
            {
                isSuccess = false;
            }
            return isSuccess;
            
        }

        public SavingAccount GetCustomersAccountbyId(int cid)
        {
            SavingAccount account = new SavingAccount();
            con.Open();
            cmd = new SqlCommand("GetCustomersAccountbyId", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@CID",cid);
            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                account.AccountId= (int)reader["AccountId"];
                account.Balance = (decimal)reader["Balance"];
                account.password = (string)reader["Password"];
            }
            con.Close();
            return account;
        }

        public bool CustomerTransactions(AccountTransactions trans)
        {
            bool isSuccess = false;
            con.Open();
            cmd = new SqlCommand("CustomerTransactions", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            cmd.Parameters.Add("@CID", System.Data.SqlDbType.Int).Value = trans.CustId;
            cmd.Parameters.Add("@Balance", System.Data.SqlDbType.Money).Value = trans.Balance;
            cmd.Parameters.Add("@TransType", System.Data.SqlDbType.VarChar, 10).Value = trans.TransactionType;

            int cnt = cmd.ExecuteNonQuery();
            if (cnt > 0)
            {
                isSuccess = true;
            }
            else
            {
                isSuccess = false;
            }
            con.Close ();
            return isSuccess;
        }

        public SavingAccount GetSavingsAccount(int accountId)
        {
            SavingAccount account = new SavingAccount();
            con.Open();
            string query = $"Select * from SavingsAccount where AccountId = {accountId}";
            cmd = new SqlCommand(query, con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                account.CustId = dr.GetInt32(dr.GetOrdinal("CID"));
                account.Balance = dr.GetDecimal(dr.GetOrdinal("Balance"));

            }
            con.Close();
            return account;
        }

        public bool MoneyTransfer(MoneyTransfer mt)
        {
            bool isSuccess = false;
            con.Open();
            cmd = new SqlCommand("MoneyTransfer", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            cmd.Parameters.Add("@CID", System.Data.SqlDbType.Int).Value = mt.CID;
            cmd.Parameters.Add("@AccountId", System.Data.SqlDbType.Int).Value = mt.AccountId;
            cmd.Parameters.Add("@Balance", System.Data.SqlDbType.Money).Value = mt.Balance;

            int cnt = cmd.ExecuteNonQuery();
            if (cnt > 0)
            {
                isSuccess = true;
            }
            else
            {
                isSuccess = false;
            }
            con.Close();
            return isSuccess;
        }

        public bool CloseAccount(int accountId)
        {
            bool isSuccess = false;
            con.Open();
            cmd = new SqlCommand("CloseAccount", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            cmd.Parameters.Add("@AccountId", System.Data.SqlDbType.Int).Value = accountId;

            int cnt = cmd.ExecuteNonQuery();
            if (cnt > 0)
            {
                isSuccess = true;
            }
            else
            {
                isSuccess = false;
            }
            con.Close();
            return isSuccess;
        }
    }
}
