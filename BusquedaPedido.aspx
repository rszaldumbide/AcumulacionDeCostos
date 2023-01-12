﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BusquedaPedido.aspx.cs" Inherits="SAC_Enci_Proyecto.BusquedaPedido" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="icon" href="Images/logo2.png"/>
    <title>Reporte de Orden por fecha</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" 
        integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous"/>
    <link rel="stylesheet" href="css/Estilo.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <div id="barra">

                <nav id="superior" class="container-fluid p-3">
                    <img src="images/logo2.png" alt="logo"/>
                    &nbsp;&nbsp;
                    <p class="auto-style1"><strong>Sistema de Acumulaci&oacute;n de Costos</strong></p>
                </nav>
                <nav id="superiorder" class="container-fluid p-3">
                    <ul id="navegacion2">
                        <li id="nav-link">
                            <a id="lista" href="Menu.aspx">Men&uacute;</a>
                        </li>
                    </ul>
                </nav>

            </div>
        </header>

        <section>
            <div class="mt-3 justify-content-center" style="display:flex">
                <div class="col-auto mb-3 border card border mt-5 ms-5 p-2 rounded">
                    <h3 class="text-center mb-3">REPORTES DE PEDIDOS POR FECHAS</h3>

                    <table class="table table-light table-hover table-borderless">
                        <tbody>
                            <tr style="height: auto">
                                <td><label style="font-weight:600; color:goldenrod;">Fecha desde: </label></td>
                                <td><asp:TextBox ID="txtFechaDesde" Class="border-end-0 border-start-0 border-top-0 border-warning" placeholder="aaaa/mm/dd" runat="server" TextMode="Date"></asp:TextBox></td>
                            
                            </tr>
                            <tr>
                                <td><label style="font-weight:600; color:goldenrod;">Fecha hasta: </label></td>
                                <td><asp:TextBox ID="txtFechaHasta" Class="border-end-0 border-start-0 border-top-0 border-warning" placeholder="aaaa/mm/dd" runat="server" TextMode="Date"></asp:TextBox></td>
                        </tr>
                        </tbody>
                    </table>
                    <div class="text-center mb-2">
                        <asp:Button ID="btnBuscar" runat="server" class="btn btn-warning" OnClick="btnBuscar_Click" Text="Buscar" />
                        <asp:Button ID="btnRegresar" runat="server" class="btn btn-warning" OnClick="btnRegresar_Click" Text="Regresar" />

                    </div>
                </div>
                <div class="col-auto mb-3 mt-5 ms-5">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ped_id" DataSourceID="SqlDataSource1" OnRowCommand="GridView1_RowCommand" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BackColor="Goldenrod" BorderColor="White" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
                            <Columns>
                                <asp:BoundField DataField="ped_id" HeaderText="#" InsertVisible="False" ReadOnly="True" SortExpression="ped_id" />
                                <asp:BoundField DataField="cli_nombre" HeaderText="Nombre" SortExpression="cli_nombre" />
                                <asp:BoundField DataField="cli_identificacion" HeaderText="Identificación" SortExpression="cli_identificacion" />
                                <asp:BoundField DataField="ped_fecha" HeaderText="Fecha" SortExpression="ped_fecha" />
                                <asp:ButtonField ButtonType="Button" CommandName="ver" Text="Ver" ControlStyle-BackColor="white" ControlStyle-ForeColor="black" ControlStyle-CssClass="border-warning card"
>
                                </asp:ButtonField>
                            </Columns>
                            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                            <HeaderStyle BackColor="Goldenrod" Font-Bold="True" ForeColor="White" />
                            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                            <RowStyle BackColor="#F8F9FA" ForeColor="black" />
                            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#FFF1D4" />
                            <SortedAscendingHeaderStyle BackColor="#B95C30" />
                            <SortedDescendingCellStyle BackColor="#F1E5CE" />
                            <SortedDescendingHeaderStyle BackColor="#93451F" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bdd_enciConnectionString %>" ProviderName="<%$ ConnectionStrings:bdd_enciConnectionString.ProviderName %>" SelectCommand="SP_SELECT_PEDIDOPORFECHA" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="txtFechaDesde" Name="inicio" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="txtFechaHasta" Name="fin" PropertyName="Text" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
        </div>
                </div>
            </section>
    </form>
</body>
</html>
