<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ResultadoEliminar.aspx.cs" Inherits="Quiz02.Pages.ResultadoEliminar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Proceso completado con éxito</h2>

    <div class="alert-success">
        <p>Ha eliminado correctamente la información de un teléfono en la base de datos</p>
    </div>

    <div>
        <a href="ListaTelefonos.aspx">Regresar</a>
    </div>
</asp:Content>
