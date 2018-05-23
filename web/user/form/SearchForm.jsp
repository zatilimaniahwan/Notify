<%-- 
    Document   : SearchForm
    Created on : May 23, 2018, 2:07:07 PM
    Author     : Zatil Imani Ahwan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <body>
        <div class="card  mx-3 mt-12">
            <div class="card-header">Search Form</div>
            <div class="card-body">
                <form class="form-inline">
                    <label  for="inlineFormInput">Name</label>&nbsp;
                    <input type="text" class="form-control mb-2 mr-sm-2 mb-sm-0" id="inlineFormInput" placeholder="">&nbsp;

                    <label  for="inlineFormInputGroup">Matric No</label>&nbsp;
                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">

                        <input type="text" class="form-control" id="inlineFormInputGroup" placeholder="">
                    </div>
                    <label for="exampleConfirmPassword">User Group</label>&nbsp;
                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">

                    <select class="custom-select mb-4 mr-sm-4 mb-sm-0" id="inlineFormCustomSelect">
                                    <option selected>Choose...</option>
                                    <option value="1">One</option>
                                    <option value="2">Two</option>
                                    <option value="3">Three</option>
                                </select>
                    </div>
                    <button type="submit" class="btn btn-primary"><i class="fa fa-search"></i>&nbsp;Submit</button>&nbsp;
                    <button type="submit" class="btn btn-warning">Clear</button>
                </form>

            </div>
        </div>
    </body>
</html>
