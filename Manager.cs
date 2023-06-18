using BusinessLogic;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleUI
{
    public class Manager
    {
        CustomerLogic logic = new CustomerLogic();
        CustomerDetails ob = new CustomerDetails();
        public void CommonManager()
        {
            byte n = 0;
            Console.WriteLine("\n");

            Console.WriteLine("For Portal_Registration enter 1");
            Console.WriteLine("\n");
            Console.WriteLine("For OpenAccount enter 2");
            Console.WriteLine("\n");
            Console.WriteLine("For See All Users enter 3");
            Console.WriteLine("\n");
            Console.WriteLine("For See All Customers details enter 4");
            Console.WriteLine("\n");
            Console.WriteLine("For Create Employee enter 5");
            n = byte.Parse(Console.ReadLine());

            switch (n)
            {
                case 1:
                    var userData = ob.RegisterData();
                    ob.Registration(userData);
                    break;
                case 2:
                    ob.OpenAccount();
                    break;
                case 3:
                    ob.GetUsers();
                    break;
                case 4:
                    ob.GetCustomers();
                    break;
                case 5:
                    CreateEmployee();
                    break;
            }
        }

        private void CreateEmployee()
        {
            var employee = ob.EmployeeData();
            employee.DeptId = (BussinessEntity.Dept)(employee.DeptId == BussinessEntity.Dept.Deposit ? 1001 : 1002);
            bool isSuccess = logic.CreateEmployee(employee);
            if (!isSuccess)
            {
                Console.WriteLine("Something went wrong");
            }
        }
    }
}
