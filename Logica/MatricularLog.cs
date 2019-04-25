using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using Entidades;
using Dapper;

namespace Logica
{
    public class MatricularLog
    {

        string connString = "server=desktop-b6efbeb\\sqlexpress ; database=Matricula ; integrated security = true";
        public static List<Matricular> matriculas = new List<Matricular>();
        public static List<Matricular> matriculasID = new List<Matricular>();

        public MatricularLog()
        {
            VerMatriculas();
            VerMatriculasId();
        }

        public void VerMatriculas()
        {
            using (SqlConnection conn = new SqlConnection(connString))
            {
                matriculas = conn.Query<Matricular>("select c.nombre as materia, concat(concat(u.nombre, ' '), u.Apellido) as estudiante, m.nota, concat(concat(p.nombre, ' '), p.Apellido) as docente from matricular m, materia c, usuario u, usuario p where c.id = m.materia AND p.id = m.docente AND u.id = m.estudiante;").ToList();
            }
        }

        public void VerMatriculasId()
        {
            using (SqlConnection conn = new SqlConnection(connString))
            {
                matriculasID = conn.Query<Matricular>("select CAST(materia as varchar(30)) as materia , CAST(estudiante as varchar(30)) as estudiante, nota, CAST(docente as varchar(30)) as docente from matricular;").ToList();
            }
        }

        public Boolean Matricular(int materia, int estudiante)
        {
            int nota = 0;


            string sql = "insert into [Matricula].[dbo].[Matricular] ([Materia], [estudiante], [Nota] , [Docente]) VALUES (@materia, @estudiante, @nota, (select docente from materia where id = @materia))";
            using (SqlConnection conn = new SqlConnection(connString))
            {
                var rowsUsuario = conn.Execute(sql, new
                {
                    materia,
                    estudiante,
                    nota
                });
            }
            VerMatriculas();
            return true;
        }



        public Matricular AsignarNota(int materia, int estudiante, int nota)
        {
            Matricular matricula = new Matricular(Convert.ToString(materia), Convert.ToString(estudiante), nota, "");
            string sql = "update [Matricula].[dbo].[Matricular] set nota = @nota where materia = @materia AND estudiante = @estudiante";
            using (SqlConnection conn = new SqlConnection(connString))
            {
                var rows = conn.Execute(sql, new
                {
                    Materia = materia,
                    Estudiante = estudiante,
                    Nota = nota
                });
            }
            VerMatriculas();
            VerMatriculasId();
            return matricula;
        }
    }
}
