using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using Dapper;
using Entidades;

namespace Logica
{
    public class UsuarioLog
    {
        string connString = "server=desktop-b6efbeb\\sqlexpress ; database=Matricula ; integrated security = true";
        public static List<Usuario> usuarios;

        public UsuarioLog()
        {
            verUsuarios();
        }

        public void verUsuarios()
        {
            using (SqlConnection conn = new SqlConnection(connString))
            {
                usuarios = conn.Query<Usuario>("SELECT Id, Nombre, Apellido, Telefono, correo, NombreUs, Contrasena, Perfil from [Matricula].[dbo].[Usuario];").ToList();
            }
        }

        public Usuario buscarUsu(int id)
        {
            foreach (Usuario u in usuarios)
            {
                if (u.Id == id)
                {
                    return u;
                }
            }
            return null;
        }

        public void actualizarInfo(int id, int telefono, string correo)
        {
            string sql = "update [Matricula].[dbo].[Usuario] set  Telefono = @telefono, Correo = @correo where Id = @id";
            using (SqlConnection conn = new SqlConnection(connString))
            {
                var filas = conn.Execute(sql, new
                {
                    Id = id,
                    Telefono = telefono,
                    Correo = correo
                });
            }
            verUsuarios();
        }
    }
}


