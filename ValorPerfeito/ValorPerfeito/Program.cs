using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ValorPerfeito
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Informe um numero para saber se ele é Perfeito:");
            var num = Console.ReadLine();

            if (!string.IsNullOrEmpty(num))
            {
                valorPerfeito(Convert.ToInt32(num));
            }
        }
        public static void valorPerfeito(int num)
        {
            for(var i=1; i<num; i++)
            {
                if (num % i == 0)
                {
                    Console.WriteLine("Valor é Perfeito!");
                    Console.WriteLine("");
                    Console.WriteLine("Pressione qualquer tecla para continuar...");
                }
                else
                {
                    Console.WriteLine("O numero possui resto! Ele não é Perfeito.");
                    Console.WriteLine("");
                    Console.WriteLine("Pressione qualquer tecla para continuar...");
                }
            }

        }

    }
}
