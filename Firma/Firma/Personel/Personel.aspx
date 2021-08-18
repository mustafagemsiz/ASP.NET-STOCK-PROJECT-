<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Personel.aspx.cs" Inherits="Firma.Personel.Personel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#Modal1">
        Yeni Personel Ekle
    </button>
    <div class="modal" id="Modal1">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h2 class="modal-title">Personel Ekleme Paneli</h2>
                </div>
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
                <th scope="col">Personel No</th>
                <th scope="col">Personel Ad Soyad</th>
                <th scope="col">Personel Telefon</th>
                <th scope="col">Personel Adres</th>
                <th scope="col">İşlemler</th>
            </tr>
        </thead>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("PERSONELID")%></td>
                        <td><%#Eval("PERSONELADSOYAD")%></td>
                        <td><%#Eval("PERSONELTELEFON")%></td>
                        <td><%#Eval("PERSONELADRES")%></td>
                        <td>
                            <asp:HyperLink CssClass="btn btn-warning" ID="HyperLink1" runat="server" NavigateUrl='<%# "~/Personel/PersonelGuncelle.Aspx?PERSONELID="+Eval("PERSONELID")%>'>Güncelle</asp:HyperLink>
                            <asp:HyperLink CssClass="btn btn-danger" ID="HyperLink2" runat="server" NavigateUrl='<%# "~/Personel/PersonelSil.Aspx?PERSONELID="+Eval("PERSONELID")%>'>Sil</asp:HyperLink>

                        </td>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
</asp:Content>
