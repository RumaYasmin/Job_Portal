<%-- 
    Document   : cvprofile
    Created on : Jan 9, 2019, 1:10:07 AM
    Author     : USER
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
        <script>
            var educationalinfolist = ${educationalinfolists};
            var personalinfolist = ${personalinfolists};
            var skilllist = ${skilllists};
            var emphistorylist = ${emphistorylists};
            var userlist = ${userlists};

            angular.module('organocartpackage', []).controller('CvController',
                    function ($scope) {
                        $scope.educationalinfolists = educationalinfolist;
                        $scope.personalinfolists = ersonalinfolist;
                        $scope.skilllists = skilllist;
                        $scope.emphistorylists = emphistorylist;
                        $scope.userlists = userlist;

                        console.log($scope.userlist);
                    });
        </script>
    </head>
    <body ng-app="cvapp" ng-controller="CvController">
        <header class="resume-header pt-4 pt-md-0">
            <div class="media flex-column flex-md-row">
                <!--<img class="mr-3 img-fluid picture mx-auto" src="resources/cv/profile.jpg" alt="">-->
                <img class="mr-3 img-fluid picture mx-auto"  src="resources/images/0014348.jpg" alt="pic" >
                <div class="media-body p-4 d-flex flex-column flex-md-row mx-auto mx-lg-0">
                    <div class="primary-info">
                        <h1 class="name mt-0 mb-1 text-white text-uppercase text-uppercase">${personalinfolists.email}</h1>
                        <!--						    <div class="title mb-3">Designation: N/A</div>-->


                        <ul class="list-unstyled">
                            <li class="mb-2">Email : ${personalinfolists.email}</a></li>
                            <li class="mb-2"><a href="#">Phone : ${personalinfolists.phone}</a></li>
                            <li class="mb-2"><a href="#">Address : ${personalinfolists.address}</a></li>
                            <li class="mb-2"><a href="#">Date of Birth :${personalinfolists.dob}</a></li>
                        </ul>
                    </div><!--//primary-info-->
                    <div class="secondary-info ml-md-auto mt-2">
                        <ul class="resume-social list-unstyled">
                            <!--				          
                                                                            <a href="#"><span class="fa-container text-center mr-2"><i class="fab fa-github-alt fa-fw"></i></span></a>
                                                                            <li class="mb-3"><a href="#"><span class="fa-container text-center mr-2"><i class="fab fa-codepen fa-fw"></i></span>codepen.io/username/</a></li>
                                                                            <li><a href="#"><span class="fa-container text-center mr-2"><i class="fas fa-globe"></i></span>yourwebsite.com</a></li>-->
                        </ul>
                    </div><!--//secondary-info-->

                </div><!--//media-body-->
            </div><!--//media-->
        </header>
        

<div colspan="6">
    <table border="0" align="center" cellpadding="0" cellspacing="0" width="90%">
        
        <tbody>
            <tr>
                <br/><br/><br/>
        <div align="center">
            <h1><b><u>Resume of</u></b></h1>
        </div>
            </tr>
            <tr>
                <td width="50%" height="" align="left" valign="bottom" class="BDJApplicantsName">
                    <!--Applicant's Name:-->
                    <h1><b><u>${profileobject1.firstname} ${profileobject1.lastname}</u></b> </h1>

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

                    Address: ${profileobject1.paddress}
                    <!--Home Phone:-->

                    <br>
                    Mobile No 1: ${Userphone}	 
                    <!--Office Phone:-->

                    <br>
                    Mobile No 2 :01556479082
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

    <table border="0" cellpadding="0" cellspacing="0" align="center" width="750">	
        <tbody><tr>
                <td colspan="6" style="border-bottom:1px solid #000000;">&nbsp;</td>
            </tr>

            <tr><td colspan="6">&nbsp;</td></tr>		 

            <tr>
                <td colspan="6" class="BDJHeadline01"><u>Career Objective:</u></td>
                
            </tr>

            <tr>
                <td colspan="6" align="left" style="padding-left:5px;" class="BDJNormalText01">
                    To build a long and outstanding career in corporate sector where I will be able to work of situation with full efforts to utilize my knowledge, skill and experience for building a challenging professional career.
                    <div class="modal fade" id="myModal" role="dialog">
                        <div class="modal-dialog modal-md">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title">Modal Header</h4>
                                </div>
                                <div class="modal-body">
                                    <p>This is a small modal.</p>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="pull-right">
                        <a href="editstudenteducation?getpid={{ox.eduinfoid}}"><button  id="editedu"
                        type="button" class="btn"><span class="glyphicon glyphicon-pencil"></span></button></a> 
                                                         
                       
                    </div>
                </td>
            </tr>		
        </tbody></table>

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
            <td colspan="6" class="BDJHeadline01"><u>Employment History:</u></td>
        </tr>
        <tr>
            <td colspan="6" align="left" style="padding-left:5px;" class="BDJNormalText01">
                <strong>Total Year of Experience :</strong> 7.3 Year(s)
            </td>
        </tr>
        <tbody  ng-repeat=" x in jobh">

            <!--Total Year of Experience:-->


            <tr>
                <td width="22" align="center" style="padding-left:5px;" class="BDJNormalText01">{{index + 1}}</td>
                <td width="750" colspan="5" align="left" class="BDJBoldText01">
                    <!--Position, DateFrom, DateTo:-->					 
                    <u>{{x.designation}}( {{x.startdate}} to {{x.enddate}})</u></td>
            </tr>	

            <tr>
                <td align="center" class="BDJHeadline02">&nbsp;</td>
                <td colspan="5" align="left" class="BDJNormalText01">
                    <!--Company Name:-->
                    <strong>{{x.companynames}}</strong>
                    <br>
                    <!--Company Location:-->

                    Company Location : {{x.location}}
                    <br>


                    <!--Department:-->

                    Department: {{x.department}}
                    <br>
                    <strong><i><u>Duties/Responsibilities:</u></i></strong>
                    <br>
                    {{x.responsibility}}

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


                            <td width="15%" align="center"><strong>Duration</strong></td>

                        </tr>

                        <tbody ng-repeat="edu in education">			 

                            <tr class="BDJNormalText02">
                                <!--Exam Title:-->
                                <td width="20%" align="center" style="border-right:1px solid #666666;border-top:1px solid #666666;">
                                    {{edu.examtitle}}

                                </td>
                                <!--Concentration/Major:-->
                                <td width="20%" align="center" style="border-right:1px solid #666666;border-top:1px solid #666666;">
                                    {{edu.majorsubject}}
                                </td>
                                <!--Institute:-->
                                <td width="20%" align="center" style="border-right:1px solid #666666;border-top:1px solid #666666;">

                                    {{edu.board}}				
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
                                    {{edu.duration}}

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
                                    ${profileobject1.dateofbirth}	 
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
                                    ${profileobject1.maritalstatus}
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
                                    ${profileobject1.paddress}
                                </td>
                            </tr>

                            <!--Current Location:-->
                            <tr class="BDJNormalText03">
                                <td align="left" style="padding-left:5px;">Current  Location</td>
                                <td align="center">:</td>
                                <td align="left">			
                                    ${profileobject1.curentaddress} 		
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


    </body>
    <script src="resources/empprofile/vendor/jquery/jquery.min.js"></script>
    <script src="resources/empprofile/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="resources/empprofile/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for this template -->
    <script src="resources/empprofile/js/resume.min.js"></script>
</html>
