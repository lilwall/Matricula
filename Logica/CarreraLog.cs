using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using Entidades;
using Dapper;

namespace Logica
{
    public class CarreraLog
    {
        string connString = "server=desktop-b6efbeb\\sqlexpress ; database=Matricula ; integrated security = true";
        public static List<Carrera> carreras = new List<Carrera>();

        public CarreraLog()
        {
            VerCarreras();
        }

        public void VerCarreras()
        {
            using (SqlConnection conn = new SqlConnection(connString))
            {
                carreras = conn.Query<Carrera>("Select id, nombre, descripcion from Carrera order by nombre;").ToList();
            }
        }

        public Carrera CrearCarrera(int id, string nombre, string descripcion)
        {
            Carrera carrera = new Carrera(id, nombre, descripcion);
            string sql = "insert into [Matricula].[dbo].[Carrera] ([Id], [Nombre] , [Descripcion]) VALUES (@id, @nombre, @descripcion)";
            using (SqlConnection conn = new SqlConnection(connString))
            {
                var rowsUsuario = conn.Execute(sql, new
                {
                    carrera.Id,
                    carrera.Nombre,
                    carrera.Descripcion
                });
            }
            VerCarreras();
            return carrera;
        }

        public Carrera BuscarCurso(int id)
        {
            foreach (Carrera c in carreras)
            {
                if (c.Id == id)
                {
                    return c;
                }
            }
            return null;
        }

    }
}
