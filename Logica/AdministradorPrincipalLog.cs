using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades;
using System.Data.SqlClient;
using Dapper;
namespace Logica
{
        public class AdministradorPrincipalLog
        {
            string connString = "server=ROBERTO\\SQLEXPRESS ; database=Matricula ; integrated security = true";
        List<AdministradorPrincipal> admin;
            public AdministradorPrincipalLog()
            {

            }

            public AdministradorPrincipal buscarAdmPr(string usuario, string contrasenna)
            {
                using (SqlConnection conn = new SqlConnection(connString))
                {
                    admin = conn.Query<AdministradorPrincipal>("Select * from [Matricula].[dbo].[AdministradorPrincipal] where usuario ='" + usuario + "';").ToList();
                }

                foreach (AdministradorPrincipal ap in admin)
                {
                    if (ap.Usuario == usuario)
                    {
                        return ap;
                    }

                }
                return null;
            }

        }
    }

