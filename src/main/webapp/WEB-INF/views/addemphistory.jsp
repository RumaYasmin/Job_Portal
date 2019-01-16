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
            var emphistorylists = ${emphistorylists};
            var userlists = ${userlists};
            var comcategorylists = ${comcategorylists};

            angular.module('organocartpackage', []).controller('EmphistoryController',
                    function ($scope) {
                        $scope.emphistorylists = emphistorylists;
                        $scope.userlists = userlists;
                        $scope.comcategorylists = comcategorylists;

                        console.log($scope.userlists);
                    });
        </script>
    </head>
    <body ng-app="organocartpackage" ng-controller="EmphistoryController">
        <jsp:include page="header.jsp" />
        <div class="container-fluid"
             style="width: 90%; margin-top: 10px; margin-bottom: 10px">

            <div class="panel animated fadeInDown delay-05s" id="panel-1">
                <div class="panel-heading">
                    <span class="lead">Employ History</span>
                </div>
                <!-- end panel heading -->
                <div class="panel-body">
                    <div class="formcontainer ">

                        <form:form commandName="EmphistoryObject" action="Emphistory"
                                   enctype="multipart/form-data">
                            <c:if test="${check}">
                                <div class="form-group">

                                    <form:input class="form-control" Placeholder="Emp history Id"
                                                type="text" path="emphisid" required="true"></form:input>
                                    </div>
                            </c:if>
                            <c:if test="${!check}">
                                <div class="form-group">
                                    <form:input class="form-control" Placeholder="Emp history Id"
                                                type="text" path="emphisid" readonly="true" required="true"></form:input>
                                    </div>
                            </c:if>

                            <div class="form-group">
                                <select class="form-control" ng-model="emid" ng-options="x.emailid for x in userlists"  >
                                    <option value=""> choose Email Id</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <form:hidden  class="form-control" value="{{emid.emailid}}" path="emailid"></form:hidden>
                                </div>

                                <div class="form-group">
                                    <select class="form-control" ng-model="comcid" ng-options="x.comcatid for x in comcategorylists" required="true" >
                                        <option value="">-- choose Company Category --</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                <form:hidden  class="form-control" value="{{comcid.comcatid}}" path="comcatid"></form:hidden>
                                </div>

                                <div class="form-group">
                                <form:input class="form-control" Placeholder="Company Name"
                                            type="text" path="comcatname" required="true"></form:input>
                                </div>
                                <div class="form-group">
                                <form:input class="form-control" Placeholder="company Location"
                                            type="text" path="comlocation" required="true"></form:input>
                                </div>

                                <div class="form-group">
                                <form:input class="form-control" Placeholder="Company Department"
                                            type="text" path="comdptname" required="true"></form:input>
                                </div>
                                <div class="form-group">
                                <form:input class="form-control" Placeholder="Position"
                                            type="text" path="position" required="true"></form:input>
                                </div>

                                <div class="form-group">
                                <form:input class="form-control" Placeholder="Responsibilities"
                                            type="text" path="respons" required="true"></form:input>
                                </div>
                                <div class="form-group">
                                <form:input class="form-control" Placeholder="From date"
                                            type="text" path="fromdate" required="true"></form:input>
                                </div>

                                <div class="form-group">
                                <form:input class="form-control" Placeholder="To date"
                                            type="text" path="todate" required="true"></form:input>
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
                            <a href="showemphistorypage"><button id="show" type="button" class="btn">Cancel</button></a>        
                        </form:form>
                    </div>
                    <!-- panel body end -->
                </div>
            </div>
            <!-- panel end -->
            <div class="panel animated fadeInUp delay-05s" id="panel-2">
                <div class="panel-heading">
                    <span class="lead">Job List</span>
                </div>
                <p><input type="text" ng-model="test" class="form-control" placeholder="Search Emp History"></p>
                <!-- end panel2 heading -->
                <div class="panel-body">
                    <ul class="list-group">
                        <li class="list-group-item" height="45px"
                            ng-repeat="emhisid in emphistorylists| filter:test ">

                            <table style="width: 100%">
                                <tr>

                                    <td>
                                        <ul>
                                            <li><span><b>Emp history Id: </b></span>{{emhisid.emphisid}}</li>
                                            <li><span><b>Email Id: </b></span>{{emhisid.emailid}}</li>
                                            <li><span><b>Company Category Id: </b></span>{{emhisid.comcatid}}</li>
                                            <li><span><b>Company Name: </b></span>{{emhisid.comcatname}}</li>
                                            <li><span><b>company Location: </b></span>{{emhisid.comlocation}}</li>
                                            <li><span><b>Company Department: </b></span>{{emhisid.comdptname}}</li>
                                            <li><span><b>Position: </b></span>{{emhisid.position}}</li>
                                            <li><span><b>Responsibilities: </b></span>{{emhisid.respons}}</li>
                                            <li><span><b>From date: </b></span>{{emhisid.fromdate}}</li>
                                            <li><span><b>To date: </b></span>{{emhisid.todate}}</li>
                                            
                                        </ul>
                                    </td>
                                    <td><a href="editingemphistory?getemhisid={{emhisid.emphisid}}"><button id="editbuttons"
                                                                                                type="submit" class="btn">Edit</button></a> <a
                                            href="removingemphistory/{{emhisid.emphisid}}"><button id="removebuttons"
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
                                                                    var date_input = $('input[name="fromdate"]'); //our date input has the name "date"
                                                                    var container = $('.bootstrap-iso form').length > 0 ? $('.bootstrap-iso form').parent() : "body";
                                                                    date_input.datepicker({
                                                                        format: 'yyyy/mm/dd',
                                                                        container: container,
                                                                        todayHighlight: true,
                                                                        autoclose: true,
                                                                    })
                                                                })
                </script>
                   
                  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>
        
                <script>
                                                                $(document).ready(function () {
                                                                    var date_input = $('input[name="todate"]'); //our date input has the name "date"
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
