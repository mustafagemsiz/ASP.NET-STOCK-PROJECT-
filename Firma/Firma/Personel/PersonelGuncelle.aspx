<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="PersonelGuncelle.aspx.cs" Inherits="Firma.Personel.PersonelGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form runat="server">
        <div class="modal-body">
            <label>
                Ad Soyad
            </label>
            <asp:TextBox ID="TxtAdSoyad" runat="server" CssClass="form-control"></asp:TextBox>
            <br />
            <label>
                Telefon
            </label>
            <asp:TextBox ID="TxtTelefon" runat="server" CssClass="form-control"></asp:TextBox>
            <br />
            <label>
                Adres
            </label>
            <asp:TextBox ID="TxtAdres" runat="server" CssClass="form-control"></asp:TextBox>
            <br />
            <asp:Button ID="BtnMusteriGuncelle" runat="server" Text="Kaydet" CssClass="btn btn-success" OnClick="BtnMusteriGuncelle_Click"/>

        </div>
    </form>
</asp:Content>
