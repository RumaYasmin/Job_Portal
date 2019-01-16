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
            var employerlists = ${employerlists};
            var userlists = ${userlists};
            var companycategorieslists = ${companycategorieslists};
            var arealists = ${arealists};

            angular.module('organocartpackage', []).controller('EmployerController',
                    function ($scope) {
                          $scope.employerlists = employerlists;
                        $scope.userlists = userlists;
                        $scope.companycategorieslists = companycategorieslists;
                        $scope.arealists = arealists;
                        
                        console.log($scope.userlists);
                    });
        </script>
    </head>
    <body ng-app="organocartpackage" ng-controller="EmployerController">
        <jsp:include page="header.jsp" />
        <div class="container-fluid"
             style="width: 90%; margin-top: 10px; margin-bottom: 10px">

            <div class="panel animated fadeInDown delay-05s" id="panel-1">
                <div class="panel-heading">
                    <span class="lead">Employer Registration</span>
                </div>
                <!-- end panel heading -->
                <div class="panel-body">
                    <div class="formcontainer ">

                        <form:form commandName="employerObject" action="Employer"
                                   enctype="multipart/form-data">
                            <c:if test="${check}">
                                <div class="form-group">

                                    <form:input class="form-control" Placeholder="Employer Id"
                                                type="text" path="empid" required="true"></form:input>
                                    </div>
                            </c:if>
                            <c:if test="${!check}">
                                <div class="form-group">
                                    <form:input class="form-control" Placeholder="Employer Id"
                                                type="text" path="empid" readonly="true" required="true"></form:input>
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
                                    <select class="form-control" ng-model="cmcid" ng-options="x.comcatid for x in companycategorieslists" required="true" >
                                        <option value="">-- choose Company Category --</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                <form:hidden  class="form-control" value="{{cmcid.comcatid}}" path="comcatid"></form:hidden>
                                </div>
                                <div class="form-group">
                                    <select class="form-control" ng-model="arid" ng-options="x.area_id for x in arealists"  required="true" >
                                        <option value="">-- choose  Area--</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                <form:hidden  class="form-control" value="{{arid.area_id}}" path="area_id"></form:hidden>
                                </div>
                                
                                <div class="form-group">
                                <form:input class="form-control" Placeholder="Company Name"
                                            type="text" path="comname" required="true"></form:input>
                                </div>
                                <div class="form-group">
                                <form:input class="form-control" Placeholder="Contact Parson"
                                            type="text" path="contperson" required="true"></form:input>
                                </div>
                                
                                 <div class="form-group">
                                <form:input class="form-control" Placeholder="Contact Email"
                                            type="text" path="contemail" required="true"></form:input>
                                </div>
                                <div class="form-group">
                                <form:input class="form-control" Placeholder="Company Website"
                                            type="text" path="comwebsite" required="true"></form:input>
                                </div>
                                
                                <div class="form-group">
                                <form:input class="form-control" Placeholder="Company Details"
                                            type="text" path="comdetails" required="true"></form:input>
                                </div>
                                <div class="form-group">
                                <form:input class="form-control" Placeholder="Company Phone"
                                            type="text" path="comphone" required="true"></form:input>
                                </div>
                                
                                 <div class="form-group">
                                <form:input class="form-control" Placeholder="Company Fax"
                                            type="text" path="comfax" required="true"></form:input>
                                </div>
                                <div class="form-group">
                                <form:input class="form-control" Placeholder="Compani status"
                                            type="text" path="comstatus" required="true"></form:input>
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
                            <a href="showemployerpage"><button id="show" type="button" class="btn">Cancel</button></a>        
                        </form:form>
                    </div>
                    <!-- panel body end -->
                </div>
            </div>
            <!-- panel end -->
            <div class="panel animated fadeInUp delay-05s" id="panel-2">
                <div class="panel-heading">
                    <span class="lead">Company List</span>
                </div>
                <p><input type="text" ng-model="test" class="form-control" placeholder="Search Company"></p>
                <!-- end panel2 heading -->
                <div class="panel-body">
                    <ul class="list-group">
                        <li class="list-group-item" height="45px"
                            ng-repeat="emp in employerlists| filter:test ">

                            <table style="width: 100%">
                                <tr>

                                    <td>
                                        <ul>
                                            <li><span><b>Employer Id: </b></span>{{emp.empid}}</li>
                                            <li><span><b>Email Id: </b></span>{{emp.emailid}}</li>
                                            <li><span><b>Company Category Id: </b></span>{{emp.comcatid}}</li>
                                            <li><span><b>Area Id: </b></span>{{emp.area_id}}</li>
                                            <li><span><b>Company Name: </b></span>{{emp.comname}}</li>
                                            <li><span><b>Contact Person: </b></span>{{emp.contperson}}</li>
                                            <li><span><b>Contact Email: </b></span>{{emp.contemail}}</li>
                                            <li><span><b>Company Web site: </b></span>{{emp.comwebsite}}</li>
                                            <li><span><b>Company Details: </b></span>{{emp.comdetails}}</li>
                                            <li><span><b>Company Phone: </b></span>{{emp.comphone}}</li>
                                            <li><span><b>Company Fax: </b></span>{{emp.comfax}}</li>
                                            <li><span><b>Company Status: </b></span>{{emp.comstatus}}</li>

                                        </ul>
                                    </td>
                                    <td><a href="editingemployer?getemid={{emp.empid}}"><button id="editbuttons"
                                                                                                     type="submit" class="btn">Edit</button></a> <a
                                            href="removingemployer/{{emp.empid}}"><button id="removebuttons"
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

    </body>
</html>
