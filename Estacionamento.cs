using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Policy;
using System.Text;
using System.Threading.Tasks;

namespace Estacionamento
{
    public class Estacionamento : Tempo 
    {
        private int placa;
        private string marca;
        private Tempo horaentrada;
        private Tempo horasaida;

        public Estacionamento()
        {

        }

        public Estacionamento(int _placa, string _marca, int hora_entrada, int minutos_entrada, int segundos_entrada,
    int hora_saida, int minutos_saida, int segundos_saida) 
        {
            placa = _placa;
            marca = _marca;

            horaentrada = new Tempo(hora_entrada, minutos_entrada, segundos_entrada);
            horasaida = new Tempo(hora_saida, minutos_saida, segundos_saida);
        }


        public int Placa { get => placa; set => placa = value; }
        public string Marca { get => marca; set => marca = value; }
        public Tempo Horaentrada { get => horaentrada; set => horaentrada = value; }
        public Tempo Horasaida { get => horasaida; set => horasaida = value; }

        public Estacionamento Solicita()
        {
            Console.WriteLine("Digite o número da placa do carro:");
            int n_placa  = Convert.ToInt32(Console.ReadLine());

            Console.WriteLine("Digite a marca do carro:");
            string marca_carro = Convert.ToString(Console.ReadLine());

            Console.WriteLine("Hora de entrada");
            Console.WriteLine("Escreva as horas:");
            int ehoras = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Escreva os minutos: ");
            int eminutos = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Escreva os segundos: ");
            int esegundos = Convert.ToInt32(Console.ReadLine());

            Console.WriteLine("Hora de saída");
            Console.WriteLine("Escreva as horas:");
            int shoras = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Escreva os minutos: ");
            int sminutos = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Escreva os segundos: ");
            int ssegundos = Convert.ToInt32(Console.ReadLine());

            Estacionamento carro = new Estacionamento(n_placa, marca_carro, ehoras, eminutos, esegundos, shoras, sminutos, ssegundos);
            return carro;
        }

        public void Imprimedados()
        {
            Console.WriteLine("Dados do carro\n---------------");
            Console.WriteLine("Placa do carro: " + placa);
            Console.WriteLine("Marca do carro: " + marca);
            Console.Write("Hora de entrada: ");
            horaentrada.Imprime();
            Console.Write("Hora de saida: ");
            horasaida.Imprime();
            double valorCobrado = Valorcobrado(horaentrada, horasaida);
            Console.WriteLine($"Valor cobrado: R${valorCobrado:F2}");
            Console.WriteLine("---------------");


        }

        public float Valorcobrado(Tempo _hentrada, Tempo _hsaida)
        {
            Tempo tdecorrido = new Tempo();
            tdecorrido = _hsaida.Subtraitempo(_hentrada);
            float tempo_em_segundos = (tdecorrido.Gethoras())* 3600 + (tdecorrido.Getminutos()) * 60 + tdecorrido.Getsegundos();
            float valor = tempo_em_segundos / 450;
            return valor;
        }
    }
}
