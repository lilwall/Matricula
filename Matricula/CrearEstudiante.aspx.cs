using System;
using System.Collections.Generic;
using Entidades;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Logica;

namespace Matricula
{
    public partial class CrearEstudiante : System.Web.UI.Page
    {
        EstudianteLog logica = new EstudianteLog();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void crearEstudianteBtn(object sender, EventArgs e)
        {
            Estudiante estudiante = logica.crearEstud(carreraTxb.Text, Convert.ToInt32(idTxb.Text), nombreTxb.Text, apellidosTxb.Text, Convert.ToInt32(telefonoTxb.Text), correoTxb.Text, 1, usuarioTxb.Text, contrasenaTxb.Text);
            if (estudiante != null)
                mensajeLbl.Text = "El estudiante " + estudiante.Nombre + " " + estudiante.Apellido + "(" + estudiante.Id + ") ha sido creado correctamente";
            else
                mensajeLbl.Text = "Error al crear el estudiante";
        }
    }
}