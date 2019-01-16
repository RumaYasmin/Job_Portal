<%-- 
    Document   : seecv
    Created on : Jan 9, 2019, 12:34:13 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <script src="resources/js/angular.js"></script>
       <script>
            var educationalinfolists = ${educationalinfolists};
            var emphistorylists = ${emphistorylists};
            var personalinfolists = ${personalinfolists};
            var skilllists = ${skilllists};
            var userlists = ${userlists};
            var jobappliedlists = ${jobappliedlists};

            angular.module('organocartpackage', []).controller('CvController',
                    function ($scope) {
                        $scope.educationalinfolists = educationalinfolists;
                        $scope.emphistorylists = emphistorylists;
                        $scope.personalinfolists = personalinfolists;
                        $scope.skilllists = skilllists;
                        $scope.userlists = userlists;
                        $scope.jobappliedlists = jobappliedlists;

                        console.log($scope.educationalinfolists);
                    });
        </script>
    </head>
   <body ng-app="organocartpackage" ng-controller="CvController">
       <jsp:include page="header.jsp" />
       <div class="row " style="background: #117a8b"></div>
       <br><br>
       
       <div class="container">
           <div class="row">
               <div class="col-md-6">
                   <div id="city_1" class="clearfix">
                       <ul class="orange" ng-repeat="pil in personalinfolists">
                           <h3>Personal Info</h3>     
                    <li>                       
                        <p>First Name: {{pil.firstname}}</p>
                        <p>Last Name: {{pil.lastname}}</p>
                        <p>Father Name: {{pil.fathername}}</p>
                        <p>Mother Name: {{pil.mothername}}</p>
                        <p>Date Of Birth: {{pil.dofbirth}}</p>
                        <p>Present Address: {{pil.presaddress}}</p>
                        <p>Permanent Address: {{pil.permaddress}}</p>
                        <p>Marital Status: {{pil.meritialstatus}}</p>
                        <p>Gender: {{pil.gender}}</p>
                        <p>Religion {{pil.religion}}</p>
                        <p>Nationality: {{pil.nationality}}</p>
                                           
                    </li>  
                       </ul>
                   </div>
               </div>
           </div>
       </div>
       <jsp:include page="footer.jsp" />
    </body>
</html>
