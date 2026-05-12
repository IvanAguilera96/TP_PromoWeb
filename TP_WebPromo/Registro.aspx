<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="TP_WebPromo.Registro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <h2 class="mb-4">Ingresá tus datos</h2>

                <!-- Fila del DNI -->
                <div class="row mb-3">
                    <div class="col-md-4">
                        <label class="form-label">DNI</label>
                        <asp:TextBox ID="txtDni" runat="server" CssClass="form-control"
                            AutoPostBack="true" OnTextChanged="txtDni_TextChanged" />
                    </div>
                </div>

                <!-- Fila Nombre, Apellido y Email -->
                <div class="row mb-3">
                    <div class="col-md-4">
                        <label class="form-label">Nombre</label>
                        <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control" placeholder="Juanito" />
                    </div>
                    <div class="col-md-4">
                        <label class="form-label">Apellido</label>
                        <asp:TextBox ID="txtApellido" runat="server" CssClass="form-control" placeholder="Argento" />
                    </div>
                    <div class="col-md-4">
                        <label class="form-label">Email</label>
                        <div class="input-group">
                            <span class="input-group-text">@</span>
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="email@email.com" />
                        </div>
                    </div>
                </div>

                <!-- Fila Dirección, Ciudad y CP -->
                <div class="row mb-3">
                    <div class="col-md-6">
                        <label class="form-label">Dirección</label>
                        <asp:TextBox ID="txtDireccion" runat="server" CssClass="form-control" placeholder="Mi ciudad" />
                        <!-- <div class="invalid-feedback">Falta dirección.</div> -->
                    </div>
                    <div class="col-md-4">
                        <label class="form-label">Ciudad</label>
                        <asp:TextBox ID="txtCiudad" runat="server" CssClass="form-control" placeholder="Calle 123" />
                    </div>
                    <div class="col-md-2">
                        <label class="form-label">CP</label>
                        <asp:TextBox ID="txtCodigoPostal" runat="server" CssClass="form-control" placeholder="xxxx" />
                    </div>
                </div>

                <!-- Checkbox y Botón -->
                <div class="mb-3 form-check">
                    <asp:CheckBox ID="chkTerminos" runat="server" CssClass="form-check-input" />
                    <label class="form-check-label">Acepto los términos y condiciones.</label>
                </div>

                <asp:Button ID="btnParticipar" runat="server" Text="Participar!"
                    CssClass="btn btn-primary" OnClick="btnParticipar_Click"/>
            </div>
        </div>
    </div>

</asp:Content>
