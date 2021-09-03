﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mesajlar.aspx.cs" Inherits="Web_Proje.mesajlar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Simple Sidebar - Start Bootstrap Template</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/simple-sidebar.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->


</head>
<body>
    <form id="form1" runat="server">
    <div id="wrapper">

        <!-- Sidebar -->
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li class="sidebar-brand">
                    <a href="yonetici.aspx">
                        <%--Start Bootstrap--%>Yönetici Paneli
                    </a>
                </li>
                <li>
                    <a href="duyurular.aspx"><%--Dashboard--%>Duyurular</a>
                </li>
                <li>
                    <a href="kategoriler.aspx"><%--Shortcuts--%>Kategoriler</a>
                </li>
                <li>
                    <a href="makaleler.aspx"><%--Overview--%>Makaleler</a>
                </li>
                <li>
                    <a href="mesajlar.aspx"><%--Events--%>Mesajlar</a>
                </li>
                <li>
                    <a href="uyeler.aspx"><%--About--%>Üyeler</a>
                </li>
                 <li>
                    <a href="menu.aspx"><%--Services--%>Dinamik Menü</a>
                </li>
                <li>
                    <a href="uyeyeozel.aspx"><%--Services--%>Üyeye Özel</a>
                </li>
                <li>
                    <a href="ziyaretciler.aspx"><%--Services--%>Ziyaretçiler(IP)</a>
                </li>
                <li>
                    <a href="yoneticigiris.aspx"><%--Services--%>Çıkış</a>
                </li>
                <%--<li>
                    <a href="#">Contact</a>
                </li>--%>
            </ul>
        </div>
        <!-- /#sidebar-wrapper -->

        <!-- Page Content -->
        <div id="page-content-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                         <div style="height: 33px; background-color:#dbb2ed; width: 900px;">&nbsp;&nbsp;<asp:Button ID="btnarti" runat="server" Height="28px"  Text="+" Width="30px" OnClick="btnarti_Click"  />
&nbsp;&nbsp;
            <asp:Button ID="btneksi" runat="server" Height="30px"  Text="-" Width="30px" OnClick="btneksi_Click"  />
            &nbsp;&nbsp; Mesajlar Paneli</div>
        <asp:Panel ID="Panel1" runat="server" BackColor="#D5C6CB" Width="900px">
            <asp:DataList ID="DataList1" runat="server">
                <ItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td style="width: 200px">
                                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="16pt" Text='<%# Eval("iletisimadsoyad") %>'></asp:Label>
                            </td>
                            <td style="width: 200px">
                                <asp:Label ID="Label2" runat="server" Font-Size="12pt" Text='<%# Eval("iletisimemail") %>'></asp:Label>
                            </td>
                            <td style="width: 200px">
                                <asp:Label ID="Label3" runat="server" Font-Size="12pt" Text='<%# Eval("iletisimtarih") %>'></asp:Label>
                            </td>
                            <td style="width: 100px; text-align: right;">
                           <a href="mesajlar.aspx?iletisimid=<%#Eval("iletisimid")%>&islem=sil"><img alt="" class="auto-style2" src="tema/sil.jpg" /></a>     
                            </td>
                        </tr>
                        <tr>
                            <td colspan="4">
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("iletisimicerik") %>'></asp:Label>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
            </asp:Panel>
    <div style="height:30px;"></div>
                        <h1><%--Simple Sidebar--%></h1>
                       <%-- <p>This template has a responsive menu toggling system. The menu will appear collapsed on smaller screens, and will appear non-collapsed on larger screens. When toggled using the button below, the menu will appear/disappear. On small screens, the page content will be pushed off canvas.</p>
                        <p>Make sure to keep all page content within the <code>#page-content-wrapper</code>.</p>--%>
                        <a href="#menu-toggle" class="btn btn-default" id="menu-toggle"><%--Toggle Menu--%>Göster/Gizle</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- /#page-content-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery Version 1.11.0 -->
    <script src="js/jquery-1.11.0.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Menu Toggle Script -->
    <script>
        $("#menu-toggle").click(function (e) {
            e.preventDefault();
            $("#wrapper").toggleClass("toggled");
        });
    </script>

    </form>
</body>
</html>
