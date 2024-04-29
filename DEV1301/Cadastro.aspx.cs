using DEV1301.DAL;
using DEV1301.Utils;
using System;
using System.Drawing;

namespace DEV1301
{
    public partial class Cadastro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            txtEmail.BorderColor = Color.Black;
            txtNome.BorderColor = Color.Black;
            txtRepetirSenha.BorderColor = Color.Black;
            txtSenha.BorderColor = Color.Black;
            lbResultado.Visible = false;
            

            if (string.IsNullOrEmpty(txtNome.Text))
            {
                lbResultado.Text = "Informe seu nome";
                lbResultado.Visible = true;
                txtNome.BorderColor = Color.Red;
            }

            else if (string.IsNullOrEmpty(txtEmail.Text))
            {
                lbResultado.Text = "Informe seu email";
                lbResultado.Visible = true;
                txtEmail.BorderColor = Color.Red;
            }

            else if (string.IsNullOrEmpty(txtSenha.Text))
            {
                lbResultado.Text = "Informe sua senha";
                lbResultado.Visible = true;
                txtSenha.BorderColor = Color.Red;
            }

            else if (txtSenha.Text != txtRepetirSenha.Text)
            {
                lbResultado.Text = "As senhas não conferem!";
                lbResultado.Visible = true;
                txtSenha.BorderColor = Color.Red;
                txtRepetirSenha.BorderColor = Color.Red;
            }
            else
            {
                tabUsuario objUsuario = new tabUsuario();
                objUsuario.dataCadastrado = DateTime.Now;
                objUsuario.email = txtEmail.Text;
                objUsuario.nome = txtNome.Text;
                objUsuario.senha = txtSenha.Text;

                UsuarioDAL usuDal = new UsuarioDAL();
                usuDal.CadastarUsuario(objUsuario);
                Suporte objsup = new Suporte();
                string corpoEmail = "Olá " + txtNome.Text + ", bem vindo ao sistema.";
                objsup.EnviarEmail("Bem vindo ao Sistema Desenvti", txtEmail.Text, corpoEmail);
                Response.Redirect("Login.aspx");

            }
        }

        protected void btnVoltar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}