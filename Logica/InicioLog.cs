using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades;

namespace Logica
{

    public class InicioLog
    {

    public static Usuario uActual;

    public Usuario InicioSes(string usuario, string contrasena)
    {
        UsuarioLog log = new UsuarioLog();
        foreach (Usuario u in UsuarioLog.usuarios)
        {
            if (u.NombreUs == usuario && u.Contrasena == contrasena)
            {
                uActual = u;
                return u;
            }
        }
        return null;
    }
}
}


