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
    public partial class EditarMateria : System.Web.UI.Page
    {
        MateriaLog logica = new MateriaLog();
        DocenteLog docenteLog = new DocenteLog();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void aceptarBtn(object sender, EventArgs e)
        {
            if (logica.EditInfoMateria(Convert.ToInt32(iDTxb.Text), descripcionTxb.Text, aulaTxb.Text, docentesDdl.SelectedItem.Value) != null)
            {
                mensajeLbl.Text = "Materia " + mensajeLbl.Text + " actualizada.";
            }

        }

        protected void BuscarBtn(object sender, EventArgs e)
        {
            Materia materia = logica.BuscarMateria(Convert.ToInt32(iDTxb.Text));
            if (materia != null)
            {
                iDTxb.Text = Convert.ToString(materia.Id);
                codigoTxb.Text = materia.Codigo;
                nombreTxb.Text = materia.Nombre;
                carreraTxb.Text = materia.Carrera;
                cuatrimestreTxb.Text = materia.Cuatrimestre;
                descripcionTxb.Text = materia.Descripcion;
                aulaTxb.Text = materia.Aula;
                ListItem docente;
                foreach (Docente d in DocenteLog.docentes)
                {
                    docente = new ListItem();
                    docente.Text = d.Nombre + d.Apellido + " (" + d.Id + ")";
                    docente.Value = Convert.ToString(d.Id);
                    docentesDdl.Items.Add(docente);
                }
                docentesDdl.SelectedItem.Text = materia.Docente;
            }
            else
            {
                buscarLbl.Text = "El ID ingresado no coincide con ninguno de las materias en el sistema";
            }
        }

    }
}