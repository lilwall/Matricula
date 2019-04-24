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
        Logica.AdministradorPrincipalLogica admPri = new Logica.AdministradorPrincipalLogica();
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
                    Response.Redirect("");
                }
                else
                {
                    if (usuario.Perfil == 2)
                    {
                        Response.Redirect("#");
                    }
                    else
                    {
                        Response.Redirect("");
                    }
                }
            }
            else
            {
                if (admPri.buscarAdmPr(usuarioTxt.Text, contrasenaTxt.Text) != null)
                {
                    Response.Redirect("AdministradorPrincipal.aspx");
                }
            }
        }
    }
}