<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="MusteriGuncelle.aspx.cs" Inherits="Firma.Musteri.MusteriGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
        <form runat="server" method="post">
        <div class="form-group-sm">
            <asp:TextBox ID="TxtAd" CssClass="form-control" runat="server" placeholder="Müşteri adı giriniz."></asp:TextBox>
        </div>
        <br />
        <div class="form-group-sm">
            <asp:TextBox ID="TxtSoyad" CssClass="form-control" runat="server" placeholder="Müşteri soyadı giriniz."></asp:TextBox>
        </div>
        <br />
        <div class="form-group-sm">
            <asp:TextBox ID="TxtNumara" CssClass="form-control" runat="server" placeholder="Müşteri telefon numarası giriniz."></asp:TextBox>
        </div>
        <br />
        <asp:Button ID="BtnMusteriGuncelle" runat="server" Text="Kaydet" CssClass="btn btn-success" OnClick="BtnMusteriGuncelle_Click"  />
    </form>
</asp:Content>
