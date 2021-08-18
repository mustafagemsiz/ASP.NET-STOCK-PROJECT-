<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Istatistik.aspx.cs" Inherits="Firma.LinqCard.Istatistik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h2 style="text-align: center; margin-bottom: 50px">İstatistik Bilgileri</h2>

    <div class="row">
        <div class="column">
            <div class="card" style="background-color:#89aded;">
                <i class="glyphicon glyphicon-tags gi"></i>
                <h3>Ürün Sayımız</h3>
                <h3>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </h3>
            </div>
        </div>

        <div class="column">
            <div class="card" style="background-color:#fb9c9c;">
                <i class="glyphicon glyphicon-user gi"></i>
                <h3>Müşteri Sayımız</h3>
                <h3>
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </h3>
            </div>
        </div>

        <div class="column">
            <div class="card" style="background-color:#aee9af;">
                <i class="glyphicon glyphicon-usd gi"></i>
                <h3>Kasadaki Tutar</h3>
                <h3>
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                </h3>
            </div>
        </div>

        <div class="column">
            <div class="card" style="background-color:#fff990;" >
                <i class=" 	glyphicon glyphicon-flash gi"></i>
                <h3>Personel Sayımız</h3>
                <h3>
                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                </h3>
            </div>
        </div>
    </div>
    <br />
    <div class="row">
        <div class="column">
            <div class="card" style="background-color:#fd5656;">
                <i class="glyphicon glyphicon-plus gi"></i>
                <h3>Aktif Ürün Sayısı</h3>
                <h3>
                    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                </h3>
            </div>
        </div>

        <div class="column">
            <div class="card" style="background-color:#ffb044;">
                <i class="glyphicon glyphicon-minus gi"></i>
                <h3>Pasif Ürün Sayısı</h3>
                <h3>
                    <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                </h3>
            </div>
        </div>
        <div class="column">
            <div class="card" style="background-color:#ff68ef;">
                <i class="glyphicon glyphicon-arrow-up gi"></i>
                <h3>En Fazla Stoklu Ürün</h3>
                <h3>
                    <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                </h3>
            </div>
        </div>

        <div class="column">
            <div class="card" style="background-color:#b8a9ff;">
                <i class="glyphicon glyphicon-list gi"></i>
                <h3>Kategori Sayımız</h3>
                <h3>
                    <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                </h3>
            </div>

        </div>
    </div>






</asp:Content>
