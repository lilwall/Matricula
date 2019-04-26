using Entidades;
using Logica;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Matricula
{
    public partial class AgregarMateria : System.Web.UI.Page
    {

        MateriaLog materialogica = new MateriaLog();
        protected void Page_Load(object sender, EventArgs e)
        {
           
                DocenteLog docenteLog = new DocenteLog();
                CarreraLog carreraLog = new CarreraLog();
                ListItem docente;
                ListItem carrera;

                foreach (Docente d in DocenteLog.docentes)
                {
                    docente = new ListItem();
                    docente.Text = d.Nombre + " " + d.Apellido + " (" + d.Id + ")";
                    docente.Value = Convert.ToString(d.Id);
                    docentesDdl.Items.Add(docente);
                }

                foreach (Entidades.Carrera c in CarreraLog.carreras)
                {
                    carrera = new ListItem();
                    carrera.Text = c.Nombre;
                    carrera.Value = Convert.ToString(c.Id);
                    carrerasDdl.Items.Add(carrera);
                }
        }

        protected void aceptarBtn(object sender, EventArgs e)
        {
            if (aulaTxb.Text != "" && codigoTxb.Text != "" && descripcionTxb.Text != "" && nombreTxb.Text != "" && periodoLectivoTxb.Text != "")
            {

                if (materialogica.CrearMateria(Convert.ToInt32(iDTxb.Text), codigoTxb.Text, nombreTxb.Text, carrerasDdl.SelectedItem.Text, periodoLectivoTxb.Text, descripcionTxb.Text, aulaTxb.Text, docentesDdl.SelectedItem.Value) != null)
                {
                    mensajeLbl.Text = "La Materia " + nombreTxb.Text + " ha sido creada correctamente.";
                }
            }
            else
            {
                mensajeLbl.Text = "Quedan espacios vacíos, favor completar todo lo requerido";
            }
        }
    }
}