<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <!--  <script type="text/javascript" >
                 function preventBack(){
                     window.history.forward();
                 }
                 setTimeout("preventBack()",0);
                 window.onunload=function(){null};
                     
             </script>-->

        <!-- Required Meta Tags -->
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">

        <!-- Page Title -->
        <title>Fitzone</title>

        <!-- Favicon -->
        <link rel="shortcut icon" href="assets/images/logo/favicon.png" type="image/x-icon">

        <!-- CSS Files -->
        <link rel="stylesheet" href="assets/css/animate-3.7.0.css">
        <link rel="stylesheet" href="assets/css/buttoncss.css">
        <link rel="stylesheet" href="assets/css/font-awesome-4.7.0.min.css">
        <link rel="stylesheet" href="assets/fonts/flat-icon/flaticon.css">
        <link rel="stylesheet" href="assets/css/bootstrap-4.1.3.min.css">
        <link rel="stylesheet" href="assets/css/owl-carousel.min.css">
        <link rel="stylesheet" href="assets/css/nice-select.css">
        <link rel="stylesheet" href="assets/css/style.css">
    </head>
   
    <body>
        <!-- Preloader Starts -->
        <div class="preloader">
            <div class="spinner"></div>
        </div>
        <!-- Preloader End -->

        <!-- Header Area Starts -->
        <header class="header-area main-header">
            <div class="container">
                <div class="row">
                    <div class="col-lg-2">
                        <div class="logo-area">
                            <a href="index.html"><img src="assets/images/logo.png" alt="logo"></a>
                        </div>
                    </div>
                    <div class="col-lg-10">
                        <div class="custom-navbar">
                            <span></span>
                            <span></span>
                            <span></span>
                        </div>  
                        <div class="main-menu">
                            <ul>
                                <li class="active"><a href="index.jsp">home</a></li>
                                <li><a href="about.jsp">about us</a></li>
                              <!--  <li><a href="schedule.jsp">schedule</a></li>-->
                                                          <!-- <li><a href="trainers.jsp">trainers</a></li>-->
                                                   <!--         <li><a href="#">blog</a>
                                                                <ul class="sub-menu">
                                                                    <li><a href="blog-home.html">Blog Home</a></li>
                                                                    <li><a href="blog-details.html">Blog Details</a></li>
                                                                </ul>
                                                            </li>-->
                                <li><a href="contact-us.jsp">contact</a></li>
                                <!--<li><a href="#">pages</a>
                                    <ul class="sub-menu">
                                        <li><a href="service.html">Service</a></li>
                                        <li><a href="elements.html">Elements</a></li>
                                    </ul>
                                </li>-->
                                <li class="menu-btn">
                                   <!-- <a href="latestOffers.jsp" class="button button2">Latest Offer</a>-->
                                    <a href="Logout.jsp" class="button button2">Logout</a>
                                </li>
                            </ul>
                        </div>

                    </div>
                </div>
            </div>
        </header>
        <div class="main-menu">
            <a href="TrainerProfile.jsp">Edit Profile</a><br>
            <a href="TrainerHistory.jsp">History</a>

        </div>
        <!-- Header Area End -->
        <script src="assets/js/vendor/jquery-2.2.4.min.js"></script>
        <script src="assets/js/vendor/bootstrap-4.1.3.min.js"></script>
        <script src="assets/js/vendor/wow.min.js"></script>
        <script src="assets/js/vendor/owl-carousel.min.js"></script>
        <script src="assets/js/vendor/jquery.nice-select.min.js"></script>
        <script src="assets/js/main.js"></script>
        <%

                Connection cn=(Connection)application.getAttribute("CONN");
        
        String _id=(String) session.getAttribute("uid");
             // String Eid=request.getParameter("userid");
              out.println(_id);
            // String OId=null;
             // String ON=null;
              //String Details=null;
              //Double charges=0.0;
              //String duration=null; 
         if(!cn.isClosed())
            {
                  
        PreparedStatement ps=cn.prepareStatement("select * from trainer where Email=?");
         ps.setString(1,_id);
            ResultSet rs=ps.executeQuery();
             while(rs.next())
             {
        %>
        <form action="MemberPage.jsp" method="post">


            <table align="center">
                <tr>
                    <td><h3><u><font color="#003d99" type="bold" size="7px">Course Taken</font></u></h3></td>
                </tr>
                <tr>
                    <td width="60%">
                        <h3>Email:</h3>
                    </td>
                    <td width="60%">
                        <label><%   out.println(_id);%></label></td>
                </tr>
                <tr>
                    <td width="60%">
                        <h3>Offer Id:</h3>
                    </td>
                    <td width="60%">
                       <label><%=rs.getString(2)%></label></td>
                    </td>
                </tr>
                <tr>
                    <td width="60%">
                        <h3>Offer Name:</h3>
                    </td>
                    <td width="60%">
                       <label><%=rs.getString(3)%></label></td>
                    </td>
                </tr>
                <tr>
                    <td width="50%">
                        <h3>Offer Payment:</h3>
                    </td>
                    <td width="60%">
                               <label><%=rs.getString(4)%></label></td>
                </td>
                </tr>
                <tr>
                    <td width="60%">
                        <h3>Offer Duration:</h3>
                    </td>
                    <td width="60%">
                        <label><%=rs.getString(5)%></label></td>
                
                    </td>
                </tr>
               

            </table>
        </form>
<%
            
             }}
%>
    </body>
</html>

