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
            var jobpostlists = ${jobpostlists};
            var employerlists = ${employerlists};
            var jobcategorylists = ${jobcategorylists};

            angular.module('organocartpackage', []).controller('JobpostController',
                    function ($scope) {
                        $scope.jobpostlists = jobpostlists;
                        $scope.employerlists = employerlists;
                        $scope.jobcategorylists = jobcategorylists;

                        console.log($scope.employerlists);
                    });
        </script>
    </head>
    <body ng-app="organocartpackage" ng-controller="JobpostController">
        <jsp:include page="header.jsp" />
        <div class="container-fluid"
             style="width: 90%; margin-top: 10px; margin-bottom: 10px">

            <div class="panel animated fadeInDown delay-05s" id="panel-1">
                <div class="panel-heading">
                    <span class="lead">Job post</span>
                </div>
                <!-- end panel heading -->
                <div class="panel-body">
                    <div class="formcontainer ">

                        <form:form commandName="JobpostObject" action="Jobpost"
                                   enctype="multipart/form-data">
                            <c:if test="${check}">
                                <div class="form-group">

                                    <form:input class="form-control" Placeholder="Jobpost Id"
                                                type="text" path="jobpostid" required="true"></form:input>
                                    </div>
                            </c:if>
                            <c:if test="${!check}">
                                
                                <div class="form-group">
                                    <form:input class="form-control" Placeholder="Jobpost Id"
                                                type="text" path="jobpostid" readonly="true" required="true"></form:input>
                                    </div>
                            </c:if>

                            <div class="form-group">
                                <select class="form-control" ng-model="emid" ng-options="x.empid  for x in employerlists" required="true" >
                                    <option value=""> choose Employer Id</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <form:hidden  class="form-control" value="{{emid.empid}}" path="empid"></form:hidden>
                                </div>

                                <div class="form-group">
                                    <select class="form-control" ng-model="jcid" ng-options="x.jobcatid  for x in jobcategorylists" required="true" >
                                        <option value="">-- choose Job Category --</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                <form:hidden  class="form-control" value="{{jcid.jobcatid}}" path="jobcatid"></form:hidden>
                                </div>

                                <div class="form-group">
                                <form:input class="form-control" Placeholder="Job Title"
                                            type="text" path="jobtitle" required="true"></form:input>
                                </div>
                                <div class="form-group">
                                <form:input class="form-control" Placeholder="Job Location"
                                            type="text" path="joblocation" required="true"></form:input>
                                </div>

                                <div class="form-group">
                                <form:input class="form-control" Placeholder="Number Of Vacancy"
                                            type="text" path="numofvacancy" required="true"></form:input>
                                </div>
                                <div class="form-group">
                                <form:input class="form-control" Placeholder="Start Date"
                                            type="text" path="startdate" required="true"></form:input>
                                </div>

                                <div class="form-group">
                                <form:input class="form-control" Placeholder="End Date"
                                            type="text" path="enddate" required="true"></form:input>
                                </div>
                                <div class="form-group">
                                <form:input class="form-control" Placeholder="Skill Required"
                                            type="text" path="skillreq" required="true"></form:input>
                                </div>

                                <div class="form-group">
                                <form:input class="form-control" Placeholder="Education Required"
                                            type="text" path="edureq" required="true"></form:input>
                                </div>
                                <div class="form-group">
                                <form:input class="form-control" Placeholder="Basic Requirement"
                                            type="text" path="basicreqm" required="true"></form:input>
                                </div>
                                <div class="form-group">
                                <form:input class="form-control" Placeholder="Salary Range"
                                            type="text" path="salaryrng" required="true"></form:input>
                                </div>
                                <div class="form-group">
                                <form:input class="form-control" Placeholder="Job Nature"
                                            type="text" path="jobnature" required="true"></form:input>
                                </div>
                                <div class="form-group">
                                    <a href="addjobpost.jsp"></a>
                                <form:input class="form-control" Placeholder="Experience Required"
                                            type="text" path="experencereq" required="true"></form:input>
                                </div>
                                <div class="form-group">
                                <form:input class="form-control" Placeholder="Job Post Status"
                                            type="text" path="jobpoststatus" required="true"></form:input>
                                </div>
                                <div class="form-group">
                                <form:input class="form-control" Placeholder="Other Benefit"
                                            type="text" path="otherbenifit" required="true"></form:input>
                                </div>
                                <div class="form-group">
                                <form:input class="form-control" Placeholder="User email"
                                            type="text" path="useremail" required="true"></form:input>
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
                            <a href="showjobpostpage"><button id="show" type="button" class="btn">Cancel</button></a>        
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
                <p><input type="text" ng-model="test" class="form-control" placeholder="Search Company"></p>
                <!-- end panel2 heading -->
                <div class="panel-body">
                    <ul class="list-group">
                        <li class="list-group-item" height="45px"
                            ng-repeat="jpl in jobpostlists| filter:test ">

                            <table style="width: 100%">
                                <tr>

                                    <td>
                                        <ul>
                                            <li><span><b>Job Post Id: </b></span>{{jpl.jobpostid}}</li>
                                            <li><span><b>Employer Id: </b></span>{{jpl.empid}}</li>
                                            <li><span><b>Job Category Id: </b></span>{{jpl.jobcatid}}</li>
                                            <li><span><b>Job Title: </b></span>{{jpl.jobtitle}}</li>
                                            <li><span><b>Job Location: </b></span>{{jpl.joblocation}}</li>
                                            <li><span><b>Number Of Vacancy: </b></span>{{jpl.numofvacancy}}</li>
                                            <li><span><b>Start Date: </b></span>{{jpl.startdate}}</li>
                                            <li><span><b>End Date: </b></span>{{jpl.enddate}}</li>
                                            <li><span><b>Skill Required: </b></span>{{jpl.skillreq}}</li>
                                            <li><span><b>Education Required: </b></span>{{jpl.edureq}}</li>
                                            <li><span><b>Basic Requirement: </b></span>{{jpl.basicreqm}}</li>
                                            <li><span><b>Salary Range: </b></span>{{jpl.salaryrng}}</li>
                                            <li><span><b>Job Nature: </b></span>{{jpl.jobnature}}</li>
                                            <li><span><b>Experience Required: </b></span>{{jpl.experencereq}}</li>
                                            <li><span><b>Job Post Status: </b></span>{{jpl.jobpoststatus}}</li>
                                            <li><span><b>Other Benefit: </b></span>{{jpl.otherbenifit}}</li>
                                            <li><span><b>User email: </b></span>{{jpl.useremail}}</li>

                                        </ul>
                                    </td>
                                    <td><a href="editingjobpost?getjpid={{jpl.jobpostid}}"><button id="editbuttons"
                                                                                                type="submit" class="btn">Edit</button></a> <a
                                            href="removingjobpost/{{jpl.jobpostid}}"><button id="removebuttons"
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
                                                                    var date_input = $('input[name="startdate"]'); //our date input has the name "date"
                                                                    var container = $('.bootstrap-iso form').length > 0 ? $('.bootstrap-iso form').parent() : "body";
                                                                    date_input.datepicker({
                                                                        format: 'yyyy/mm/dd',
                                                                        container: container,
                                                                        todayHighlight: true,
                                                                        autoclose: true,
                                                                    })
                                                                })
                </script>
                <script>
                                                                $(document).ready(function () {
                                                                    var date_input = $('input[name="enddate"]'); //our date input has the name "date"
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
