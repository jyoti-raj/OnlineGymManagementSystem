<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
la<%-- 
    Document   : OfferDetails
    Created on : Jul 17, 2019, 4:18:42 PM
    Author     : Jyoti Kumari
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
  
 <form action="latestOffers.jsp">
           <%
             Connection cn=(Connection)application.getAttribute("CONN");
                String _id=(String) session.getAttribute("uid");
               String _oid=request.getParameter("id");
                session.setAttribute("id", _oid);
                   if(_id==null){
             // out.println("<script>alert(\"For booking any offer login first!!\")</script>");
              response.sendRedirect("login.jsp");
          }
          else{
              response.sendRedirect("EnrollOffer.jsp");
          }
                PreparedStatement ps=cn.prepareStatement("select OfferId,OName,ODuration,OCharges from memberdetails where Email=?");
                ps.setString(1, _oid);
                      

 %>
 </form>
    </body>
</html>
