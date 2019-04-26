using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using Entidades;
using Dapper;


namespace Logica
{
    public class EstudianteLog
    {
        string connString = "server=ROBERTO\\SQLEXPRESS ; database=Matricula ; integrated security = true";
        public static List<Estudiante> ests;

        public EstudianteLog()
        {
            verEstuds();
        }

        public void verEstuds()
        {
            using (SqlConnection conn = new SqlConnection(connString))
            {
                ests = conn.Query<Estudiante>("Select e.carrera, u.id, u.nombre, u.apellido,u.telefono, u.correo,  u.perfil, u.nombreUs, u.contrasena  from Estudiante e, Usuario u where perfil = 1; ").ToList();
            }
        }

        public Estudiante crearEstud(string carrera, int id, string nombre, string apellido, int telefono, string correo, int perfil, string nombreUs, string contrasena)
        {
            if (buscarEstu(id) == null)
            {
                string sql = "insert into [Matricula].[dbo].[Usuario] ([Id], [Nombre], [Apellido] , [Correo] , [Telefono] ,[Perfil], [NombreUs], [Contrasena],) VALUES (@id, @nombre, @apellido, @correo, @telefono, @perfil, @nombreUs, @contrasena)";
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

                    sql = "insert into [Matricula].[dbo].[Estudiante] ([Id], [carrera]) VALUES (@id, @carrera)";
                    var filasEstudiante = conn.Execute(sql, new
                    {
                        id,
                        carrera
                    });
                }
                verEstuds();
                Estudiante estudiante = new Estudiante(carrera, id, nombre, apellido, telefono, correo, perfil, nombreUs, contrasena);
                return estudiante;
            }
            return null;
        }

        public Estudiante buscarEstu(int id)
        {
            foreach (Estudiante e in ests)
            {
                if (id == e.Id)
                {
                    return e;
                }
            }
            return null;
        }

        public void actualizarInfo(int id, int telefono, string correo)
        {
            string sql = "update [Matricula].[dbo].[Usuario] set Telefono = @telefono, Correo = @correo where Id = @id";
            using (SqlConnection conn = new SqlConnection(connString))
            {
                var filas = conn.Execute(sql, new
                {
                    Id = id,
                    Telefono = telefono,
                    Correo = correo
                });
            }
            verEstuds();
        }
    }
}


