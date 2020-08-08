
<%-- 
    Document   : registration
    Created on : Jul 12, 2019, 9:54:41 AM
    Author     : Jyoti Kumari
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
<head>
    <!-- Required Meta Tags -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <!-- Page Title -->
    <title>Admin Page</title>

    <!-- Favicon -->
    <link rel="shortcut icon" href="assets/images/logo/favicon.png" type="image/x-icon">

    <!-- CSS Files -->
    <link rel="stylesheet" href="assets/css/animate-3.7.0.css">
    <link rel="stylesheet" href="assets/css/font-awesome-4.7.0.min.css">
    <link rel="stylesheet" href="assets/fonts/flat-icon/flaticon.css">
    <link rel="stylesheet" href="assets/css/bootstrap-4.1.3.min.css">
    <link rel="stylesheet" href="assets/css/owl-carousel.min.css">
    <link rel="stylesheet" href="assets/css/nice-select.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <style>
        .header{
    opacity: 0.7;
    filter: alpha(opacity=40); 
    background-color: #660033;
    padding: 30px;
}

        
        .inner-header{
            width:80%;
            margin:auto;
            
        }
        a{
            font-color:black;
            font-weight:bold;
            padding-left:400px;
           
        }
        h5 a{
             color:Red;
            font-weight:bold;
            float:right;
        }
        body{
            background-color: #ffcccc;
        }
    </style>
    </head>
    <body> 
        <form action="sessionHandling.java">
        <div class="col-lg-12">
                    <div class="section-top text-center">
                        <h3><font color="red" type="bold" size="7px">Admin Panel</font></h3>
                    </div>
            
        
<!--<div class="col-lg-9">-->
<div class="left">
    <div class="header">
        <div class="inner-header">
             
  <h5><a href="Logout.jsp"><font color="#1a75ff" type="bold" size="5px">Logout</font></a></h5>
  </div>
    </div>
        
    </div>
<br>
<a href="AdminRegistration.jsp"><font color="#003d99" type="bold" size="5px">Register New Admin/Trainer/Member</font></a></br></br>
<a href="AdminOffer.jsp"><font color="#003d99" type="bold" size="5px">Update Offers</font></a><br><br>
<a href="AdminMemberList.jsp"><font color="#003d99" type="bold" size="5px">Member List</font></a><br><br>
<a href="AdminTrainerList.jsp"><font color="#003d99" type="bold" size="5px">Trainer List</font></a>
</div>
                <!--</div>-->


        </form>
    </body>
</html>
<%
response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
%>