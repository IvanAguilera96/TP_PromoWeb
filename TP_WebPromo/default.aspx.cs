using ArticuloNegocio;
using Dominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP_WebPromo
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSiguiente_Click(object sender, EventArgs e)
        {
            VoucherNegocio voucherNegocio = new VoucherNegocio();
            string codVoucher = txtVoucher.Text;
            Voucher seleccionado = voucherNegocio.obtenerVoucher(codVoucher);

            if(seleccionado != null)
            {
                if(seleccionado.IdCliente == 0)
                {
                    Session.Add("voucher", seleccionado);
                    Response.Redirect("Premios.aspx");
                }
                else
                {
                    lblError.Text = "Este voucher ya fue utilizado..";
                }
            }
            else
            {
                lblError.Text = "El código ingresado no es válido.";
            }

        }
    }
}