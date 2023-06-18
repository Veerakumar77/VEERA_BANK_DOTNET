using BusinessLogic;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleUI
{
    public class Employee
    {
        CustomerLogic logic = new CustomerLogic();
        CustomerDetails ob = new CustomerDetails();

        public void CommonEmployee()
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

            }
        }

    }
}
