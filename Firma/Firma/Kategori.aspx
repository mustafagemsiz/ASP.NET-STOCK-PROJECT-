<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Kategori.aspx.cs" Inherits="Firma.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="myList">
        <thead>
            <tr>
                <th scope="col">Kategori No</th>
                <th scope="col">Kategori Ad</th>
                <th scope="col">İşlemler</th>
            </tr>
        </thead>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("KATEGORIID")%></td>
                        <td><%#Eval("KATEGORIAD")%></td>
                        <td>
                            <asp:HyperLink CssClass="btn btn-warning" ID="HyperLink1" runat="server" NavigateUrl='<%# "~/KategoriGuncelle.Aspx?KATEGORIID="+Eval("KATEGORIID")%>'>Güncelle</asp:HyperLink>
                            <asp:HyperLink CssClass="btn btn-danger" ID="HyperLink2" runat="server" NavigateUrl='<%# "~/KategoriSil.Aspx?KATEGORIID="+Eval("KATEGORIID")%>'>Sil</asp:HyperLink>
                        </td>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
    <a href="KategoriEkle.Aspx" class="btn btn-primary" style="margin-top: 8px;">Kategori Ekle</a>
</asp:Content>
