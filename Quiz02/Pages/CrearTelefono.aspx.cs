using Quiz02.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Quiz02.Pages
{
    public partial class CrearTelefono : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Asignar fecha actual como valor a comparar para la fecha de lanzamiento
                CVFechaLanzamiento.ValueToCompare = DateTime.Now.ToShortDateString();
            }
        }

        protected void BtnGuardar_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                //capturar datos
                string marca = TxtMarca.Text.Trim();
                string nombre = TxtNombre.Text.Trim();
                int anhoFabricacion = Convert.ToInt32(TxtAnhoFabricacion.Text.Trim());
                DateTime fechaLanzamiento = DateTime.Parse(TxtFechaLanzamiento.Text.Trim());
                int precio = Convert.ToInt32(TxtPrecio.Text.Trim());

                try
                {
                    using (PV_Quiz02Entities db = new PV_Quiz02Entities())
                    {
                        db.spCrearTelefono(marca, nombre, anhoFabricacion, fechaLanzamiento, precio);
                    }
                }
                catch (Exception)
                {
                    Response.Redirect("~/Pages/Error.aspx");
                }

                Response.Redirect("~/Pages/Resultado.aspx");
            }
            else
            {
                Response.Redirect("~/Pages/Error.aspx");
            }
        }
    }
}