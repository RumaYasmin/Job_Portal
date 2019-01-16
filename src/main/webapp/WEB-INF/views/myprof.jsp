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
        
      </div>
    </nav>

    <div class="container-fluid p-0">

      

      

<div colspan="6">
    <table border="0" align="center" cellpadding="0" cellspacing="0" width="90%">
        
        <tbody>
            <tr>
                <br/><br/><br/>
        <div align="center">
            <h3><b><u>Resume of</u></b></h3>
        </div>
            </tr>
            <tr>
                <td width="50%" height="" align="left" valign="bottom" class="BDJApplicantsName">
                    <!--Applicant's Name:-->
                    <h1><b><u>${personalinfolists.firstname} ${personalinfolists.lastname}</u></b> </h1>

                </td>

                <td width="27%" rowspan="2" align="right" valign="bottom">
                    <!--Photograph:-->

                    <table width="140" height="140" border="0" align="center" cellpadding="0" cellspacing="7" bgcolor="#dadce1">
                        <tbody><tr> 
                                <td width="126" height="135" align="center" bgcolor="#e2e4e5" valign="middle"> 
                                    <img src="resources/profileimage/${UserId}.jpg" alt="Image" width="124" height="135">

                                </td>
                            </tr>
                        </tbody></table>

                </td>
            </tr>

            <tr>
                <td class="BDJNormalText04" align="left" valign="middle">
                    <!--Contact Address:-->

                    Address: ${personalinfolists.presaddress}
                    <!--Home Phone:-->

                    <br>
                    Mobile No 1: ${phone}	 
                    <!--Office Phone:-->

                    <br>
                    Mobile No 2: 01533560646
                    <!--Mobile:-->

                    <br>		
                    e-mail : ${UserId}
                </td>
            </tr>
        </tbody>

    </table>
    <!---------------
    CAREER OBJECTIVE:
    ----------------->

    

    <!--------------
    CAREER SUMMARY :
    ---------------->
    <!-------------------------------------------
    EMPLOYMENT HISTORY, TOTAL YEAR OF EXPERIENCE:
    --------------------------------------------->

    <table border="0" cellpadding="0" style="margin-top:3px;" cellspacing="0" align="center" width="750">
        <!--
        Employment History:
        -->
        <tr>
            <td colspan="6" class="BDJHeadline01"><u>Employmeee History:</u></td>
        </tr>
        <tr>
            <td colspan="6" align="left" style="padding-left:5px;" class="BDJNormalText01">
                <strong>Experience :</strong> 02(s)
            </td>
        </tr>
        <tbody  ng-repeat=" emhisid in emphistorylists">

            <!--Total Year of Experience:-->


            <tr>
                <td width="22" align="center" style="padding-left:5px;" class="BDJNormalText01"></td>
                <td width="750" colspan="5" align="left" class="BDJBoldText01">
                    <!--Position, DateFrom, DateTo:-->					 
                    <u>( {{emhisid.respons}} to {{emhisid.fromdate}})</u></td>
            </tr>	

            <tr>
                <td align="center" class="BDJHeadline02">&nbsp;</td>
                <td colspan="5" align="left" class="BDJNormalText01">
                    <!--Company Name:-->
                    <strong>{{emhisid.comcatname}}</strong>
                    <br>
                    <!--Company Location:-->

                    Company Location : {{emhisid.comlocation}}
                    <br>


                    <!--Department:-->

                    Department: {{emhisid.comdptname}}
                    <br>
                    <strong><i><u>Duties/Responsibilities:</u></i></strong>
                    <br>
                    {{emhisid.respons}}

                </td>
            </tr>
        </tbody>
    </table>

    <table border="0" cellpadding="0" style="margin-top:3px;" cellspacing="0" align="center" width="750">
        <tbody><tr>
                <td colspan="6" class="BDJHeadline01"><u>Academic Qualification:</u></td>
            </tr>

            <tr>
                <td colspan="6" align="left" style="padding-left:5px;" class="BDJNormalText01">
                    <table border="0" cellpadding="0" cellspacing="0" align="center" width="100%" style="border:1px solid #666666">

                        <tr class="BDJNormalText02">
                            <td width="20%" align="center" style="border-right:1px solid #666666"><strong>Exam Title</strong></td>
                            <td width="20%" align="center" style="border-right:1px solid #666666"><strong>Concentration/Major</strong></td>
                            <td width="20%" align="center" style="border-right:1px solid #666666"><strong>Institute</strong></td>
                            <td width="12.5%" align="center" style="border-right:1px solid #666666"><strong>Result</strong></td>

                            <td width="12.5%" align="center" style="border-right:1px solid #666666"><strong>Pas.Year</strong></td> 				   


                            <td width="15%" align="center"><strong>Institute Nmae</strong></td>

                        </tr>

                        <tbody ng-repeat="edu in educationalinfolists">			 

                            <tr class="BDJNormalText02">
                                <!--Exam Title:-->
                                <td width="20%" align="center" style="border-right:1px solid #666666;border-top:1px solid #666666;">
                                    {{edu.edutitle}}

                                </td>
                                <!--Concentration/Major:-->
                                <td width="20%" align="center" style="border-right:1px solid #666666;border-top:1px solid #666666;">
                                    {{edu.majorgroup}}
                                </td>
                                <!--Institute:-->
                                <td width="20%" align="center" style="border-right:1px solid #666666;border-top:1px solid #666666;">

                                    {{edu.bordun}}				
                                </td>
                                <!--Result:-->
                                <td width="12.5%" align="center" style="border-right:1px solid #666666;border-top:1px solid #666666;">

                                    {{edu.result}}					
                                </td>
                                <!--Passing Year:-->

                                <td width="12.5%" style="border-right:1px solid #666666;border-top:1px solid #666666;" align="center">
                                    {{edu.passingyear}}

                                </td>


                                <!--Duration:-->
                                <td width="15%" style="border-top:1px solid #666666" align="center">
                                    {{edu.institutename}}

                                </td>

                            </tr>
                        </tbody></table> 
                </td>
            </tr>
        </tbody>
    </table>

    <!--
