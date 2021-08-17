<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Satis.aspx.cs" Inherits="Firma.Satis.Satis" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
            <table class="myList">
        <thead>
            <tr>
                <th scope="col">Satış No</th>
                <th scope="col">Ürün</th>
                <th scope="col">Personel</th>
                <th scope="col">Müşteri</th>
                <th scope="col">Fiyat</th>
            </tr>
        </thead>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("SATISID")%></td>
                        <td><%#Eval("URUNAD")%></td>
                        <td><%#Eval("PERSONELADSOYAD")%></td>
                        <td><%#Eval("MUSTERI")%></td>
                        <td><%#Eval("FIYAT")%></td>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
    <a href="SatisEkle.Aspx" class="btn btn-primary">Satış Ekle</a>
</asp:Content>
