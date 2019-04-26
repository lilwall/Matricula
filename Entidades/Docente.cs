using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{

    /// <summary>
    /// hereda los datos de la clase usuario
    /// </summary>
  public  class Docente: Usuario
    {
        public string Facultad { set; get; }

        public Docente(string facultad, int id, string nombre, string apellido, int telefono, string correo, int perfil, string nombreUs, string contrasena) : base(id, nombre, apellido, telefono, correo, perfil, nombreUs, contrasena)
        {
            Facultad = facultad;
        }

    }
}