PERSONAL DETAILS:
    -->

    <table border="0" cellpadding="0" cellspacing="0" align="center" width="750" style="margin-top:3px;">
        <!--
        Personal Details
        -->
        <tbody><tr>
                <td colspan="6" class="BDJHeadline01"><u>Personal Details :</u></td>
            </tr>

            <tr>
                <td colspan="6" align="left" class="BDJNormalText01">
                    <table border="0" cellpadding="0" cellspacing="0" align="center" width="100%">
                        <!--Fathers Name:-->

                        <tbody><tr class="BDJNormalText03">
                                <td width="22%" align="left" style="padding-left:5px;">Father's Name </td>
                                <td width="2%" align="center">:</td>
                                <td width="76%" align="left">
                                    ${profileobject1.fathername}
                                </td>
                            </tr>

                            <!--Mothers Name:-->

                            <tr class="BDJNormalText03">
                                <td width="22%" align="left" style="padding-left:5px;">Mother's Name </td>
                                <td width="2%" align="center">:</td>
                                <td width="76%" align="left">
                                    ${profileobject1.mothername}
                                </td>
                            </tr>

                            <!--Date of Birth:-->
                            <tr class="BDJNormalText03">
                                <td width="22%" align="left" style="padding-left:5px;">Date  of Birth</td>
                                <td width="2%" align="center">:</td>
                                <td width="76%" align="left">
                                    ${profileobject1.dofbirth}	 
                                </td>
                            </tr>
                            <!--Gender:-->
                            <tr class="BDJNormalText03">
                                <td width="22%" align="left" style="padding-left:5px;">Gender</td>
                                <td width="2%" align="center">:</td>
                                <td width="76%" align="left">
                                    ${profileobject1.gender}
                                </td>
                            </tr>
                            <!--Marital Status:-->
                            <tr class="BDJNormalText03">
                                <td width="22%" align="left" style="padding-left:5px;">Marital  Status </td>
                                <td width="2%" align="center">:</td>
                                <td width="76%" align="left">
                                    ${profileobject1.meritialstatus}
                                </td>
                            </tr>
                            <!--Nationality:-->
                            <tr class="BDJNormalText03">
                                <td align="left" style="padding-left:5px;">Nationality</td>
                                <td align="center">:</td>
                                <td align="left">
                                    ${profileobject1.nationality}
                                </td>
                            </tr>

                            <tr class="BDJNormalText03">
                                <td align="left" style="padding-left:5px;">National Id No.</td>
                                <td align="center">:</td>
                                <td align="left">
                                    ${profileobject1.nid}
                                </td>
                            </tr>

                            <!--Religion:-->

                            <tr class="BDJNormalText03">
                                <td align="left" style="padding-left:5px;">Religion</td>
                                <td align="center">:</td>
                                <td align="left">
                                    ${profileobject1.religion}
                                </td>
                            </tr>

                            <!--Permanent Address:-->

                            <tr class="BDJNormalText03">
                                <td align="left" style="padding-left:5px;">Permanent  Address</td>
                                <td align="center">:</td>
                                <td align="left">
                                    ${profileobject1.permaddress}
                                </td>
                            </tr>

                            <!--Current Location:-->
                            <tr class="BDJNormalText03">
                                <td align="left" style="padding-left:5px;">Current  Location</td>
                                <td align="center">:</td>
                                <td align="left">			
                                    ${profileobject1.presaddress} 		
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
        </tbody>
    </table>

    <!--
