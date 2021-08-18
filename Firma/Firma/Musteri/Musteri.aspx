<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Musteri.aspx.cs" Inherits="Firma.Musteri.Musteri" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#Modal1">
        Yeni Müşteri Ekle
    </button>
    <div class="modal" id="Modal1">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h2 class="modal-title">Müşteri Ekleme Paneli</h2>
                </div>
                <form runat="server">
                    <div class="modal-body">
                        <label>
                            Ad
                        </label>
                        <asp:TextBox ID="TxtMusteriAd" runat="server" CssClass="form-control"></asp:TextBox>
                        <br />
                        <label>
                            Soyad
                        </label>
                        <asp:TextBox ID="TxtMusteriSoyad" runat="server" CssClass="form-control"></asp:TextBox>
                        <br />
                        <label>
                            Telefon
                        </label>
                        <asp:TextBox ID="TxtMusteriTelefon" runat="server" CssClass="form-control"></asp:TextBox>
                        <br />
                        <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass="btn btn-success" OnClick="Button1_Click" />
                        <asp:Button ID="Button2" runat="server" Text="Vazgeç" CssClass="btn btn-danger" data-dismiss="modal" />
                    </div>
                </form>
            </div>
        </div>
    </div>
    <br />
    <br />
    <table class="myList">
        <thead>
            <tr>
                <th scope="col">Müşteri No</th>
                <th scope="col">Müşteri Ad</th>
                <th scope="col">Müşteri Soyad</th>
                <th scope="col">Müşteri Telefon</th>
                <th scope="col">İşlemler</th>
            </tr>
        </thead>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("MUSTERIID")%></td>
                        <td><%#Eval("MUSTERIAD")%></td>
                        <td><%#Eval("MUSTERISOYAD")%></td>
                        <td><%#Eval("MUSTERITELEFON")%></td>
                        <td>
                            <asp:HyperLink CssClass="btn btn-warning" ID="HyperLink1" runat="server" NavigateUrl='<%# "~/Musteri/MusteriGuncelle.Aspx?MUSTERIID="+Eval("MUSTERIID")%>'>Güncelle</asp:HyperLink>
                            <asp:HyperLink CssClass="btn btn-danger" ID="HyperLink2" runat="server" NavigateUrl='<%# "~/Musteri/MusteriSil.Aspx?MUSTERIID="+Eval("MUSTERIID")%>'>Sil</asp:HyperLink>

                        </td>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
</asp:Content>
