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
    public partial class CrearDocente : System.Web.UI.Page
    {
         DocenteLog logica = new DocenteLog();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void crearDocenteoBtn(object sender, EventArgs e)
        {
            Docente docente = logica.crearDocente(facultadTxb.Text, Convert.ToInt32(idTxb.Text), nombreTxb.Text, apellidosTxb.Text, Convert.ToInt32(telefonoTxb.Text), correoTxb.Text, 2, usuarioTxb.Text, contrasenaTxb.Text);
            if (docente != null)
                mensajeLbl.Text = "El docente " + docente.Nombre + " " + docente.Apellido + "(" + docente.Id + ") ha sido creado correctamente";
            else
                mensajeLbl.Text = "Error al crear el docente";
        }
    }
}