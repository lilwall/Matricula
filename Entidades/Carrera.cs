using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
   public class Carrera
    {

        public int Id { set; get; }
        public string Nombre { set; get; }
        public string Descripcion { set; get; }

        public Carrera(int id, string nombre, string descripcion)
        {
            Id = id;
            Nombre = nombre;
            Descripcion = descripcion;
        }



    }
}
