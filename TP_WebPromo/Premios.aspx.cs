using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace TP_WebPromo
{
    public partial class Premios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["voucher"] == null)
            {
                Response.Redirect("default.aspx");
            }

            if (!IsPostBack)
            {
                ArticuloNegocio negocio = new ArticuloNegocio();
                // Cargamos la lista de premios (artículos) desde la base de datos
                repPremios.DataSource = negocio.listar();
                repPremios.DataBind();
            }
        }

        protected void btnSeleccionar_Click(object sender, EventArgs e)
        {
            // Recuepero el id del premio elegido
            string idPremio = ((Button)sender).CommandArgument;

            // Guardo el premio elegido en la session para usarlo en la pantalal registro
            Session.Add("idSeleccionado", idPremio);

            Response.Redirect("Registro.aspx", false);
        }
    }
}