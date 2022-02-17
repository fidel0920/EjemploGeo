using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RestSharp;

namespace Vista
{
    public partial class Inicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        private void consultar()
        {
            try
            {
                var cliente = new RestClient();
                var peticion = new RestRequest("https://api.ipgeolocation.io/ipgeo?apiKey=c0a719ae20354a9e890ff3d49792b4c0&ip=" + txtIP.Text + "&fields=geo", Method.Get);
                var respuesta = cliente.ExecuteAsync<Geo>(peticion);

                txtCiudad.Text = respuesta.Result.Data.city;
                txtEstado.Text = respuesta.Result.Data.state_prov;
                txtPais.Text = respuesta.Result.Data.country_name;
                txtCodigo.Text = respuesta.Result.Data.zipcode;
            }
            catch (Exception ex)
            {
                txtCiudad.Text = ex.Message;
            }           
        }

        protected void btnConsultar_Click(object sender, EventArgs e)
        {
            consultar();
        }
    }
}