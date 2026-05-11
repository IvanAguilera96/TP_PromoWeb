<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="TP_WebPromo._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label Text="Ingresá el codigo de tu voucher!" ID ="lblText" runat="server" />
    <br />
    <asp:TextBox id="txtVoucher" runat="server" />
    <asp:Label Text="" ID ="lblError" ForeColor="Red" runat="server" />
    <br />
    <asp:Button Text="Siguiente" ID="btnSiguiente" Onclick="btnSiguiente_Click" class="btn btn-primary btn-sm" runat="server" />
</asp:Content>
