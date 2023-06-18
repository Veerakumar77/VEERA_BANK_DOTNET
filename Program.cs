using BussinessEntity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleUI
{
    internal class Program
    {
        static void Main(string[] args)
        {
            
            CustomerDetails ob = new CustomerDetails();
            ob.Common();
            Console.ReadKey();
        }
    }
}
