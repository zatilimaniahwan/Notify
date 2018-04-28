<%-- 
    Document   : footer.jsp
    Created on : Apr 28, 2018, 1:07:32 AM
    Author     : Zatil Imani Ahwan
--%>
<%@ page import = "java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import = "javax.servlet.*,java.text.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   
    <body>
        <footer class="sticky-footer">
                    <div class="container">
                        <div class="text-center">
                            <%
                                Date date = new Date();
                                SimpleDateFormat ft= new SimpleDateFormat("yyyy");
                                out.print(" <small>Copyright © Notify " + ft.format(date) + "</small>");
                            %>

                        </div>
                    </div>
                </footer>
    </body>
</html>
