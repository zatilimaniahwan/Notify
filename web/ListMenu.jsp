<%-- 
    Document   : ListMenu
    Created on : May 25, 2018, 1:35:59 PM
    Author     : Zatil Imani Ahwan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Notify | Event Announcement</title>
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <!-- Custom fonts for this template-->
        <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <!-- Page level plugin CSS-->
        <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
        <!-- Custom styles for this template-->
        <link href="css/sb-admin.css" rel="stylesheet">
    </head>
    <body class="fixed-nav sticky-footer bg-dark" id="page-top">
        <%@include file="layout/header.jsp"%>
        <div class="content-wrapper">
            <div class="container-fluid">
                <div class="container-fluid">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="home.jsp"><i class="fa fa-home"></i> Dashboard</a> /&nbsp;<a href="UserController?action=listuser"> Manage User</a> 
                        </li>
                    </ol>
                    <h5 class="display-4">Manage User</h5>
                    <br>
                    <div class="table-responsive">
                        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Code</th>
                                    <th>Name</th>
                                    <th>Email Address</th>
                                    <th>Designation</th>
                                    <th>User Group</th>
                                    <th>Action</th>
                                </tr>
                            </thead>

                            <tbody>

                                <c:forEach items="${users}" var="user">
                                    <tr>
                                        <td><c:out value="${user.id}" /></td>
                                        <td><c:out value="${user.matric}" /></td>
                                        <td><c:out value="${user.name}" /></td>
                                        <td><c:out value="${user.email}" /></td>
                                        <td><c:out value="${user.designation}" /></td>
                                        <td><c:if test="${user.usergroup==1}">
                                                Admin
                                            </c:if>
                                            <c:if test="${user.usergroup== 2}">
                                                User
                                            </c:if>
                                        </td>
                                        <td><a class= "btn btn-warning" href="UserController?action=edit&id=<c:out value="${user.id}" />"><i class="fa fa-pencil"></i></a></td>
                                    </tr>
                                </c:forEach>

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

            <%@include file="layout/footer.jsp"%>
            <!-- Scroll to Top Button-->
            <a class="scroll-to-top rounded" href="#page-top">
                <i class="fa fa-angle-up"></i>
            </a>

            <script src="vendor/jquery/jquery.min.js"></script>
            <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
            <!-- Core plugin JavaScript-->
            <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
            <!-- Page level plugin JavaScript-->
            <script src="vendor/datatables/jquery.dataTables.js"></script>
            <script src="vendor/datatables/dataTables.bootstrap4.js"></script>
            <!-- Custom scripts for all pages-->
            <script src="js/sb-admin.min.js"></script>
            <!-- Custom scripts for this page-->
            <script src="js/sb-admin-datatables.min.js"></script>


        </div>

    </body>
</html>

