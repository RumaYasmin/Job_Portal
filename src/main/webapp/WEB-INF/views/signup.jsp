<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Jobs - Sign Up</title>

        <!-- Bootstrap core CSS-->
        <link href="resources/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom fonts for this template-->
        <link href="resources/resources/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

        <!-- Custom styles for this template-->
        <link href="resources/resources/cssnew/sb-admin.css" rel="stylesheet">
        <link href="resources/resources/img/logo.ico" rel="shortcut icon" />

    </head>
    <body class="bg-dark">
        <div class="container">
            <div class="card card-register mx-auto mt-5">
                <div class="card-header">Register an Account</div>
                <div class="card-body">
            <form:form modelAttribute="urm" action="reguser">
                <!-- urm -@modelattribute used in Usercontroller -->
                
                
                <div class="input-group animated fadeInDown delay-07s" id="UserRole">
                    <span class="input-group-addon" id="basic-addon1">
                        <div class="glyphicon glyphicon-user"></div>
                    </span>
                        <form:select class="form-control" aria-describedby="basic-addon1" path="userrole" required="true">
                            <option value="">--Select Role --</option>
                            <option value="ROLE_EMPLOYEE"> ROLE_EMPLOYEE</option>
                            <option value="ROLE_EMPLOYER">ROLE_EMPLOYER</option>
                            <option value="ROLE_USER">ROLE_USER</option>
                        </form:select>
                            
                    </div>
                
                <div class="input-group animated fadeInDown delay-07s" id="UserName">
                    <span class="input-group-addon" id="basic-addon1">
                        <div class="glyphicon glyphicon-user"></div>
                    </span>
                    <form:input type="text" class="form-control" placeholder="Username"
                                aria-describedby="basic-addon1" path="username" required="true"></form:input>
                    </div>
                    <div class="input-group animated fadeInDown delay-09s" id="Password">
                        <span class="input-group-addon" id="basic-addon1">
                            <div class="glyphicon glyphicon-lock" required="true"></div>
                        </span>
                    <form:input type="password" class="form-control"
                                placeholder="New Password" aria-describedby="basic-addon1"
                                path="password" required="true"></form:input>
                    </div>
                    <div class="input-group animated fadeInDown delay-11s" id="PhoneNumber">
                        <span class="input-group-addon" id="basic-addon1">
                            <div class="glyphicon glyphicon-phone"></div>
                        </span>
                    <form:input type="text" class="form-control"
                                placeholder="Phone Number" aria-describedby="basic-addon1"
                                path="phone" value="+88" required="true"></form:input>
                    </div>
                    <div>
                        <div class="input-group animated fadeInDown delay-13s" id="Email" style="margin-bottom: 0px;">

                            <span class="input-group-addon" id="basic-addon1">
                                <div class="glyphicon glyphicon-inbox"></div>
                            </span>
                        <form:input type="text" class="form-control" placeholder="Email"
                                    aria-describedby="basic-addon1" path="emailid" required="true"></form:input>
                        </div>
                        <div style="margin-top: 3px;color: #11a9cc;"><span class="glyphicon glyphicon-hand-up">  </span>   Login using this Email </div>
                    </div>
                    <div class="row" style="margin-top: 20px;">
                        <button id="signupbutton" class="btn animated fadeInDown delay-15s" type="submit">Sign Up</button>
                        <button id="cancelbutton" class="btn animated fadeInDown delay-15s" type="Reset">Cancel</button>
                    </div>

            </form:form>
           <div class="text-center">
                        <a class="d-block small mt-3" href="login">Login Page</a>
                        <a class="d-block small" href="forgot-password.html">Forgot Password?</a>
                    </div>
                </div>
            </div>
        </div>     
        <script src="resources/resources/jquery/jquery.min.js"></script>
        <script src="resources/resources/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Core plugin JavaScript-->
        <script src="resources/resources/jquery-easing/jquery.easing.min.js"></script>
    </body>
</html>
