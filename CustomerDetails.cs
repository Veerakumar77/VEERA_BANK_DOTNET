using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BusinessLogic;
using BussinessEntity;

namespace ConsoleUI
{
    public class CustomerDetails
    {
        SavingAccount saving = new SavingAccount();
        Customers cust = new Customers();
        CustomerLogic logic = new CustomerLogic();
        Logins login = new Logins();

        #region Common Operation

        public Customers OpenAccountCustomerData(string pan)
        {
            Console.WriteLine("Enter Name");
            cust.CustName = Console.ReadLine();
            Console.WriteLine("Enter Address");
            cust.Address = Console.ReadLine();
            Console.WriteLine("Create Password");
            cust.Password = Console.ReadLine();
            if (string.IsNullOrEmpty(pan))
            {
                Console.WriteLine("Enter PAN");
                cust.PAN = Console.ReadLine();
            }
            else
            {
                cust.PAN = pan;
            }
            Console.WriteLine("Enter DOB");
            cust.DOB = DateTime.Parse(Console.ReadLine());

            return cust;
        }
        public Logins RegisterData()
        {
            Console.WriteLine("Enter Name");
            login.Name = Console.ReadLine();
            Console.WriteLine("Enter Address");
            login.Address = Console.ReadLine();
            Console.WriteLine("Enter UserName");
            login.UserName = Console.ReadLine();
            Console.WriteLine("Create Password");
            login.Password = Console.ReadLine();
            Console.WriteLine("Select Number for Customer (0) or Employee (1) or Manager (2)");
            login.UserType = (userType)int.Parse(Console.ReadLine());
            Console.WriteLine("Enter PAN");
            login.PAN = Console.ReadLine();

            return login;
        }

        public Employees EmployeeData()
        {
            Employees emp = new Employees();
            Console.WriteLine("Enter Employee Name");
            emp.Empname = Console.ReadLine();
            Console.WriteLine("Enter PAN number");
            emp.PAN = Console.ReadLine();
            Console.WriteLine("Enter Password");
            emp.Password = Console.ReadLine();
            Console.WriteLine("Select Department for Deposit (0) or Loan (1) ");
            emp.DeptId = (Dept)int.Parse(Console.ReadLine());

            return emp;
        }

        public Logins LoginData()
        {
            Console.WriteLine("Enter Name");
            login.UserName = Console.ReadLine();
            Console.WriteLine("Enter Password");
            login.Password = Console.ReadLine();
            Console.WriteLine("Plese Select User Type: Customer for 0, Employee for 1, Manager for 2");
            int z = int.Parse(Console.ReadLine());
            login.UserType = (userType)z;

            return login;
        }
        public void Common()
        {
            int userType = 0;
            Console.WriteLine("If you Don't have a Account, Press 1 for Registration !");
            Console.WriteLine("Already have a Account, Press 2 to continue...");

            byte rn = byte.Parse(Console.ReadLine());
            if (rn == 1)
            {
                var userDetails = RegisterData(); 
                bool isSuccess = Registration(userDetails);
                if (isSuccess)
                {
                    Console.WriteLine("Please refresh and login...!");
                }
            }
            else if (rn == 2)
            {
                var userData = LoginData();
                userType = Login(userData);
            }
            if (userType != 0)
            {
                switch (userType)
                {
                    case 1:
                        CustomerDashBoard csDasboard = new CustomerDashBoard();
                        csDasboard.CommonCustomers();
                        break;
                    case 2:
                        Employee employee = new Employee();
                        employee.CommonEmployee();
                        break;
                    case 3:
                        Manager manager = new Manager();
                        manager.CommonManager();
                        break;
                }

            }
        }

