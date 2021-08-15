<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="KategoriGuncelle.aspx.cs" Inherits="Firma.KategoriGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form runat="server" method="post">
        <div class="form-group-sm">
            <asp:TextBox ID="TxtKategoriId" CssClass="form-control" runat="server" Enabled="false" style="margin-bottom:10px;"></asp:TextBox>
        </div>
        <div class="form-group-sm">
            <asp:TextBox ID="TxtKategoriAd" CssClass="form-control" runat="server" placeholder="Kategori adı giriniz."></asp:TextBox>
        </div>
        <asp:Button ID="BtnKategoriGuncelle" runat="server" Text="Kaydet" CssClass="btn btn-success" Style="margin-top: 8px;" OnClick="BtnKategoriGuncelle_Click" />
    </form>
</asp:Content>
