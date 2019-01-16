<%-- 
    Document   : seejobpost
    Created on : Jan 4, 2019, 5:14:20 PM
    Author     : B10
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        
        
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

                        console.log($scope.jobpostlists);
                    });
        </script>
    </head>
    
    <body ng-app="organocartpackage" ng-controller="JobpostController">
        <jsp:include page="header.jsp" />
     <div class="row " style="background: #117a8b"></div>
        
        <br><br>
        <div class="container">
       
            <div class="row">
                <div class="col-md-6">
            <div id="city_1" class="clearfix">
                <ul class="orange" ng-repeat="jpl in jobpostlists">
                    <li>                       
                        <p>Job Title: {{jpl.jobtitle}}</p>
                        <p>Job Location: {{jpl.joblocation}}</p>
                        <p>No. Of Vacancy: {{jpl.numofvacancy}}</p>
                        <p>Start Date: {{jpl.startdate}}</p>
                        <p>End Date: {{jpl.enddate}}</p>
                        <p>Skill Required: {{jpl.skillreq}}</p>
                        <p>Education Required: {{jpl.edureq}}</p>
                        <p>Basic Requirement: {{jpl.basicreqm}}</p>
                        <p>Salary: {{jpl.salaryrng}}</p>
                        <p>Job Nature: {{jpl.jobnature}}</p>
                        <p>Experience: {{jpl.experencereq}}</p>                        
                        <p>Other Benefit: {{jpl.otherbenifit}}</p>                        
                    </li>  

                </ul>   
                
                <td><a href="editingjobapplie?getjaid={{jpy.applyid}}"><button id="editbuttons"
                                                                                                type="submit" class="btn">Apply</button></a> <a
                                            href="removingjobapplie/{{jpy.applyid}}"><button id="removebuttons"
                                                                                      type="button" class="btn">Remove</button></a></td>
            </div>  
                                    </div> 
                </div> 

        </div>  
            
        <jsp:include page="footer.jsp" />
    </body>
</html>
