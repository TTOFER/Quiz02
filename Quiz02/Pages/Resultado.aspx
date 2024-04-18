<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Resultado.aspx.cs" Inherits="Quiz02.Pages.Resultado" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Proceso completado con éxito</h2>

    <div class="alert-success">
        <p>Ha registrado correctamente un nuevo teléfono en la base de datos</p>
    </div>

    <div>
        <a href="ListaTelefonos.aspx">Regresar</a>
    </div>
</asp:Content>
