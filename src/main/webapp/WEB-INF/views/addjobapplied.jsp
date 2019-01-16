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
            var jobappliedlists = ${jobappliedlists};
            var userlists = ${userlists};
            var jobpostlists = ${jobpostlists};

            angular.module('organocartpackage', []).controller('JobappliedController',
                    function ($scope) {
                        $scope.jobappliedlists = jobappliedlists;
                        $scope.userlists = userlists;
                        $scope.jobpostlists = jobpostlists;
                        console.log($scope.userlists);
                    });
        </script>
    </head>
    <body ng-app="organocartpackage" ng-controller="JobappliedController">
        <jsp:include page="header.jsp" />
        <div class="container-fluid"
             style="width: 90%; margin-top: 10px; margin-bottom: 10px">

            <div class="panel animated fadeInDown delay-05s" id="panel-1">
                <div class="panel-heading">
                    <span class="lead">Job Apply</span>
                </div>
                <!-- end panel heading -->
                <div class="panel-body">
                    <div class="formcontainer ">

                        <form:form commandName="JobappliedObject" action="Jobapplied"
                                   enctype="multipart/form-data">
                            <c:if test="${check}">
                                <div class="form-group">

                                    <form:input class="form-control" Placeholder="Jobapplied Id"
                                                type="text" path="applyid" required="true"></form:input>
                                    </div>
                            </c:if>
                            <c:if test="${!check}">
                                <div class="form-group">
                                    <form:input class="form-control" Placeholder="Jobapplied Id"
                                                type="text" path="applyid" readonly="true" required="true"></form:input>
                                    </div>
                            </c:if>

                            <div class="form-group">
                                <select class="form-control" ng-model="jpid" ng-options="x.jobpostid  for x in jobpostlists" required="true" >
                                    <option value=""> choose Job Post Id</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <form:hidden  class="form-control" value="{{jpid.jobpostid}}" path="jobpostid"></form:hidden>
                                </div>

                                <div class="form-group">
                                    <select class="form-control" ng-model="emid" ng-options="x.emailid  for x in userlists" required="true" >
                                        <option value="">-- choose email Id--</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                <form:hidden  class="form-control" value="{{emid.emailid}}" path="emailid"></form:hidden>
                                </div>

                                <div class="form-group">
                                <form:input class="form-control" Placeholder="Cover Letter"
                                            type="text" path="coverletter" required="true"></form:input>
                                </div>
                                <div class="form-group">
                                <form:input class="form-control" Placeholder="Expected Salary"
                                            type="text" path="expectsalary" required="true"></form:input>
                                </div>

                                <div class="form-group">
                                <form:input class="form-control" Placeholder="Apply Date"
                                            type="text" path="applydate" required="true"></form:input>
                                </div>
                                <div class="form-group">
                                <form:input class="form-control" Placeholder="Apply Status"
                                            type="text" path="applystatus" required="true"></form:input>
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
                            <a href="showjobappliedpage"><button id="show" type="button" class="btn">Cancel</button></a>        
                        </form:form>
                    </div>
                    <!-- panel body end -->
                </div>
            </div>
            <!-- panel end -->
            <div class="panel animated fadeInUp delay-05s" id="panel-2">
                <div class="panel-heading">
                    <span class="lead">Apply List</span>
                </div>
                <p><input type="text" ng-model="test" class="form-control" placeholder="Search Apply"></p>
                <!-- end panel2 heading -->
                <div class="panel-body">
                    <ul class="list-group">
                        <li class="list-group-item" height="45px"
                            ng-repeat="jpy in jobappliedlists| filter:test ">

                            <table style="width: 100%">
                                <tr>

                                    <td>
                                        <ul>
                                            <li><span><b>Job Applied Id: </b></span>{{jpy.applyid}}</li>
                                            <li><span><b>Email Id: </b></span>{{jpy.emailid}}</li>
                                            <li><span><b>Job Post Id: </b></span>{{jpy.jobpostid}}</li>
                                            <li><span><b>Cover Letter: </b></span>{{jpy.coverletter}}</li>
                                            <li><span><b>Expected Salary: </b></span>{{jpy.expectsalary}}</li>
                                            <li><span><b>Apply Date: </b></span>{{jpy.applydate}}</li>
                                            <li><span><b>Apply Status: </b></span>{{jpy.applystatus}}</li>                                          

                                        </ul>
                                    </td>
                                    <td><a href="editingjobapplie?getjaid={{jpy.applyid}}"><button id="editbuttons"
                                                                                                type="submit" class="btn">Edit</button></a> <a
                                            href="removingjobapplie/{{jpy.applyid}}"><button id="removebuttons"
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
                                                                    var date_input = $('input[name="applydate"]'); //our date input has the name "date"
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
