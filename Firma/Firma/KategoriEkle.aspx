<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="KategoriEkle.aspx.cs" Inherits="Firma.KategoriEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form runat="server" method="post">
        <div class="form-group-sm">
            <asp:TextBox ID="TxtKategori" CssClass="form-control" runat="server" placeholder="Kategori adı giriniz."></asp:TextBox>
        </div>
        <asp:Button ID="BtnKategoriEkle" runat="server" Text="Kaydet"  CssClass="btn btn-success" style="margin-top:8px;" OnClick="BtnKategoriEkle_Click"/>
    </form>
</asp:Content>
