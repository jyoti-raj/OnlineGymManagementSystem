<%-- 
    Document   : Logout
    Created on : Jul 14, 2019, 5:07:06 PM
    Author     : Jyoti Kumari
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
    </head>
    <% 
    session.invalidate();
    response.sendRedirect("index.jsp");
    %>
    <body>
        
    </body>
</html>
