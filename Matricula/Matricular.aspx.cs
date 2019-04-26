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
    public partial class Matricular : System.Web.UI.Page
    {

        MatricularLog logica = new MatricularLog();
        MateriaLog materiaLogica = new MateriaLog();
        List<int> cursosId = new List<int>();
        static List<int> materiasMatricular = new List<int>();

        protected void Page_Load(object sender, EventArgs e)
        {
            materiasTxb.Text = "";
            string materia = "";
            foreach (Materia m in MateriaLog.materias)
            {
                materia = m.Id + "." + m.Nombre + "\nDocente: " + m.Docente + "\nAula: " + m.Aula + "\n------------------------------\n";
                materiasTxb.Text += materia;
                cursosId.Add(m.Id);
            }
        }

        protected void agregarBtn(object sender, EventArgs e)
        {
            Boolean existe = false;
            foreach (int i in materiasMatricular)
            {
                if (Convert.ToInt32(materiaIdTxb.Text) == i)
                {
                    existe = true;
                }
            }
            if (existe)
            {
                lblMensaje.Text = "La materia que intenta agregar, ya se encuentra en la lista";
            }
            else
            {
                string materia = "";
                foreach (int i in cursosId)
                    if (i == Convert.ToInt32(materiaIdTxb.Text))
                    {
                        foreach (Materia m in MateriaLog.materias)
                        {
                            if (m.Id == i)
                            {
                                materia = m.Id + "." + m.Nombre + "\nDocente: " + m.Docente + "\nAula: " + m.Aula + "\n------------------------------\n";
                                materiasMatriTxb.Text += materia;
                                materiasMatricular.Add(m.Id);
                            }
                        }
                    }
            }
        }

        protected void matricualrBtn_Click(object sender, EventArgs e)
        {
            foreach (int i in materiasMatricular)
            {
                logica.Matricular(i, Logica.InicioLog.uActual.Id);
            }
            lblMensaje.Text = "Cursos matriculados con exito";
        }
    }
}