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
    public class DocenteLog
    {
        string connString = "server=desktop-b6efbeb\\sqlexpress ; database=Matricula ; integrated security = true";
        public static List<Docente> docentes;

        public DocenteLog()
        {
            verDocente();
        }

        public void verDocente()
        {
            using (SqlConnection conn = new SqlConnection(connString))
            {
                docentes = conn.Query<Docente>("Select d.facultad, u.id, u.nombre, u.apellido, u.telefono, u.correo, u.perfil, u.nombreUs, u.contrasena from Docente d, Usuario u where perfil = 2;").ToList();
            }
        }

        public Docente crearDocente(string facultad, int id, string nombre, string apellido, int telefono, string correo, int perfil, string nombreUs, string contrasena)
        {
            if (buscarDoc(id) == null)
            {
                string sql = "insert into [Matricula].[dbo].[Usuario] ([Id], [Nombre], [Apellido] , [Correo] , [Telefono]  , [Perfil], [NombreUs], [Contrasena]) VALUES (@id, @nombre, @apellido, @correo, @telefono, @perfil, @nombreUs, @contrasena)";
                using (SqlConnection conn = new SqlConnection(connString))
                {
                    var filasUsuario = conn.Execute(sql, new
                    {
                        id,
                        nombre,
                        apellido,
                        correo,
                        telefono,
                        perfil,
                        nombreUs,
                        contrasena
                    });

                    sql = "insert into [Matricula].[dbo].[Docente] ([Id], [facultad]) VALUES (@id, @facultad)";
                    var filasDocente = conn.Execute(sql, new
                    {
                        id,
                        facultad
                    });
                }
                verDocente();
                Docente docente = new Docente(facultad, id, nombre, apellido,telefono, correo, perfil, nombreUs, contrasena);
                return docente;
            }
            return null;
        }

        public Docente buscarDoc(int id)
        {
            foreach (Docente d in docentes)
            {
                if (id == d.Id)
                {
                    return d;
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
            verDocente();
        }
    }

}
