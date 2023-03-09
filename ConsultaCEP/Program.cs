using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ConsultaCEP.ConsultarCEP;

namespace ConsultaCEP
{
    /*
     Consuma o webservice dos correios passando um CEP qualquer e mostre em tela o endereço que o mesmo retornar. Endereço:
        https://apps.correios.com.br/SigepMasterJPA/AtendeClienteService/AtendeCliente?wsdl - Método: consultaCEP. (2 pontos);
    */
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Informe o CEP que deseja pesquisar");
            var cep = Console.ReadLine();
            if (!string.IsNullOrEmpty(cep))
            {
                consultaCEP(cep);
            }

        }
        private static void consultaCEP(string cep)
        {
            using (var ws = new AtendeClienteClient())
            {
                var response = ws.consultaCEP(cep);

                Console.Clear();
                Console.WriteLine(String.Format("Endereço: {0}", response.end));
                Console.WriteLine(String.Format("Bairro: {0}", response.bairro));
                Console.WriteLine(String.Format("Cidade: {0}", response.cidade));
                Console.WriteLine(String.Format("Estado: {0}", response.uf));
                Console.WriteLine(String.Format("CEP: {0}", response.cep));
                Console.WriteLine("");
                Console.WriteLine("Pressione qualquer tecla para continuar...");

                Console.ReadKey();


            }
        }
    }
}
