using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    /// <summary>
    ///clase de seleccion de cursos en linea con la de estudiante
    /// </summary>
   public class SelecCurso
    {
        public int Id { set; get; }
        public int Estudiante { set; get; }
        public string Dia { set; get; }
        public string Hora { set; get; }
        public string Sede { set; get; }

        public SelecCurso(int id, int estudiante, string dia, string hora, string sede)
        {
            Id = id;
            Estudiante = estudiante;
            Dia = dia;
            Hora = hora;
            Sede = sede;
        }
    }
}
