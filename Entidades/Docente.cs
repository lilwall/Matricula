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

        public Docente(string facultad, int id, string nombre, string apellido, int telefono, string correo, string nombreUs, string contrasena, int perfil) : base(id, nombre, apellido, telefono, correo, nombreUs, contrasena, perfil)
        {
            Facultad = facultad;
        }

    }
}
