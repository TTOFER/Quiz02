<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Error.aspx.cs" Inherits="Quiz02.Pages.Error" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Ha ocurrido un error</h2>

    <div class="alert-success">
        <p>Algo ha salido mal... :(</p>
    </div>

    <div>
        <a href="ListaTelefonos.aspx">Regresar</a>
    </div>
</asp:Content>
