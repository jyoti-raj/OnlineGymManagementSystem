<%-- 
    Document   : CalculateBMI
    Created on : Jul 16, 2019, 7:34:25 AM
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
        <% 
        int W= Integer.parseInt(request.getParameter("weight"));
        int H= Integer.parseInt(request.getParameter("height"));
        double C = W/(H*H);
        out.println(C);
        %>
    </body>
</html>
