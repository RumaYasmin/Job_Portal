<%-- 
    Document   : addproduct
    Created on : Nov 25, 2018, 5:18:28 PM
    Author     : User
--%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="text/css">

            .form-control:FOCUS
            {
                border: 2px solid #9ccc65;
                border-radius: 5px;
            }

            .panel>.panel-heading {
                color: #2aabd2;
                background-color:  #761c19;
                border-color:  #761c19;
            }
            .panel>.panel-body
            {
                background-color: #f1f8e9;
                border-color: #aed581;
            }
            .list-group-item {
                overflow: hidden;
                margin: 3px;
                border-radius: 3px;
            }
            #removebuttons
            {
                color: #ffffff;
                background-color: #e57373;
            }
            #removebuttons:HOVER {
                color: #ffffff;
                background-color: #e53935;
            }
            #editbuttons{
                color: #ffffff;
                background: linear-gradient(to bottom, #aed581 50%, #761c19 50%);
            }
            #editbuttons:HOVER {
                color: #ffffff;
                background: linear-gradient(to bottom, #761c19 50%, #8bc34a 50%);
            }
        </style>
        <script src="resources/js/angular.js"></script>

        <script>
            var personalinfolists = ${personalinfolists};
            var userlists = ${userlists};

            angular.module('organocartpackage', []).controller('PersonalinfoController',
                    function ($scope) {
                        $scope.personalinfolists = personalinfolists;
                        $scope.userlists = userlists;

                        console.log($scope.userlists);
                    });
        </script>
    </head>
    <body ng-app="organocartpackage" ng-controller="PersonalinfoController">
        <jsp:include page="header.jsp" />
        <div class="container-fluid"
             style="width: 90%; margin-top: 10px; margin-bottom: 10px">

            <div class="panel animated fadeInDown delay-05s" id="panel-1">
                <div class="panel-heading">
                    <span class="lead">Personal Information</span>
                </div>
                <!-- end panel heading -->
                <div class="panel-body">
                    <div class="formcontainer ">

                        <form:form commandName="PersonalinfoObject" action="Personalinfo"
                                   enctype="multipart/form-data">
                            <c:if test="${check}">
                                <div class="form-group">

                                    <form:input class="form-control" Placeholder="Personal Info Id"
                                                type="text" path="persinfoid" required="true"></form:input>
                                    </div>
                            </c:if>
                            <c:if test="${!check}">
                                <div class="form-group">
                                    <form:input class="form-control" Placeholder="Personal Info Id"
                                                type="text" path="persinfoid" readonly="true" required="true"></form:input>
                                    </div>
                            </c:if>

                            <div class="form-group">
                                <select class="form-control" ng-model="emid" ng-options="x.emailid for x in userlists" required="true" >
                                    <option value=""> choose Email Id</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <form:hidden  class="form-control" value="{{emid.emailid}}" path="emailid"></form:hidden>
                                </div>

                                <div class="form-group">
                                <form:input class="form-control" Placeholder="First Name"
                                            type="text" path="firstname" required="true"></form:input>
                                </div>
                                <div class="form-group">
                                <form:input class="form-control" Placeholder="Last Name"
                                            type="text" path="lastname" required="true"></form:input>
                                </div>

                                <div class="form-group">
                                <form:input class="form-control" Placeholder="Fathers Name"
                                            type="text" path="fathername" required="true"></form:input>
                                </div>
                                <div class="form-group">
                                <form:input class="form-control" Placeholder="Mothers Name"
                                            type="text" path="mothername" required="true"></form:input>
                                </div>

                                <div class="form-group">
                                <form:input class="form-control" Placeholder="Date of Birth"
                                            type="text" path="dofbirth" required="true"></form:input>
                                </div>
                                <div class="form-group">
                                <form:input class="form-control" Placeholder="Present Address"
                                            type="text" path="presaddress" required="true"></form:input>
                                </div>

                                <div class="form-group">
                                <form:input class="form-control" Placeholder="Parmanent Address"
                                            type="text" path="permaddress" required="true"></form:input>
                                </div>

                                <div class="form-group">
                                <form:input class="form-control" Placeholder="Maritalstatus"
                                            type="text" path="meritialstatus" required="true"></form:input>
                                </div>

                                <div class="form-group">
                                    <label>Gender: </label>
                                    <label class="radio-online">
                                    <form:radiobutton path="gender" value="Male"/>Male<label>
                                        <label class="radio-online">
                                            <form:radiobutton path="gender" value="Female"/>Female<label>
                                                </div>
                                                <div class="form-group">
                                                    <form:input class="form-control" Placeholder="Religion"
                                                                type="text" path="religion" required="true"></form:input>
                                                    </div>
                                                    <div class="form-group">
                                                    <form:input class="form-control" Placeholder="Nationality"
                                                                type="text" path="nationality" required="true"></form:input>
                                                    </div>

                                                <c:if test="${check}">
                                                    <form:button id="editbuttons" type="submit" name="Add" class="btn">Add
                                                        Details</form:button>
                                                    <form:button id="removebuttons" type="reset" class="btn">Reset
                                                        Details</form:button>
                                                </c:if>
                                                <c:if test="${!check}">
                                                    <form:button id="editbuttons" type="submit" name="Edit" class="btn">Edit
                                                        Details</form:button>
                                                    <form:button id="removebuttons" type="reset" class="btn">Reset
                                                        Details</form:button>
                                                </c:if>
                                                <a href="showpersonalinfopage"><button id="show" type="button" class="btn">Cancel</button></a>        
                                            </form:form>
                                            </div>
                                            <!-- panel body end -->
                                            </div>
                                            </div>
                                            <!-- panel end -->
                                            <div class="panel animated fadeInUp delay-05s" id="panel-2">
                                                <div class="panel-heading">
                                                    <span class="lead">Personal Information List</span>
                                                </div>
                                                <p><input type="text" ng-model="test" class="form-control" placeholder="Search Info"></p>
                                                <!-- end panel2 heading -->
                                                <div class="panel-body">
                                                    <ul class="list-group">
                                                        <li class="list-group-item" height="45px"
                                                            ng-repeat="persif in personalinfolists| filter:test ">

                                                            <table style="width: 100%">
                                                                <tr>

                                                                    <td>
                                                                        <ul>
                                                                            <li><span><b>Personal Information Id: </b></span>{{persif.persinfoid}}</li>
                                                                            <li><span><b>Email Id: </b></span>{{persif.emailid}}</li>
                                                                            <li><span><b>First Name: </b></span>{{persif.firstname}}</li>
                                                                            <li><span><b>Last Name: </b></span>{{persif.lastname}}</li>
                                                                            <li><span><b>Fathers Name: </b></span>{{persif.fathername}}</li>
                                                                            <li><span><b>Mothers Name: </b></span>{{persif.mothername}}</li>
                                                                            <li><span><b>Date of Birth: </b></span>{{persif.dofbirth}}</li>
                                                                            <li><span><b>Present Address: </b></span>{{persif.presaddress}}</li>
                                                                            <li><span><b>Permanent Address: </b></span>{{persif.permaddress}}</li>
                                                                            <li><span><b>Marital Status: </b></span>{{persif.meritialstatus}}</li>
                                                                            <li><span><b>Gender: </b></span>{{persif.gender}}</li>
                                                                            <li><span><b>Religion: </b></span>{{persif.religion}}</li>
                                                                            <li><span><b>Nationality: </b></span>{{persif.nationality}}</li>

                                                                        </ul>
                                                                    </td>
                                                                    <td><a href="editingpersonalinfo?getperid={{persif.persinfoid}}"><button id="editbuttons"
                                                                                                                                             type="submit" class="btn">Edit</button></a> <a
                                                                            href="removingpersonalinfo/{{persif.persinfoid}}"><button id="removebuttons"
                                                                                                                                  type="button" class="btn">Remove</button></a></td>
                                                                </tr>
                                                            </table>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <!-- panel2 body end -->
                                            </div>
                                            <!-- panel2 end -->
                                            </div>

                                            <jsp:include page="footer.jsp" />

                                            <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
                                            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>

                                            <script>
                                                                                    $(document).ready(function () {
                                                                                        var date_input = $('input[name="dofbirth"]'); //our date input has the name "date"
                                                                                        var container = $('.bootstrap-iso form').length > 0 ? $('.bootstrap-iso form').parent() : "body";
                                                                                        date_input.datepicker({
                                                                                            format: 'yyyy/mm/dd',
                                                                                            container: container,
                                                                                            todayHighlight: true,
                                                                                            autoclose: true,
                                                                                        })
                                                                                    })
                                            </script>

                                            </body>
                                            </html>
