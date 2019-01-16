<%-- 
    Document   : newjspemployeeprofile
    Created on : Dec 24, 2018, 6:26:16 PM
    Author     : B10
--%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Employee Profile</title>

    <!-- Bootstrap core CSS -->
    <link href="resources/empprofile/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:500,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Muli:400,400i,800,800i" rel="stylesheet">
    <link href="resources/empprofile/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="resources/empprofile/css/resume.min.css" rel="stylesheet">

    <script src="resources/js/angular.js"></script>
        <script src="resources/js/jquery.min.js"></script>
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

    <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top" id="sideNav">
      <a class="navbar-brand js-scroll-trigger" href="#page-top">
        <span class="d-block d-lg-none">My Profile</span>
        <span class="d-none d-lg-block">
          <img class="img-fluid img-profile rounded-circle mx-auto mb-2" src="resources/empprofile/img/1.png" alt="">
        </span>
      </a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="showmyprofpage"> My Profile</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="showwelcomejobpage">Education</a>
          </li>

          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="logout">Log Out</a>
          </li>
           
        </ul>
      </div>
    </nav>

    <div class="container-fluid p-0">

      <section class="resume-section p-3 p-lg-5 d-flex d-column" id="about">
        <div class="my-auto">
          <h2 class="mb-0">MY
            <span class="text-primary">PROFILE</span>
          </h2>
            
          <div class="subheading mb-5">130/131 Tejkunipara, Tejgaon, Dhaka-1215 ·
            <a href="mailto:name@email.com">rumana@email.com</a>
          </div>
          <p class="lead mb-5">I am experienced in leveraging agile frameworks to provide a robust synopsis for high level overviews. Iterative approaches to corporate strategy foster collaborative thinking to further the overall value proposition.</p>
          <div class="social-icons">
            <a href="#">
              <i class="fab fa-linkedin-in"></i>
            </a>
            <a href="#">
              <i class="fab fa-github"></i>
            </a>
            <a href="#">
              <i class="fab fa-twitter"></i>
            </a>
            <a href="#">
              <i class="fab fa-facebook-f"></i>
            </a>
          </div>
        </div>
      </section>

      <hr class="m-0">


    </div>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for this template -->
    <script src="js/resume.min.js"></script>

  </body>

</html>
