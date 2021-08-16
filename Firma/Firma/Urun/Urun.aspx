<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Urun.aspx.cs" Inherits="Firma.Urun.Urun" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
        <table class="myList">
        <thead>
            <tr>
                <th scope="col">Ürün No</th>
                <th scope="col">Ürün Ad</th>
                <th scope="col">Marka</th>
                <th scope="col">Kategori</th>
                <th scope="col">Fiyat</th>
                <th scope="col">Stok</th>
                <th scope="col">İşlemler</th>
            </tr>
        </thead>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("URUNID")%></td>
                        <td><%#Eval("URUNAD")%></td>
                        <td><%#Eval("URUNMARKA")%></td>
                        <td><%#Eval("KATEGORIAD")%></td>
                        <td><%#Eval("URUNFIYAT")%></td>
                        <td><%#Eval("URUNSTOK")%></td>
                        <td>
                            <asp:HyperLink CssClass="btn btn-warning" ID="HyperLink1" runat="server" NavigateUrl='<%# "~/Urun/UrunGuncelle.Aspx?URUNID="+Eval("URUNID")%>'>Güncelle</asp:HyperLink>
                            <asp:HyperLink CssClass="btn btn-danger" ID="HyperLink2" runat="server" NavigateUrl='<%# "~/Urun/UrunSil.Aspx?URUNID="+Eval("URUNID")%>'>Sil</asp:HyperLink>
                        </td>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
    <a href="UrunEkle.Aspx" class="btn btn-primary" style="margin-top: 8px;">Ürün Ekle</a>
</asp:Content>
