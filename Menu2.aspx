﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu2.aspx.cs" Inherits="SAC_Enci_Proyecto.Produccion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="icon" href="Images/logo2.png"/>
    <title>Menu</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" 
        integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous"/>
    <link rel="stylesheet" href="css/Estilo.css"/>
    <style type="text/css">
        .auto-style1 {
            color: black;
        }
        .auto-style4 {
            width: 337px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <div id="barra">

                <nav id="superior" class="container-fluid p-3">
                    <img src="images/logo2.png" alt="logo">
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
            <br />
            <br />
            <br />
            <br />
            <br />
            <div class="form-menu">
                <table style="width:100%;">
                    <tr>
                        <td class="text-center">
                            <asp:ImageButton ID="ibtnMprima" runat="server" Height="120px" ImageUrl="~/Images/mprima.png" Width="120px" OnClick="ibtnMprima_Click"  />
                            <br /><center><h3 class="auto-style1">Egresos</h3></center>
                        </td>

                        <td class="text-center">
                            <asp:ImageButton ID="ibtnPedido" runat="server" Height="120px" ImageUrl="~/Images/pedidos.png" Width="150px" OnClick="ibtnPedido_Click"  />
                            <br /><center><h3 class="auto-style1">Generar pedido</h3></center>
                        </td>

                        <td class="text-center">
                            <asp:ImageButton ID="ibtnVerPedido" runat="server" Height="120px" ImageUrl="~/Images/icono6.png" Width="150px" OnClick="ibtnVerPedido_Click"   />
                            <br /><center><h3 class="auto-style1">Ver los pedidos</h3></center>  
                        </td>

                        <td class="text-center">
                             <asp:ImageButton ID="ibtnVerOrden" runat="server" Height="120px" ImageUrl="~/Images/icono5.png" Width="150px" OnClick="ibtnVerOrden_Click"   />
                            <br /><center><h3 class="auto-style1">Ver las ordenes</h3></center> 
                        </td>
                    </tr>
                </table>
            </div>
        </section>

    </form>
</body>
</html>
