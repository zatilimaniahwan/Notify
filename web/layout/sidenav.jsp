<%-- 
    Document   : sidenav.jsp
    Created on : Apr 28, 2018, 12:15:27 AM
    Author     : Zatil Imani Ahwan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <body>
     <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
                    <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Dashboard">
                        <a class="nav-link" href="index.html">
                            <i class="fa fa-fw fa-dashboard"></i>
                            <span class="nav-link-text">Dashboard</span>
                        </a>
                    </li>
                    <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Charts">
                        <a class="nav-link" href="charts.html">
                            <i class="fa fa-fw fa-table"></i>
                            <span class="nav-link-text">Events</span>
                        </a>
                    </li>
                    <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Tables">
                        <a class="nav-link" href="tables.html">
                            <i class="fa fa-fw fa-file-pdf-o"></i>
                            <span class="nav-link-text">Reports</span>
                        </a>
                    </li>
                     <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Tables">
                        <a class="nav-link" href="ListUser.jsp">
                            <i class="fa fa-fw fa-users"></i>
                            <span class="nav-link-text">Manage Users</span>
                        </a>
                    </li>



                </ul>
               <%@include file="topnav.jsp"%>
            </div>
    </body>
</html>
