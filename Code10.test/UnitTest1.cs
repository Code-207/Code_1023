using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Code10.test
{
    [TestClass]
    public class UnitTest1
    {
        [TestMethod]
        public void TestMethod1()
        {
           Assert.IsTrue(Model.SqlHelper<UnitTest1>.ExceuteNonQuery()!=null); 
        }
    }
}
