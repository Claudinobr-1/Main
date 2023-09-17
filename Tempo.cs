using System;
using System.Collections.Generic;
using System.Dynamic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Estacionamento
{
    public class Tempo
    {
        public int horas;
        public int minutos;
        public int segundos;

        public Tempo()
        {

        }

        public Tempo(int _horas, int _minutos, int _segundos)
        {
            horas = _horas;
            minutos = _minutos;
            segundos = _segundos;
        }

        public int Horas { get => horas; set => horas = value; }
        public int Minutos { get => minutos; set => minutos = value; }
        public int Segundos { get => segundos; set => segundos = value; }

        public int Gethoras()
        {
            return horas;
        }

        public int Getminutos()
        {
            return minutos;
        }

        public int Getsegundos()
        {
            return segundos;
        }


        public void Imprime()
        {
            Console.WriteLine(Convert.ToString(horas) + ":" + Convert.ToString(minutos) + ":" + Convert.ToString(segundos));
        }

        public Tempo Somatempo(Tempo tempo)
        {
            int shoras = horas + tempo.horas;
            int sminutos = minutos + tempo.minutos;
            int ssegundos = segundos + tempo.segundos;

            if (ssegundos >= 60)
            {
                sminutos += 1;
                ssegundos -= 60;
            }

            if (sminutos >= 60)
            {
                shoras += 1;
                sminutos -= 60;
            }

            if (shoras >= 24)
            {
                shoras -= 24; 
            }

            Tempo stempo = new Tempo(shoras, sminutos, ssegundos);
            return stempo;
        }

        public Tempo Subtraitempo(Tempo tempo)
        {
            int dhoras = horas - tempo.horas;
            int dminutos = minutos - tempo.minutos;
            int dsegundos = segundos - tempo.segundos;

            if (dsegundos <= 0)
            {
                dminutos -= 1;
                dsegundos += 60;
            }

            if (dminutos <= 0)
            {
                dhoras -= 1;
                dminutos += 60;
            }

            if (dhoras < 0)
            {
                dhoras += 24;
            }

            Tempo dtempo = new Tempo(dhoras, dminutos, dsegundos);
            return dtempo;
        }
    }
}
