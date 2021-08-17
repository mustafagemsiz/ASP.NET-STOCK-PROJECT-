<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="SatisEkle.aspx.cs" Inherits="Firma.Satis.SatisEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form runat="server" method="post">
        <label>
            Ürün seçin
        </label>
        <div class="form-group-sm">
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control"></asp:DropDownList>
        </div>
        <br />
        <label>Müşteri seçin</label>
    <div class="form-group-sm">
        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control"></asp:DropDownList>
    </div>
        <br />
       <label>Personel seçin</label>
            <div class="form-group-sm">
                <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control"></asp:DropDownList>
            </div>
        <br />
       <label>Fiyat girin</label> 
            <div class="form-group-sm">
                <asp:TextBox ID="TxtFiyat" CssClass="form-control" runat="server" placeholder="Fiyat giriniz."></asp:TextBox>
            </div>
        <br />
        <asp:Button Text="Satış Ekle" runat="server" ID="SatisEKle" CssClass="btn btn-success" OnClick="SatisEKle_Click"/>
    </form>
</asp:Content>
