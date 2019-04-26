using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;
using Logica;

namespace Matricula
{
    public partial class InicioEstudiante : System.Web.UI.Page
    {

        UsuarioLog logica = new UsuarioLog();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                idTxb.Text = Logica.InicioLog.uActual.Id.ToString();
                nombreTxb.Text = Logica.InicioLog.uActual.Nombre;
                apellidoTxb.Text = Logica.InicioLog.uActual.Apellido;
                correoTxb.Text = Logica.InicioLog.uActual.Correo;
                telefonoTxb.Text = Logica.InicioLog.uActual.Telefono.ToString();
            }
        }

        protected void ActualizarBtn(object sender, EventArgs e)
        {
            logica.actualizarInfo(Convert.ToInt32(idTxb.Text),  Convert.ToInt32(telefonoTxb.Text), correoTxb.Text);
            Logica.InicioLog.uActual = logica.buscarUsu(Logica.InicioLog.uActual.Id);
            mensajeLbl.Text = "Informacion actualizada";
        }
    }
}