﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="kategoridetay.aspx.cs" Inherits="Web_Proje.kategoridetay" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     /*!
 * Start Bootstrap - Blog Home (https://startbootstrap.com/template-overviews/blog-home)
 * Copyright 2013-2019 Start Bootstrap
 * Licensed under MIT (https://github.com/BlackrockDigital/startbootstrap-blog-home/blob/master/LICENSE)
 */
body {
  padding-top: 56px;
}
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Blog Home - Start Bootstrap Template</title>

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/blog-home.css" rel="stylesheet">

</head>
<body>
    <form id="form1" runat="server">
         <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <a class="navbar-brand" href="#">Kategorisindeki Makaleler</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
     
          <span class="sr-only">(current)</span>
      </div>
    </div>
  </nav>

  <!-- Page Content -->
  <div class="container">

    <div class="row">

      <!-- Blog Entries Column -->
      <div class="col-md-8">

        <h1 class="my-4"><%--Page Heading--%>
          <small><%--Secondary Text--%></small>
        </h1>

        <!-- Blog Post -->
        <div class="card mb-4">
            <%--<img class="card-img-top" src="http://placehold.it/750x300" alt="Card image cap">--%>
          <div class="card-body" style="background-color:#EFEFEF">
            <h2 class="card-title"><%--Post Title--%></h2>
            <p class="card-text">
                <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                 <a href="default.aspx?makaleid=<%#Eval("makaleid")%>"><asp:Label ID="Label1" runat="server" Font-Size="20px" Text='<%# Eval("baslik") %>' ForeColor="#202020"></asp:Label></a> 
            </ItemTemplate>
        </asp:DataList>
<%--Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis aliquid atque, nulla? Quos cum ex quis soluta, a laboriosam. Dicta expedita corporis animi vero voluptate voluptatibus possimus, veniam magni quis!--%></p>
            <a href="default.aspx" class="btn btn-primary"><%--Read More--%>&larr;Anasayfaya Git </a><%--&rarr;--%>
          </div>
          <div class="card-footer text-muted">
              <%--   Posted on January 1, 2017 by--%>
            <a href="#"><%--Start Bootstrap--%></a>
          </div>
        </div>

     

        <!-- Pagination -->
        <ul class="pagination justify-content-center mb-4">
          <li class="page-item disabled">
            <a class="page-link" href="#"><%--&larr;--%><%-- Older--%><%--Büyük--%></a>
          </li>
          <li class="page-item disabled">
            <a class="page-link" href="#"><%--Newer--%><%--Daha Yeni &rarr;--%></a>
          </li>
        </ul>

      </div>

      <!-- Sidebar Widgets Column -->
      <div class="col-md-4">

       

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    
    </form>
</body>
</html>