REFERENCE:
    -->

    <table border="0" cellpadding="0" cellspacing="0" align="center" width="750" style="margin-top:3px;">
        <!--
        Reference:
        -->
        <tbody><tr>
                <td colspan="6" class="BDJHeadline01"><u>Reference (s):</u></td>
            </tr>

            <tr>
                <td colspan="6" align="left" class="BDJNormalText01">
                    <table border="0" width="100%" align="center" cellpadding="0" cellspacing="0">

                        <tbody><tr class="BDJNormalText03">
                                <td width="22%" align="left">&nbsp;</td>
                                <td width="2%" align="center">&nbsp;</td>			
                                <td width="35%" align="left" class="BDJBoldText01" style="border-right:1px solid #666666;"><u>Reference: 01</u></td>
                                <td width="41%" align="left" class="BDJBoldText01" style="padding-left:15px;"><u>Reference: 02</u></td>
                            </tr>

                            <!--Name:-->

                            <tr class="BDJNormalText03">

                                <td width="22%" align="left" style="padding-left:5px;">Name </td>
                                <td width="2%" align="center">:</td>
                                <td width="35%" align="left" style="border-right:1px solid #666666;">
                                    Rebaka Najma
                                    &nbsp;
                                </td>

                                <td width="41%" align="left" style="padding-left: 10px;">
                                    Md. Abu Bakor Siddik
                                </td>

                            </tr>

                            <!--Organization:-->

                            <tr class="BDJNormalText03">

                                <td width="22%" align="left" style="padding-left:5px;">Organization</td>
                                <td width="2%" align="center">:</td>
                                <td width="35%" align="left" style="border-right:1px solid #666666;">
                                    Kurigram Govt College
                                    &nbsp;
                                </td>

                                <td width="41%" align="left" style="padding-left: 10px;">
                                    Madina Cement Industries LTD				  
                                </td>

                            </tr>

                            <!--Designation:-->	 

                            <tr class="BDJNormalText03">

                                <td width="22%" align="left" style="padding-left:5px;">Designation</td>
                                <td width="2%" align="center">:</td>
                                <td width="35%" align="left" style="border-right:1px solid #666666;">
                                    Lecturer of Botany
                                    &nbsp;
                                </td>

                                <td width="41%" align="left" style="padding-left: 10px;">
                                    Area Sales Manager,				  
                                </td>

                            </tr>

                            <!--Address:-->

                            <tr class="BDJNormalText03">

                                <td width="22%" align="left" style="padding-left:5px;">Address</td>
                                <td width="2%" align="center">:</td>
                                <td width="35%" align="left" style="border-right:1px solid #666666;">
                                    Kurigram Govt College
                                    &nbsp;
                                </td>

                                <td width="41%" align="left" style="padding-left: 10px;">
                                    Madina Cement Industries LTD
                                    Madina Square (4th Floor),
                                    64/A, Shahid Buddhijibi Munir Chowdhury
                                    Sharak (Central Road),
                                    Dhanmondi, Dhaka-1205				  
                                </td>

                            </tr>

                            <!--Phone(Off):-->	

                            <tr class="BDJNormalText03">

                                <td width="22%" align="left" style="padding-left:5px;">Phone (Off.) </td>
                                <td width="2%" align="center">:</td>
                                <td width="35%" align="left" style="border-right:1px solid #666666;">

                                    &nbsp;
                                </td>

                                <td width="41%" align="left" style="padding-left: 10px;">

                                </td>

                            </tr>

                            <!--Phone(Res):-->

                            <tr class="BDJNormalText03">

                                <td align="left" style="padding-left:5px;">Phone (Res.) </td>
                                <td align="center">:</td>
                                <td align="left" style="border-right:1px solid #666666;">

                                    &nbsp;
                                </td>

                                <td align="left" style="padding-left: 10px;">

                                </td>

                            </tr>

                            <!--Mobile:-->

                            <tr class="BDJNormalText03">

                                <td align="left" style="padding-left:5px;">Mobile</td>
                                <td align="center">:</td>
                                <td align="left" style="border-right:1px solid #666666;">
                                    01742199273
                                    &nbsp;
                                </td>

                                <td align="left" style="padding-left: 10px;">
                                    +8801730329331				  
                                </td>

                            </tr>

                            <!--E-Mail:-->

                            <tr class="BDJNormalText03">

                                <td align="left" style="padding-left:5px;">E-Mail</td>
                                <td align="center">:</td>
                                <td align="left" style="border-right:1px solid #666666;">

                                    &nbsp;
                                </td>

                                <td align="left" style="padding-left: 10px;">
                                    siddik@madina.co				  
                                </td>

                            </tr>

                            <!--Relation:-->

                            <tr class="BDJNormalText03">

                                <td align="left" style="padding-left:5px;">Relation</td>
                                <td align="center">:</td>
                                <td align="left" style="border-right:1px solid #666666;">
                                    Academic
                                    &nbsp;
                                </td>

                                <td align="left" style="padding-left: 10px;">
                                    Professional				  				  
                                </td>

                            </tr>


                            <tr class="BDJNormalText03">
                                <td align="left">&nbsp;</td>
                                <td align="center">&nbsp;</td>
                                <td colspan="2" align="left">
                                </td>
                            </tr>

                        </tbody>
                    </table>
                </td>
            </tr>
        </tbody>
    </table>







</div>



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
