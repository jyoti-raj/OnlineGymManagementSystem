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
    <title>Enroll Offer</title>

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
    <body>    <div class="col-lg-12">
                    <div class="section-top text-center">
                        <h3>Enroll Offfer</h3>
                    </div>
            
        
<!--<div class="col-lg-9">-->
<div class="left">
                    <form action="EnrollPageNext.jsp" method="post">
                         <%
             Connection cn=(Connection)application.getAttribute("CONN");
             String _id=(String) session.getAttribute("uid");
             out.println(_id);
            String  _oid= (String) session.getAttribute("id");
            //out.println(_oid);
              if(!cn.isClosed())
            {
                PreparedStatement ps=cn.prepareStatement("select * from offerdetails where OfferId=?");
                 ps.setString(1,_oid);
            ResultSet rs=ps.executeQuery();
             while(rs.next())
             {
                      

 %>
                         <table align="center" cellpadding="10">
                          <!-- <tr>    
                    <td width="60%">
                        <h4><label><font color="red">Email:</font></label></h4>
                    </td>
                    <td>
                        <label><%=_id%></label></td>
                </tr>-->
                <tr>
                    <td width="60%">
                        <h4><font color="red">Offer Id:</font></h4>
                    </td>
                    <td width="60%">
                       <label><%=rs.getString(1)%></label></td>
                    </td>
                </tr>
                <tr>
                    <td width="50%">
                        <h4><font color="red">Offer Name:</font></h4>
                    </td>
                    <td width="60%">
                        <label><%=rs.getString(2)%></label></td>
                
                </tr>
                <tr>
                    <td width="60%">
                        <h4><font color="red">Offer Duration:</font></h4>
                    </td>
                    <td width="60%">
                         <label><%=rs.getString(3)%></label></td></td>
                
                    </td>
                </tr>
                <tr>
                    
                    <td width="60%">
                        <h4><font color="red">Offer Charges:</font></h4>
                    </td>
                 
                    <td width="60%">
                               <label><%=rs.getString(4)%></label></td>
                </tr>
                <tr>
                <td width="60%">
                        <h4><font color="red">Offer Details:</font></h4>
                    </td>
                    <td width="60%">
                        <label><%=rs.getString(5)%></label>
                    </td>
                </tr>
                <tr><td> 
                        <input type="submit" class="button button2" value="Enroll"><a href="EnrollPageNext.jsp"></a></td></tr>
            </table>
                                   <!--<td> <a href="login.jsp" class="button button2">Login</a></td>--></tr>
                   
        </form>                
                   
</div>
                <!--</div>-->

<% 
             }
}
              %>
    </body>
</html>


