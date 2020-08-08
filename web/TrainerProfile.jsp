<%-- 
    Document   : registration
    Created on : Jul 12, 2019, 9:54:41 AM
    Author     : Jyoti Kumari
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
<head>
    <!-- Required Meta Tags -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <!-- Page Title -->
    <title>Profile</title>

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
    <style>
        body{
    background-color:#ffcccc;
}
label{
    font-size:20px;
    color:blue;
}

</style>
    </head>
    <body>    <div class="col-lg-12">
                    <div class="section-top text-center">
                        <h3><font color="#003d99" size="7px" type="bold">My Profile</font></h3>
                    </div>
            
        
<!--<div class="col-lg-9">-->
<div class="left">
                    <form action="EditMemberProfile.jsp" method="post">
                         <%
             Connection cn=(Connection)application.getAttribute("CONN");
             String _id=(String) session.getAttribute("uid");
            // out.println(_id);
                //String _id=request.getParameter("email");
                //String _pass=request.getParameter("password");
              if(!cn.isClosed())
            {
                PreparedStatement ps=cn.prepareStatement("select * from registration where Email=?");
                 ps.setString(1,_id);
            ResultSet rs=ps.executeQuery();
             while(rs.next())
             {
                      

 %>
                         <table align="center" cellpadding="10">
                             <tr><td><font color="red" size="5px" type="bold">NAME:</font><label><%=rs.getString(1)%></label></td>
                                </tr>
                                <tr><td> <font color="red" size="5px" type="bold">EMAIL:</font>
                                   <label ><%=rs.getString(5)%></label></td></tr>
                                <tr><td> <font color="red" size="5px" type="bold">PASSWORD:</font><label class="firstlabel"><%=rs.getString(6)%></label></td></tr>
                                <tr><td><font color="red" size="5px" type="bold">Age:</font><label><%=rs.getString(4)%></label></td></tr>
                                <tr><td> <font color="red" size="5px" type="bold">GENDER:</font><label><%=rs.getString(7)%></label>
                                   </td>
                                </tr>
                              
                                <tr><td> <font color="red" size="5px" type="bold">CONTACT NO.: </font><label><%=rs.getString(2)%></label></td></tr>
                      
                       
                        <div class="right">
                            <tr><td>  <font color="red" size="5px" type="bold"> ADDRESS:</font> <label><%=rs.getString(3)%></label></td></tr>
                        </div>
                            <tr><td>  <font color="red" size="5px" type="bold">WEIGHT:</font> <label><%=rs.getString(8)%></label></td></tr>
                            <tr><td>   <font color="red" size="5px" type="bold">HEIGHT:</font> <label><%=rs.getString(9)%></label></td></tr>

                         <tr><td> <input type="submit" class="button button2" value="Edit"><a href="EditMemberProfile.jsp"</td>
                                   <!--<td> <a href="login.jsp" class="button button2">Login</a></td>--></tr>
                    </table>
        </form>                
                   
</div>
                <!--</div>-->

<% 
             }
}
%>
                         
    </body>
</html>
