using BackStages;

namespace ConsoleApp1
{
    class Program
    {
        static void Main(string[] args)
        {
            foreach (var item in List.Table_name())
            {
                System.Console.WriteLine(item);
            }
            System.Console.ReadKey();
        }
    }
}
