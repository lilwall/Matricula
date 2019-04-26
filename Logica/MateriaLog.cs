using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using Entidades;
using Dapper;

namespace Logica
{
    public class MateriaLog
    {
        string connString = "server=ROBERTO\\SQLEXPRESS ; database=Matricula ; integrated security = true";
        public static List<Materia> materias = new List<Materia>();

        public MateriaLog()
        {
            VerMaterias();
        }

        public void VerMaterias()
        {
            using (SqlConnection conn = new SqlConnection(connString))
            {
                materias = conn.Query<Materia>("Select m.id, m.codigo, m.nombre , ma.nombre as materia, m.cuatrimestre, m.descripcion, m.aula, concat(concat(p.nombre, ' '), p.Apellido)  as docente from Materia m, usuario p, Carrera ca where m.docente = p.Id AND m.carrera = ca.id;").ToList();
            }
        }

        public Materia CrearMateria(int id, string codigo, string nombre, string carrera, string cuatrimestre, string descripcion, string aula, string docente)
        {
            Materia materia = new Materia(id, codigo, nombre, carrera, cuatrimestre, descripcion, aula, docente);
            string sql = "insert into [Matricula].[dbo].[Materia] ([Id], [Codigo], [Nombre] , [Carrera] , [Cuatrimestre] , [Descripcion] , [Aula], [Docente]) VALUES (@id, @codigo, @nombre, @carrera, @cuatrimestre, @descripcion, @aula, @docente)";
            using (SqlConnection conn = new SqlConnection(connString))
            {
                var rowsUsuario = conn.Execute(sql, new
                {
                    materia.Id,
                    materia.Codigo,
                    materia.Nombre,
                    materia.Carrera,
                    materia.Cuatrimestre,
                    materia.Descripcion,
                    materia.Aula,
                    materia.Docente
                });
            }
            VerMaterias();
            return materia;
        }

        public Materia BuscarMateria(int id)
        {
            foreach (Materia c in materias)
            {
                if (c.Id == id)
                {
                    return c;
                }
            }
            return null;
        }

        public Materia EditInfoMateria(int id, string descripcion, string aula, string docente)
        {
            string sql = "update [Matricula].[dbo].[Materia] set Docente = @docente, Descripcion = @descripcion, Aula = @aula where id = @id";
            using (SqlConnection conn = new SqlConnection(connString))
            {
                var rows = conn.Execute(sql, new
                {
                    Id = id,
                    Docente = docente,
                    Descripcion = descripcion,
                    Aula = aula
                });
            }
            VerMaterias();
            return BuscarMateria(id);
        }

    }
}
