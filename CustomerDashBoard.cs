using BusinessLogic;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleUI
{
    public class CustomerDashBoard
    {
        CustomerLogic logic = new CustomerLogic();
        CustomerDetails ob = new CustomerDetails();
        public void CommonCustomers()
        {
            byte n = 0;
            Console.WriteLine("\n");
            Console.WriteLine("For Registration enter 1");
            n = byte.Parse(Console.ReadLine());

            switch (n)
            {
                case 1:
                    var userData = ob.RegisterData();
                    ob.Registration(userData);
                    break;
            }
        }
        public void Deposit()
        {
            Console.WriteLine("\n");
            Console.WriteLine("Enter your amount ");
            int amt = int.Parse(Console.ReadLine());

        }
    }
}
