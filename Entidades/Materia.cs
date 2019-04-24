using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Materia
    {

        public int Id { set; get; }
        public string Codigo { set; get; }
        public string Nombre { set; get; }
        public string Carrera { set; get; }
        public string Cuatrimestre { set; get; }
        public string Descripcion { set; get; }
        public string Aula { set; get; }
        public string Docente { set; get; }

        public Materia(int id, string codigo, string nombre, string carrera, string cuatrimestre, string descripcion, string aula, string docente)
        {
            Id = id;
            Codigo = codigo;
            Nombre = nombre;
            Carrera = carrera;
            Cuatrimestre = cuatrimestre;
            Descripcion = descripcion;
            Aula = aula;
            Docente = docente;
        }


    }
}
