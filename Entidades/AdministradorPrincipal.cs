using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{

    /// <summary>
    /// administrador principal de todos los roles
    /// </summary>
    public class AdministradorPrincipal
    {

        public string Usuario { set; get; }
        public string Contrasena { set; get; }

        public AdministradorPrincipal(string usuario, string contrasena)
        {
            Usuario = usuario;
            Contrasena = contrasena;
        }
    }
}
