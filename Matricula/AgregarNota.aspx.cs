using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Logica;
using Entidades;


namespace Matricula
{
    public partial class AgregarNota : System.Web.UI.Page
    {

        MatricularLog logica = new MatricularLog();
        static string selecValor = "0";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (materiasddl.SelectedItem != null)
            {
                selecValor = materiasddl.SelectedItem.Value;
            }
            ListItem defecto = new ListItem();
            defecto.Value = "0";
            defecto.Text = "Seleccione una materia";
            materiasddl.Items.Add(defecto);
            ListItem materia;
            int cont = 0;
            foreach (Matriculaa matricula in MatricularLog.matriculasID)
            {
                if (Convert.ToInt32(matricula.Docente) == Logica.InicioLog.uActual.Id)
                {
                    materia = new ListItem();
                    materia.Value = matricula.Materia;
                    materia.Text = MatricularLog.matriculas[cont].Materia;
                    if (!materiasddl.Items.Contains(materia))
                    {
                        materiasddl.Items.Add(materia);
                    }
                }
                cont++;
            }
        }

        protected void NotaBtn(object sender, EventArgs e)
        {
            if (logica.AsignarNota(Convert.ToInt32(selecValor), Convert.ToInt32(idTxb.Text), Convert.ToInt32(notaTxb.Text)) != null)
            {
                lblMensaje.Text = "La nota se actualizo con éxito.";
            }
        }

        protected void MatriculaCambioDdl(object sender, EventArgs e)
        {
            estudiantesTxb.Text = "";
            int cont = 0;
            foreach (Matriculaa matricula in MatricularLog.matriculasID)
            {
                if (Convert.ToInt32(matricula.Docente) == Logica.InicioLog.uActual.Id)
                {
                    if (selecValor == matricula.Materia)
                    {
                        estudiantesTxb.Text += "ID: " + matricula.Estudiante + ". Nombre: " + MatricularLog.matriculas[cont].Estudiante;
                    }
                }
                cont++;
            }
        }
    }
}