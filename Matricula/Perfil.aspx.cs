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
    public partial class Perfil : System.Web.UI.Page
    {
        SelecCursoLog perfilLog = new SelecCursoLog();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void aceptarBtn(object sender, EventArgs e)
        {
            int usuario = InicioLog.uActual.Id;
            List<SelecCurso> perfiles = new List<SelecCurso>();
            perfiles.Add(new SelecCurso(1, usuario, "Lunes", lunesHoraDdl.SelectedItem.Text, lunesSedeDdl.SelectedItem.Text));
            perfiles.Add(new SelecCurso(2, usuario, "Martes", martesHoraDdl.SelectedItem.Text, martesSedeDdl.SelectedItem.Text));
            perfiles.Add(new SelecCurso(3, usuario, "Miercoles", miercolesHoraDdl.SelectedItem.Text, miercolesSedeDdl.SelectedItem.Text));
            perfiles.Add(new SelecCurso(4, usuario, "Jueves", juevesHoraDdl.SelectedItem.Text, juevesSedeDdl.SelectedItem.Text));
            perfiles.Add(new SelecCurso(5, usuario, "Viernes", viernesHoraDdl.SelectedItem.Text, viernesSedeDdl.SelectedItem.Text));
            perfiles.Add(new SelecCurso(6, usuario, "Sabado", sabadoHoraDdl.SelectedItem.Text, sabadoSedeDdl.SelectedItem.Text));
            perfilLog.actualizarSelecCurso(Logica.InicioLog.uActual.Id, perfiles);
            mensajeLbl.Text = "Preferencias actualizadas";
        }
    }
}