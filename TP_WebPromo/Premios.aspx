<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Premios.aspx.cs" Inherits="TP_WebPromo.Premios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Hola pagina premios</h1>
    <div class="row row-cols-1 row-cols-md-3 g-4">
        <asp:Repeater ID="repPremios" runat="server">
            <ItemTemplate>
                <div class="col">
                    <div class="card h-100 shadow-sm">
                        <img src='<%# ((List<Dominio.Imagen>)Eval("Imagenes")).Count > 0 ? ((List<Dominio.Imagen>)Eval("Imagenes"))[0].UrlImagen : "https://via.placeholder.com/300" %>'
                            class="card-img-top" alt="Premio" style="height: 200px; object-fit: contain;">

                        <div class="card-body">
                            <h5 class="card-title"><%# Eval("Nombre") %></h5>
                            <p class="card-text text-muted"><%# Eval("Descripcion") %></p>
                            <p class="fw-bold">Categoría: <%# Eval("Categoria.Descripcion") %></p>
                        </div>

                        <div class="card-footer bg-transparent border-top-0 text-center">
                            <asp:Button ID="btnSeleccionar" runat="server" Text="¡Quiero este!"
                                CssClass="btn btn-primary w-100"
                                CommandArgument='<%# Eval("IdArticulo") %>'
                                OnClick="btnSeleccionar_Click" />
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
