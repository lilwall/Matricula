    using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Estudiante : Usuario
    {

        /// <summary>
        /// hereda los datos de la clase usuario
        /// </summary>

        public string Carrera { set; get; }

        public Estudiante(string carrera, int id, string nombre, string apellido, int telefono, string correo, int perfil, string nombreUs, string contrasena) :base( id,  nombre,  apellido,  telefono,  correo,  perfil,  nombreUs,  contrasena) 
        {
            Carrera = carrera;
        }
    }

        }
    
