<%-- 
    Document   : addjobcategory
    Created on : Nov 25, 2018, 12:01:10 PM
    Author     : USER
--%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
            var jobcat = ${jobcategorymodelobject};
            console.log(jobcat);
            angular.module('jobcatapp', []).controller('JobCategoryController',
                    function ($scope) {
                        $scope.JobCategory = jobcat;
                    });
        </script>
    </head>
    <body>
        <jsp:include page="header.jsp" />
        <div class="container-fluid"
             style="width: 80%; margin-top: 10px; margin-bottom: 10px">
            <div class="panel animated fadeInDown delay-05s" id="panel-1">
                <div class="panel-heading">
                    <span class="lead">Managing Job Category</span>
                </div>
                <!-- end panel heading -->
                <div class="panel-body">
                    <div class="formcontainer">
                        <c:if test="${check}">
                            <form:form name="addJobCategoryObject"
                                       modelAttribute="addJobCategoryObject1" action="addingjobcategory"
                                       method="post">
                                <div class="form-group">
                                    <form:input class="form-control"
                                                Placeholder="JobCategory Id" type="text" path="jobcatid" required="true"></form:input>
                                    </div>
                                    <div class="form-group">
                                    <form:input class="form-control"
                                                Placeholder="JobCategory Name" type="text" path="jobcatname" required="true"></form:input>
                                    </div>
                                    <div class="form-group">
                                    <form:input type="text" class="form-control"
                                                placeholder="JobCategory Status" path="jobcatstatus" required="true"></form:input>
                                    </div>
                                <form:button id="editbuttons" type="submit" name="Addjobcategory"
                                             class="btn">Add Job Category</form:button>
                                <form:button id="removebuttons" type="reset" class="btn">Reset
                                    Details</form:button>

                            </form:form>
                        </c:if>

                        <c:if test="${!check}">
                            <form:form name="addJobCategoryObject"
                                       modelAttribute="addJobCategoryObject1" action="addingjobcategory"
                                       method="post">
                                <div class="form-group">
                                    <form:input id="name" class="form-control"
                                                Placeholder="JobCategory Id" type="text" path="jobcatid" readonly="true"></form:input>
                                    </div>
                                    <div class="form-group">
                                    <form:input id="name" class="form-control"
                                                Placeholder="JobCategory Name" type="text" path="jobcatname"></form:input>
                                    </div>
                                    <div class="form-group">
                                    <form:input type="text" class="form-control"
                                                placeholder="JobCategory Status" path="jobcatstatus"></form:input>
                                    </div>
                                <form:button id="editbuttons" type="submit" name="EditJobCategory"
                                             class="btn">Edit Job Category</form:button>
                                <form:button id="removebuttons" type="reset" class="btn">Reset
                                    Details</form:button>
                            </form:form>
                        </c:if>
                    </div>
                </div>
                <!-- panel1 body end -->
            </div>
            <!-- panel1 end -->
            <div class="panel animated fadeInUp delay-05s" id="panel-2">
                <div class="panel-heading">
                    <span class="lead">List Of Job Categories</span>
                </div>
                <!-- end panel2 heading -->
                <div class="panel-body" ng-app="jobcatapp"
                     ng-controller="JobCategoryController" width="100%">
                    <ul class="list-group ">
                        <li class="list-group-item" height="45px"
                            ng-repeat="JobCat in JobCategory">
                            <div class="pull-left">
                                <ul class="list-inline">
                                    <li><span><b>Job Category Id: </b></span>{{JobCat.jobcatid}}</li>
                                    <li><span><b>Job Category Name: </b></span>{{JobCat.jobcatname}}</li>
                                    <li><span><b>Job Category Status </b></span>{{JobCat.jobcatstatus}}</li>
                                </ul>
                            </div>
                            <div class="pull-right">
                                <a href="editjobcategorybutton?getjcid={{JobCat.jobcatid}}"><button id="editbuttons"
                                                                                                    type="submit" class="btn">Edit</button></a> <a
                                    href="removejobcategory/{{JobCat.jobcatid}}"><button  id="removebuttons"
                                                                                      type="button" class="btn">Remove</button></a>
                            </div>
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
