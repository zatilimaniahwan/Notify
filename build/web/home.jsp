<%-- 
    Document   : home.jsp
    Created on : May 22, 2018, 11:46:46 PM
    Author     : Zatil Imani Ahwan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
         <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Notify | Event Announcement</title>
        <!-- Bootstrap core CSS-->
            <%@include file="css/css.jsp"%>
    </head>
    <body class="fixed-nav sticky-footer bg-dark" id="page-top">
        <% 
            if(session.getAttribute("username")==null){
                response.sendRedirect("index.jsp");
    }%>
        <!-- Navigation-->
         <%@include file="layout/header.jsp"%>
        <div class="content-wrapper">
            <div class="container-fluid">
                <%@include file="home/dashboard.jsp"%>
                <%@include file="layout/footer.jsp"%>
                <!-- Scroll to Top Button-->
                <a class="scroll-to-top rounded" href="#page-top">
                    <i class="fa fa-angle-up"></i>
                </a>
               
              <%@include file="js/script.jsp"%>
               
                
            </div>
        </div>
    </body>
</html>
