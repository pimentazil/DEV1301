<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DEV1301.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Login</h1><br />
            <label>Usuário</label><br />
            <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox><br />
            <label>Senha</label><br />
            <asp:TextBox ID="txtSenha" runat="server" TextMode="Password"></asp:TextBox><br />
            <asp:Label ID="lbResultado" runat="server" Visible="false" ></asp:Label>
            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click"/><br />
            <asp:Button Id="btnCadastrar" runat="server" Text="Cadastre-se" OnClick="btnCadastrar_Click"/>
        </div>
    </form>

    <style>
        h1 {
            text-align: center;
            font-family: 'Poppins', BlinkMacSystemFont, 'Segoe UI', 'Roboto', sans-serif;
        }
 
        #form1 {
            width: 300px; 
            margin: 0 auto; /* centraliza o formulário na tela horizontalmente */
            margin-top: 100px; 
            padding: 20px; 
            border: 1px solid #ccc; 
            border-radius: 10px; 
            background-color: #f9f9f9; 
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); 
            font-family: 'Poppins', BlinkMacSystemFont, 'Segoe UI', 'Roboto', sans-serif;
        }

        label, input[type="text"], input[type="password"] {
            display: block; /* exibe cada elemento em uma nova linha */
            width: 94%;
            padding: 5px;
            border-radius: 5px;
        }

        #btnCadastrar, #btnLogin {
            margin-top: 10px; 
            width: 100%; 
            background-color: blue;
            border: none;
            color: white;
            font-family: 'Poppins', BlinkMacSystemFont, 'Segoe UI', 'Roboto', sans-serif;
            border-radius: 5px;
            padding: 10px 20px;
            cursor: pointer;
            font-weight: bold;
            font-size: 16px;
        }
    </style>
</body>
</html>
