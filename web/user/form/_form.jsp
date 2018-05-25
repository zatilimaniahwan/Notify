<%-- 
    Document   : _form
    Created on : May 23, 2018, 2:04:42 AM
    Author     : Zatil Imani Ahwan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

    <body>
        <div class="card  mx-3 mt-12">
            <div class="card-header">Edit User</div>
            <div class="card-body">
                <form action="UserController" method="post">
                    <div class="form-group">
                        <div class="form-row">
                            <div class="col-md-6">

                                <label for="exampleInputName">Name</label>
                                <input type="hidden" name="id" value="${user.id}" />
                                <input class="form-control" id="exampleInputName" type="text" aria-describedby="nameHelp" placeholder="" name="name" value="${user.name}" disabled>
                            </div>
                            <div class="col-md-6">
                                <label for="exampleInputLastName">Matric No</label>
                                <input class="form-control" id="exampleInputLastName" type="text" aria-describedby="nameHelp" placeholder="" name="matricno" value="${user.matric}" disabled>
                            </div>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="col-md-6">
                            <label for="exampleInputEmail1">Email address</label>
                            <input class="form-control" id="exampleInputEmail1" type="email" aria-describedby="emailHelp" placeholder="" name="email_address" value="${user.email}" disabled>
                        </div>
                        <div class="col-md-6">
                            <label for="exampleInputEmail1">Designation</label>
                            <input class="form-control" id="exampleInputEmail1" type="email" aria-describedby="emailHelp" placeholder="" name="designation" value="${user.designation}" disabled>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="form-row">
                            <div class="col-md-6">
                                <label for="exampleInputPassword1">Password</label>
                                <input class="form-control" id="exampleInputPassword1" type="password" placeholder="" value="${user.password}" disabled>
                            </div>
                            <div class="col-md-6">
                                <label for="exampleConfirmPassword">User Group</label>
                                <select class="custom-select mb-2 mr-sm-2 mb-sm-0" id="inlineFormCustomSelect">
                                    <option selected>Choose...</option>
                                    <option value="1">One</option>
                          
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="col-md-2">
                            <a class="btn btn-primary btn-block" href="UserController?action=edit&id=<c:out value="${user.id}" />"><i class="fa fa-save"></i>&nbsp;Save</a>
                        </div>
                       
                        <div class="col-md-2">
                            <a class="btn btn-danger btn-block" href="UserController?action=listuser"><i class="fa fa-chevron-left"></i>&nbsp;Cancel</a>

                        </div>
                    </div>
                </form>

            </div>
        </div>
    </body>
</html>
