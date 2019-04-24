using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades;
using Dapper;
using System.Data.SqlClient;

namespace Logica
{
    public class AdministrativoLog
    {
        string connString = "server=desktop-b6efbeb\\sqlexpress ; database=Matricula ; integrated security = true";
        public static List<Administrativo> adms;

        public AdministrativoLog()
        {
            verAdm();
        }

        public void verAdm()
        {
            using (SqlConnection conn = new SqlConnection(connString))
            {
                adms = conn.Query<Administrativo>("Select a.puesto, u.id, u.nombre, u.apellido, u.telefono, u.correo, u.perfil, u.nombreUs, u.contrasena  from Administrativo a, Usuario u where perfil = 3; ").ToList();
            }
        }

        public Administrativo crearAdm(string puesto, int id, string nombre, string apellido, string telefono, int correo, int perfil, string nombreUs, string contrasena)
        {
            if (buscarEstu(id) == null)
            {
                string sql = "insert into [Matricula].[dbo].[Usuario] ([Id], [Nombre], [Apellido] , [Telefono] , [Correo] , [NombreUs], [Contrasena] , [Perfil]) VALUES (@id, @nombre, @apellido, @correo, @telefono, @perfil, @nombreUs, @contrasena)";
                using (SqlConnection conn = new SqlConnection(connString))
                {
                    var filasUsuario = conn.Execute(sql, new
                    {
                        id,
                        nombre,
                        apellido,
                        telefono,
                        correo,
                        nombreUs,
                        contrasena,
                        perfil
                    });

                    sql = "insert into [Matricula].[dbo].[Administrativo] ([Id], [puesto]) VALUES (@id, @puesto)";
                    var filasEstudiante = conn.Execute(sql, new
                    {
                        id,
                        puesto
                    });
                }
                verAdm();
                Administrativo administrativo = new Administrativo(puesto, id, nombre, apellido, correo, telefono,   nombreUs, contrasena, perfil);
                return administrativo;
            }
            return null;
        }

        public Administrativo buscarEstu(int id)
        {
            foreach (Administrativo a in adms)
            {
                if (id == a.Id)
                {
                    return a;
                }
            }
            return null;
        }

        public void actualizarInfo (int id,  int telefono, string correo)
       {
           string sql = "update [Matricula].[dbo].[Usuario] set Telefono = @telefono , Correo = @correo where Id = @id";
           using (SqlConnection conn = new SqlConnection(connString))
           {
               var filas = conn.Execute(sql, new
               {
                   Id = id,
                   Correo = correo,
                   Telefono = telefono
               });
            }
            verAdm();
       }
   }
}


