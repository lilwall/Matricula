using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
   public class Administrativo: Usuario
    {

        /// <summary>
        /// hereda los datos de la clase usuario
        /// </summary>
        public string Puesto { set; get; }

        public Administrativo(string puesto, int id, string nombre, string apellido, int telefono, string correo, string nombreUs, string contrasena, int perfil) : base(id, nombre, apellido, telefono, correo, nombreUs, contrasena, perfil)
        {
            Puesto = puesto;
        }
    }
}
