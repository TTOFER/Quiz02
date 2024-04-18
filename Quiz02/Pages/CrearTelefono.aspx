<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CrearTelefono.aspx.cs" Inherits="Quiz02.Pages.CrearTelefono" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h1>Crear teléfono</h1>

    <div>

        <div>
            <span>Marca</span>
            <asp:TextBox ID="TxtMarca" runat="server" CssClass="form-control"></asp:TextBox>

            <asp:RequiredFieldValidator ID="RFVMarca" runat="server"
                ControlToValidate="TxtMarca" ErrorMessage="La “marca” del teléfono es requerida, y debe de tener una longitud máxima de 100 caracteres."
                CssClass="text-danger"></asp:RequiredFieldValidator>
        </div>

        <div>
            <span>Nombre</span>
            <asp:TextBox ID="TxtNombre" runat="server" CssClass="form-control"></asp:TextBox>

            <asp:RequiredFieldValidator ID="RFVNombre" runat="server"
                ControlToValidate="TxtNombre" ErrorMessage="El “nombre” del teléfono es requerido y debe de tener una longitud máxima de 50 caracteres."
                CssClass="text-danger"></asp:RequiredFieldValidator>
        </div>

        <div>
            <span>Año de fabricación</span>
            <asp:TextBox ID="TxtAnhoFabricacion" runat="server" CssClass="form-control"></asp:TextBox>

            <asp:RequiredFieldValidator ID="RFVAnhoFabricacion" runat="server"
                ControlToValidate="TxtAnhoFabricacion" ErrorMessage="El “año de fabricación” del teléfono es requerido."
                CssClass="text-danger"></asp:RequiredFieldValidator>

            <asp:RangeValidator ID="RVAnhoFabricacion" runat="server"
                ControlToValidate="TxtAnhoFabricacion" ErrorMessage="El “año de fabricación” del teléfono debe estar entre 2000 y 2025."
                MinimumValue="2000" MaximumValue="2025" Type="Integer"
                CssClass="text-danger"></asp:RangeValidator>
        </div>

        <div>
            <span>Fecha de Lanzamiento</span>
            <asp:TextBox ID="TxtFechaLanzamiento" runat="server" CssClass="form-control"></asp:TextBox>

            <asp:RequiredFieldValidator ID="RFVFechaLanzamiento" runat="server"
                ControlToValidate="TxtFechaLanzamiento" ErrorMessage="La “fecha de lanzamiento” del teléfono es requerida."
                CssClass="text-danger"></asp:RequiredFieldValidator>

            <asp:CompareValidator ID="CVFechaLanzamiento" runat="server"
                ControlToValidate="TxtFechaLanzamiento" Operator="LessThanEqual" Type="Date"
                ErrorMessage="La “fecha de lanzamiento” del teléfono debe ser menor o igual a la fecha actual."
                CssClass="text-danger" ValueToCompare='<%# DateTime.Now.ToShortDateString() %>'></asp:CompareValidator>
        </div>


        <div>
            <span>Precio</span>
            <asp:TextBox ID="TxtPrecio" runat="server" CssClass="form-control"></asp:TextBox>

            <asp:RequiredFieldValidator ID="RFVPrecio" runat="server"
                ControlToValidate="TxtPrecio" ErrorMessage="El “precio” del teléfono es requerido."
                CssClass="text-danger"></asp:RequiredFieldValidator>

            <asp:RangeValidator ID="RVPrecio" runat="server"
                ControlToValidate="TxtPrecio" ErrorMessage="El “precio” del teléfono debe estar entre 1 y 5000."
                MinimumValue="1" MaximumValue="5000" Type="Integer"
                CssClass="text-danger"></asp:RangeValidator>
        </div>


        <div>
            <asp:Button ID="BtnGuardar" runat="server"
                Text="Guardar" BackColor="#006600"
                ForeColor="White" CssClass=" btn btn-primary"
                OnClick="BtnGuardar_Click" />

            <a href="ListaTelefonos.aspx" class="btn btn-secondary">Cancelar</a>
        </div>
    </div>
</asp:Content>
