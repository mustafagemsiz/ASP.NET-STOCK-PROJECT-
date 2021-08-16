<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="UrunGuncelle.aspx.cs" Inherits="Firma.Urun.UrunGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form runat="server" method="post">
        <div class="form-group-sm">
            <asp:TextBox ID="TxtUrun" CssClass="form-control" runat="server" placeholder="Ürün adı giriniz."></asp:TextBox>
        </div>
        <br />
        <div class="form-group-sm">
            <asp:TextBox ID="TxtMarka" CssClass="form-control" runat="server" placeholder="Marka adı giriniz."></asp:TextBox>
        </div>
        <br />
        <div class="form-group-sm">
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control"></asp:DropDownList>
        </div>
        <br />
        <div class="form-group-sm">
            <asp:TextBox ID="TxtFiyat" CssClass="form-control" runat="server" placeholder="Fiyat giriniz."></asp:TextBox>
        </div>
        <br />
        <div class="form-group-sm">
            <asp:TextBox ID="TxtStok" CssClass="form-control" runat="server" placeholder="Stok sayısı giriniz."></asp:TextBox>
        </div>
        <br />

        <asp:Button ID="BtnUrunGuncelle" runat="server" Text="Kaydet" CssClass="btn btn-success" OnClick="BtnKategoriEkle_Click" />
    </form>
</asp:Content>
