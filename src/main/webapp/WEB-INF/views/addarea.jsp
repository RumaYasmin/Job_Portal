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

            form-control:FOCUS
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
            var arealist = ${arealist};
            var CityServicelist = ${CityServicelist};
            

            angular.module('organocartpackage', []).controller('AreaController',
                    function ($scope) {
                        $scope.arealist = arealist;
                        $scope.CityServicelist = CityServicelist;
                       
                        console.log($scope.arealist);
                    });
        </script>
    </head>
    <body ng-app="organocartpackage" ng-controller="AreaController">
        <jsp:include page="header.jsp" />
        <div class="container-fluid"
             style="width: 90%; margin-top: 10px; margin-bottom: 10px">

            <div class="panel animated fadeInDown delay-05s" id="panel-1">
                <div class="panel-heading">
                    <span class="lead">Select Area</span>
                </div>
                <!-- end panel heading -->
                <div class="panel-body">
                    <div class="formcontainer ">

                        <form:form commandName="newAreaObject" action="areaadd"
                                   enctype="multipart/form-data">
                            <c:if test="${check}">
                                <div class="form-group">

                                    <form:input class="form-control" Placeholder="Area Id"
                                                type="text" path="area_id" required="true"></form:input>
                                </div>
                            </c:if>
                            <c:if test="${!check}">
                                <div class="form-group">

                                    <form:input class="form-control" Placeholder="Area Id"
                                                type="text" path="area_id" required="true"></form:input>
                                </div>
                            </c:if>
                          
                            <div class="form-group">
                                <select class="form-control" ng-model="city_id" ng-options="x.city_id as x.city_name for x in CityServicelist" required="true">
                                    <option value="">-- Select city --</option>
                                </select>
                                </div>
                                <div class="form-group">
                                <form:hidden  class="form-control" value="{{city_id}}" path="city_id"></form:hidden>
                                </div>
                            
                                <div class="form-group">
                                <form:input class="form-control" Placeholder="Area Name"
                                            type="text" path="area_name" required="true"></form:input>
                                </div>
                                <div class="form-group">
                                <form:input type="text" class="form-control"
                                            placeholder="Area Status" path="area_status" required="true"></form:input>
                                </div>
                               
                               
                               
                                
                                
                                <!--                            <input class="form-control" id="date" name="date" placeholder="MM/DD/YYY" type="text"/>-->
                                
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
                            <a href="showareapage"><button id="show" type="button" class="btn">Cancel</button></a>        
                        </form:form>
                    </div>
                    <!-- panel body end -->
                </div>
            </div>
            <!-- panel end -->
            <div class="panel animated fadeInUp delay-05s" id="panel-2">
                <div class="panel-heading">
                    <span class="lead">Area List</span>
                </div>
                <p><input type="text" ng-model="test" class="form-control" placeholder="Search Area"></p>
                <!-- end panel2 heading -->
                <div class="panel-body">
                    <ul class="list-group">
                        <li class="list-group-item" height="45px"
                            ng-repeat="p in arealist| filter:test">
                            <table style="width: 100%">
                                <tr>
                                   
                                    <td>
                                        <ul>
                                            <li><span><b>Area Id: </b></span>{{p.area_id}}</li>
                                            <li><span><b>City Id </b></span>{{p.city_id}}</li>
                                            <li><span><b>Area Name </b></span>{{p.area_name}}</li>
                                            <li><span><b>Area Status </b></span>{{p.area_status}}</li>
                                           
                                        </ul>
                                    </td>
                                    <td><a href="editingarea?getaid={{p.area_id}}"><button id="editbuttons"
                                                                                                      type="submit" class="btn">Edit</button></a> <a
                                            href="removingarea/{{p.area_id}}"><button id="removebuttons"
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


        <!--<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>-->

        <!-- Include Date Range Picker -->
        <
       
        
        <!--     Form code begins 
            <form method="post">
              <div class="form-group">  Date input 
                <label class="control-label" for="date">Date</label>
                <input class="form-control" id="date" name="date" placeholder="MM/DD/YYY" type="text"/>
              </div>
             </form>-->
    </body>
</html>
