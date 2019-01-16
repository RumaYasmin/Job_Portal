<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign Up</title>
    </head>
    <body>
        <jsp:include page="header.jsp" />


        <br>
        <br>
        <br>

        <div id="mainBody" class="container" align="center"
             style="min-height: 400px;">

            <form:form modelAttribute="adminsign" action="signupadmin">
                <!-- urm -@modelattribute used in Usercontroller -->
     <div class="input-group animated fadeInDown delay-07s" id="UserRole">
                    <span class="input-group-addon" id="basic-addon1">
                        <div class="glyphicon glyphicon-user"></div>
                    </span>
                       
                         <form:input type="text" class="form-control" aria-describedby="basic-addon1"
                                path="userrole" value="ROLE_ADMIN" readonly="true" required="true"></form:input>
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
                        <div style="margin-top: 3px;color: #761c19;"><span class="glyphicon glyphicon-hand-up">  </span>   Login using this Email </div>
                    </div>
                    <div class="row" style="margin-top: 20px;">
                        <button id="signupbutton" class="btn animated fadeInDown delay-15s" type="submit">Sign Up</button>
                        <button id="cancelbutton" class="btn animated fadeInDown delay-15s" type="Reset">Cancel</button>
                    </div>

            </form:form>
        </div>
        <jsp:include page="footer.jsp" />
    </body>
</html>
