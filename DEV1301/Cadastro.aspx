<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cadastro.aspx.cs" Inherits="DEV1301.Cadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Cadastro</h1>
            <label>Nome</label><br />
            <asp:TextBox ID="txtNome" runat="server"></asp:TextBox><br />
            <label>E-mail</label><br />
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox><br />
            <label>Senha</label><br />
            <asp:TextBox ID="txtSenha" runat="server" TextMode="Password"></asp:TextBox><br />
            <label>Repetir Senha</label><br />
            <asp:TextBox ID="txtRepetirSenha" runat="server" TextMode="Password"></asp:TextBox><br />
            <asp:Label ID="lbResultado" runat="server" Visible="false"></asp:Label><br />
            <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar" OnClick="btnCadastrar_Click" /><br />
            <asp:Button ID="btnVoltar" runat="server" Text="Voltar" OnClick="btnVoltar_Click" />
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

        #btnCadastrar, #btnVoltar {
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