        public void OpenAccount()
        {
            Console.WriteLine("Please enter your PAN :");
            string pan = Console.ReadLine();
            var allEmp = logic.GetEmployees();
            var allcust = logic.GetCustomers();
            var allMang = logic.GetManager();

            bool isCustomer = allcust.Any(y => y.PAN == pan);
            bool isEmployee = allEmp.Any(x => x.PAN == pan);
            bool isMgr = allMang.Any(x => x.PAN == pan);

            if (!isEmployee && !isCustomer && !isMgr)
            {
                var customerData = OpenAccountCustomerData(pan);
                Console.WriteLine("Select Account Type \n Savings for Press 0");
                saving.AccountType = (AccountType)int.Parse(Console.ReadLine());
                Console.WriteLine("Enter amount ");
                saving.Balance = int.Parse(Console.ReadLine());
                if(saving.Balance > 1000)
                {
                    bool isSuccess = logic.OpenAccount(customerData, saving, out int cid, out int acId, out string pass);
                    if (isSuccess)
                    {
                        Console.WriteLine("\n");
                        Console.WriteLine("Account was created SuccessFully!!!");
                        Console.WriteLine("Welcome to XBank");
                        Console.WriteLine($"Your Account Number : {acId}");
                        Console.WriteLine($"Your Customer ID : {cid}");
                        Console.WriteLine($"Your Password  : {pass}");
                    }
                    else
                    {
                        Console.WriteLine("Not able to Create Account for this Information, Please check the details");
                    }
                }
                else
                {
                    Console.WriteLine("Account Minimum balance need 1000 rupees");
                }
                
            }
            else
            {
                Console.WriteLine("Employee/Manager cannot open account for this PAN User");
            }
        }



        #endregion

        #region Crud Operation
        public void GetUsers()
        {
            var result = logic.GetUsers();
            foreach (var customer in result)
            {
                Console.WriteLine("\n");
                Console.WriteLine($"User Id : {customer.Id}");
                Console.WriteLine($"User Name : {customer.Name}");
                Console.WriteLine($"User Address : {customer.Address}");
                Console.WriteLine($"User DOB : {customer.UserName}");
                Console.WriteLine($"User PAN : {customer.PAN}");
                Console.WriteLine($"Usert Type : {customer.UserType}");
                Console.WriteLine("======================================================================");
            }

        }

        public void GetCustomers()
        {
            var result = logic.GetCustomers();
            foreach (var customer in result)
            {
                Console.WriteLine("\n");
                Console.WriteLine($"Customer Id : {customer.CustId}");
                Console.WriteLine($"Customer Name : {customer.CustName}");
                Console.WriteLine($"Customer Address : {customer.Address}");
                Console.WriteLine($"Customer DOB : {customer.DOB}");
                Console.WriteLine($"Customer PAN : {customer.PAN}");
                Console.WriteLine("======================================================================");
            }
        }
        #endregion

        #region Reg&Login
        public int Login(Logins logCust)
        {
            int userType = 0;
            var allUsers = logic.GetUsers();
            var exitUser = allUsers.FirstOrDefault(y => y.Name == logCust.UserName && y.Password == logCust.Password);
            if(exitUser != null && exitUser.UserType == logCust.UserType)
            {
                    if (logCust.UserType == BussinessEntity.userType.employee)
                    {
                        userType = 2;
                    }
                    else if (logCust.UserType == BussinessEntity.userType.customer)
                    {
                        userType = 1;
                    }
                    else
                    {
                        userType = 3;
                    }
            }
            else
            {
                userType = 5;
            }
           
            return userType;
        }

        public bool Registration(Logins reg)
        {
            bool result;
            var allUsers = logic.GetUsers();
            var exitUser = allUsers.FirstOrDefault(z => z.UserName == reg.UserName && z.Password == reg.Password && z.UserType == reg.UserType);
            if (exitUser == null)
            {
                bool isSuccess = logic.AddUser(reg);
                if (isSuccess) { result = true; }
                else { result = false; }

            }
            else
            {
                result = false;
            }
            return result;
        }
        #endregion

    }
}
