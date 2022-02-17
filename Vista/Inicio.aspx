<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="Vista.Inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Formulario datos IP</h1>
            <table>
                <tr>
                    <td><asp:Label runat="server">IP:</asp:Label></td>
                    <td><asp:TextBox runat="server" ID="txtIP"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label runat="server">Ciudad:</asp:Label></td>
                    <td><asp:TextBox runat="server" ID="txtCiudad"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label runat="server">Estado:</asp:Label></td>
                    <td><asp:TextBox runat="server" ID="txtEstado"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label runat="server">Pais:</asp:Label></td>
                    <td><asp:TextBox runat="server" ID="txtPais"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label runat="server">C. P.:</asp:Label></td>
                    <td><asp:TextBox runat="server" ID="txtCodigo"></asp:TextBox></td>
                </tr>
            </table>
            <asp:Button runat="server" ID="btnConsultar" Text="Consultar" OnClick="btnConsultar_Click" />
        </div>
    </form>
</body>
</html>
