using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Estacionamento
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Estacionamento carro1 = new Estacionamento(12345, "Honda", 10, 32, 45, 14, 24, 31);
            Estacionamento carro2 = new Estacionamento(41345, "Fiat", 23, 45, 54, 3, 43, 50);
            Estacionamento carro3 = new Estacionamento(69020, "Renault", 12, 23, 14, 17, 24, 35);
            Estacionamento carro4 = new Estacionamento(29301, "Volkwasgen", 8, 43, 51, 11, 43, 21);
            Estacionamento carro5 = new Estacionamento(23382, "Ford", 16, 21, 34, 18, 32, 54);
            Estacionamento[] listacarros = { carro1, carro2, carro3, carro4, carro5};
            for (int i = 0;  i < listacarros.Length; i++)
            {
                listacarros[i].Imprimedados();
            }
            
        }
    }
}
