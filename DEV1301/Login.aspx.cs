using DEV1301.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DEV1301
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sendedr, EventArgs e)
        {
            UsuarioDAL usuDal = new UsuarioDAL();
            tabUsuario objUsuario = new tabUsuario();
            objUsuario = usuDal.ConsultarUsuario(txtUsuario.Text, txtSenha.Text);

            if (objUsuario == null)
            {
                lbResultado.Visible = true;
                lbResultado.Text = "Usuario ou senha inválidos";
            }

            else
            {
                Response.Redirect("Home.aspx");
            }
        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cadastro.aspx");
        }
    }
}