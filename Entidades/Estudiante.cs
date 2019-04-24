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

        public Estudiante(string carrera, int id, string nombre, string apellido, int telefono, string correo, string nombreUs, string contrasena, int perfil) :base( id,  nombre,  apellido,  telefono,  correo,  nombreUs,  contrasena,  perfil) 
        {
            Carrera = carrera;
        }
    }

        }
    
