using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
     public class Usuario
    {
        public int Id { set; get; }
        public string Nombre { set; get; }
        public string Apellido { set; get; }
        public int Telefono { set; get; }
        public string Correo { set; get; }
        public string NombreUs { set; get; }
        public string Contrasena { set; get; }
        public int Perfil { set; get; }

        public Usuario(int id, string nombre, string apellido, int telefono, string correo, string nombreUs, string contrasena, int perfil)
        {
            Id = id;
            Nombre = nombre;
            Apellido = apellido;
            Telefono = telefono;
            Correo = correo;
            NombreUs = nombreUs;
            Contrasena = contrasena;
            Perfil = perfil;
        }
    }
}
