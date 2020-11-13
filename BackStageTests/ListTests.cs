using Microsoft.VisualStudio.TestTools.UnitTesting;
using BackStage;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BackStage.Tests
{
    [TestClass()]
    public class ListTests
    {
        [TestMethod()]
        public void Table_nameTest()
        {
            foreach (var item in List.Table_name())
            {
                Console.WriteLine(item);
            }
            
        }
    }
}