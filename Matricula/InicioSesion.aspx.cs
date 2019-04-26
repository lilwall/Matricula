using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;


namespace Matricula
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        Logica.InicioLog inicio = new Logica.InicioLog();
        Logica.AdministradorPrincipalLog admPri = new Logica.AdministradorPrincipalLog();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void IniciarSesionBtn(object sender, EventArgs e)
        {
            Usuario usuario = inicio.InicioSes(usuarioTxt.Text, contrasenaTxt.Text);
            if (usuario != null)
            {
                if (usuario.Perfil == 1)
                {
                    Response.Redirect("EstudiantePrincipal.aspx");
                }
                else
                {
                    if (usuario.Perfil == 2)
                    {
                        Response.Redirect("DocentePrincipal.aspx");
                    }
                    else
                    {
                        Response.Redirect("AdministrativoPrincipal.aspx");
                    }
                }
            }
            else
            {
                if (admPri.buscarAdmPr(usuarioTxt.Text, contrasenaTxt.Text) != null)
                {
                    Response.Redirect("AdmininPrincipal.aspx");
                }
            }
        }
    }
}