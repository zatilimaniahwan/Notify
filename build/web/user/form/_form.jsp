<%-- 
    Document   : _form
    Created on : May 23, 2018, 2:04:42 AM
    Author     : Zatil Imani Ahwan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <body>
        <div class="card  mx-3 mt-12">
            <div class="card-header">Edit User</div>
            <div class="card-body">
                <form>
                    <div class="form-group">
                        <div class="form-row">
                            <div class="col-md-6">
                                <label for="exampleInputName">Name</label>
                                <input class="form-control" id="exampleInputName" type="text" aria-describedby="nameHelp" placeholder="">
                            </div>
                            <div class="col-md-6">
                                <label for="exampleInputLastName">Matric No</label>
                                <input class="form-control" id="exampleInputLastName" type="text" aria-describedby="nameHelp" placeholder="">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Email address</label>
                        <input class="form-control" id="exampleInputEmail1" type="email" aria-describedby="emailHelp" placeholder="">
                    </div>
                    <div class="form-group">
                        <div class="form-row">
                            <div class="col-md-6">
                                <label for="exampleInputPassword1">Password</label>
                                <input class="form-control" id="exampleInputPassword1" type="password" placeholder="">
                            </div>
                            <div class="col-md-6">
                                <label for="exampleConfirmPassword">User Group</label>
                                <select class="custom-select mb-2 mr-sm-2 mb-sm-0" id="inlineFormCustomSelect">
                                    <option selected>Choose...</option>
                                    <option value="1">One</option>
                                    <option value="2">Two</option>
                                    <option value="3">Three</option>
                                </select>
                            </div>
                        </div>
                    </div>
                      <div class="col-md-2">
                    <a class="btn btn-primary btn-block" href="login.html"><i class="fa fa-save"></i>&nbsp;Update</a>
                    
                      </div>
                </form>
                
            </div>
        </div>
    </body>
</html>
