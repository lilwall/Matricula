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
    public class SelecCursoLog
    {
        string connString = "server=ROBERTO\\SQLEXPRESS ; database=Matricula ; integrated security = true";
        public static List<SelecCurso> selecCursos;

        public void verSelecCurso()
        {
            using (SqlConnection conn = new SqlConnection(connString))
            {
                selecCursos = conn.Query<SelecCurso>("Select id, estudiante, dia, hora, sede  from SelecCurso;").ToList();
            }
        }

        public void actualizarSelecCurso(int Estudiante, List<SelecCurso> selecCursos)
        {
            string sql = "delete from [Matricula].[dbo].[SelecCurso] where estudiante = @Estudiante";
            using (SqlConnection conn = new SqlConnection(connString))
            {
                var filasDelete = conn.Execute(sql, new
                {
                    estudiante = Estudiante
                });


                sql = "insert into [Matricula].[dbo].SelecCurso  ([id], [estudiante], [dia] , [hora] , [sede]) VALUES (@id, @estudiante, @dia,@hora, @sede)";
                foreach (SelecCurso s in selecCursos)
                {
                    var filasAdd = conn.Execute(sql, new
                    {
                        s.Id,
                        s.Estudiante,
                        s.Dia,
                        s.Hora,
                        s.Sede
                    });
                }
                verSelecCurso();
            }
        }

        public List<SelecCurso> buscarSelecCursos(int id)
        {
            List<SelecCurso> LselecCur = new List<SelecCurso>();
            foreach (SelecCurso s in selecCursos)
            {
                if (s.Id == id)
                {
                    LselecCur.Add(s);
                }
            }
            return LselecCur;
        }
    }
}


