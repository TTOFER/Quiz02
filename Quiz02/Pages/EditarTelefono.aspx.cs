using Quiz02.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Quiz02.Pages
{
    public partial class EditarTelefono : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarInformacionDeTelefono();

                CVFechaLanzamiento.ValueToCompare = DateTime.Now.ToShortDateString();
            }

        }

        private void CargarInformacionDeTelefono()
        {
            int idTelefono = Convert.ToInt32(Request.QueryString["id"]);
            TxtidTelefono.Text = idTelefono.ToString();

            try
            {
                using (PV_Quiz02Entities db = new PV_Quiz02Entities())
                {
                    var datosTelefono = db.spConsultarTelefonoPorId(idTelefono).FirstOrDefault();

                    if (datosTelefono != null)
                    {

                        TxtMarca.Text = datosTelefono.marca;
                        TxtNombre.Text = datosTelefono.nombre;
                        TxtAnhoFabricacion.Text = datosTelefono.anhoFabricacion.ToString();

                        TxtFechaLanzamiento.Text = datosTelefono.fechaLanzamiento.HasValue ? datosTelefono.fechaLanzamiento.Value.ToString("MM/dd/yyyy") : string.Empty;

                        //TxtFechaLanzamiento.Text = datosTelefono.fechaLanzamiento.ToString();
                        TxtPrecio.Text = datosTelefono.precio.ToString();
                    }
                }
            }
            catch (Exception)
            {
                Response.Redirect("Error.aspx");
            }
        }
        protected void BtnModificar_Click(object sender, EventArgs e)
        {
            try
            {
                int id_Telefono = Convert.ToInt32(TxtidTelefono.Text.Trim());
                string marca = TxtMarca.Text.Trim();
                string nombre = TxtNombre.Text.Trim();
                int anhoFabricacion = Convert.ToInt32(TxtAnhoFabricacion.Text.Trim());
                DateTime fechaLanzamiento = DateTime.Parse(TxtFechaLanzamiento.Text.Trim());
                int precio = Convert.ToInt32(TxtPrecio.Text.Trim());

                using (PV_Quiz02Entities db = new PV_Quiz02Entities())
                {
                    db.spEditarTelefono(id_Telefono, marca, nombre, anhoFabricacion, fechaLanzamiento, precio);
                }
            }
            catch (Exception)
            {
                Response.Redirect("~/Pages/Error.aspx");
            }
            Response.Redirect("ResultadoModificar.aspx");
        }

        protected void BtnEliminar_Click(object sender, EventArgs e)
        {
            try
            {
                int id_Telefono = Convert.ToInt32(TxtidTelefono.Text.Trim());

                using (PV_Quiz02Entities db = new PV_Quiz02Entities())
                {
                    db.spEliminarTelefono(id_Telefono);
                }
            }
            catch (Exception)
            {
                Response.Redirect("Error.aspx");
            }

            Response.Redirect("ResultadoEliminar.aspx");
        }
    }
}