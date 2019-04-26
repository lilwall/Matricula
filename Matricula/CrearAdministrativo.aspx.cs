using Logica;
using System;
using System.Collections.Generic;
using Entidades;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Matricula
{
    public partial class CrearAdministrativo : System.Web.UI.Page
    {
        AdministrativoLog logica = new AdministrativoLog();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void crearAdministrativoBtn(object sender, EventArgs e)
        {
            Administrativo administrativo = logica.crearAdm(puestoTxb.Text, Convert.ToInt32(idTxb.Text), nombreTxb.Text, apellidosTxb.Text, Convert.ToInt32(telefonoTxb.Text), correoTxb.Text, 3, usuarioTxb.Text, contrasenaTxb.Text);
            if (administrativo != null)
                mensajeLbl.Text = "El administrativo " + administrativo.Nombre + " " + administrativo.Apellido + "(" + administrativo.Id + ") ha sido creado correctamente";
            else
                mensajeLbl.Text = "Error al crear el administrativo";

        }
}
}