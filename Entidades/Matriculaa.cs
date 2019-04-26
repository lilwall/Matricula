using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Matriculaa
    {

        public string Materia { set; get; }
        public string Estudiante { set; get; }
        public int Nota { set; get; }
        public string Docente { set; get; }

        public Matriculaa(string materia, string estudiante, int nota, string docente)
        {
            Materia = materia;
            Estudiante = estudiante;
            Nota = nota;
            Docente = docente;
        }
    }
}
