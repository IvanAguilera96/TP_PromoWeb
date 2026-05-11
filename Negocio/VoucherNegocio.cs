using ConexionBD;
using Dominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocio
{
    public class VoucherNegocio
    {
        public Voucher obtenerVoucher(string codVoucher)
        {
            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.setearConsulta("Select * from Vouchers where CodigoVoucher = @CodigoVoucher");
                datos.setearParametros("@CodigoVoucher", codVoucher);
                datos.ejecutarLectura();

                if (datos.Lector.Read())
                {
                    Voucher auxVoucher = new Voucher();
                    auxVoucher.CodigoVoucher = (string)datos.Lector["CodigoVoucher"];

                    if (!(datos.Lector["IdCliente"] is DBNull))
                        auxVoucher.IdCliente = (int)datos.Lector["IdCliente"];

                    return auxVoucher;
                }
                return null; // Si no encuentra nada devuevle null
            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally
            {
                datos.cerrarConexion();
            }
    
        }
    }
}
