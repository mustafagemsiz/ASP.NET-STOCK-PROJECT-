<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Firma.Login.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<head runat="server">
    <style>
        .body {
            background: radial-gradient(#e66465, #8518b8);
        }
    </style>
    <!-- Bootstrap CSS CDN -->
    <link href="Content/bootstrap-3.3.7/dist/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Our Custom CSS -->
    <link href="Content/StyleSheet.css" rel="stylesheet" />
    <title>Giriş Sayfası</title>
</head>
<body class="body">
    <form id="form1" runat="server" style="margin: auto;">
        <div style="width: 700px; margin: auto">
            <h1 style="text-align: center; margin-top: 25%; font-family: 'Sitka Text'; color: #FFFFFF; font-size: 50px;">Firma Bilgi Sistemi</h1>
            <div style="margin: auto; text-align: center">
                <img src="/Image/bg.png" width="250px"/>
            </div>
            <div class="form-group">
                <asp:Label runat="server" Text="Kullanıcı Adı" Font-Size="Medium" ForeColor="White"></asp:Label>
                <asp:TextBox id="TxtKullaniciAdi" runat="server" class="form-control" required ></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label runat="server" Text="Şifre" Font-Size="Medium" ForeColor="White"></asp:Label>
                <asp:TextBox  id="TxtSifre" runat="server" class="form-control" TextMode="Password" required></asp:TextBox>
            </div>
            <asp:Button runat="server" Text="Giriş Yap" class="btn btn-success" Style="width: 100%; margin-bottom: 10px" OnClick="Unnamed3_Click"/>
        </div>
    </form>
</body>
</html>
