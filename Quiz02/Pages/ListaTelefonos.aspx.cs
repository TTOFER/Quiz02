using Quiz02.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Quiz02.Pages
{
    public partial class ListaTelefonos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
			try
			{
				using (PV_Quiz02Entities db = new PV_Quiz02Entities())
				{
					var Lista = db.spConsultarTelefonos().ToList();

					GvListarTelefonos.DataSource = Lista;
					GvListarTelefonos.DataBind();
				}
			}
			catch (Exception)
			{
				Response.Redirect("~/Pages/Error.aspx");
			}
        }
    }
}