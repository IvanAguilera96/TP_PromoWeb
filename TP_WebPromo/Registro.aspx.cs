using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP_WebPromo
{
    public partial class Registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["voucher"] == null)
            {
                Response.Redirect("default.aspx");
            }
        }

        protected void btnParticipar_Click(object sender, EventArgs e)
        {

        }

        protected void txtDni_TextChanged(object sender, EventArgs e)
        {

        }
    }
}