<%-- 
    Document   : add
    Created on : May 23, 2018, 2:04:24 AM
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
        <%@include file="css/css.jsp"%>
    </head>
    <body class="fixed-nav sticky-footer bg-dark" id="page-top">
        <%@include file="layout/header.jsp"%>
        <div class="content-wrapper">
            <div class="container-fluid">
                <div class="container-fluid">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="home.jsp"><i class="fa fa-home"></i> Dashboard</a> /&nbsp;<a href="#"> Manage User</a> /&nbsp;<a href="#"> Edit</a>
                        </li>
                    </ol>
                </div>
                <%@include file="user/form/_form.jsp"%>
                <%@include file="layout/footer.jsp"%>
                <!-- Scroll to Top Button-->
                <a class="scroll-to-top rounded" href="#page-top">
                    <i class="fa fa-angle-up"></i>
                </a>

                <%@include file="js/script.jsp"%>


            </div>
    </body>
</html>
