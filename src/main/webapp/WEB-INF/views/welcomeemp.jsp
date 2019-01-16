<%-- 
    Document   : welcome
    Created on : Nov 20, 2018, 4:20:01 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <jsp:include page="header.jsp" />
        <br><br>
        <div class="container">
            <div class="row " style="background: #117a8b">
                <div class="col-md-8">
                    <h1>Menu List</h1>
                </div>

                <div class="col-md-4">
                    <h3>Create New Admin<br><a href="adminsignuppage">SIGN-UP</a>please</h3>
                </div>
            </div>

            <div class="row">
                <div class="col-md-6">
                    <ul>
                        
                        <li><a href="showingcompanycategorypage">Add Company Category</a></li>
                        <li><a href="showingjobcategorypage">Add Job Category</a></li>
                        <li><a href="showjobpostpage">Add Job Post</a></li>
                    </ul>
                </div> 

<!--               <div class="col-md-6">  
                    <ul>
                      
                        <li><a href="showeeducationalinfopage">Add Educational Info</a></li>
                        <li><a href="showpersonalinfopage">Add Personal Info</a></li>
                        <li><a href="showemphistorypage">Add Emp History</a></li>
                        <li><a href="showskillpage">Add Skill</a></li>
                        <li><a href="showjobappliedpage">Add Apply</a></li>                     
                    </ul>
                </div>-->

     

            </div>

        </div>

        <jsp:include page="footer.jsp" />

    </body>
</html>
