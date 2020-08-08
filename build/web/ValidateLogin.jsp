<%-- 
    Document   : ValidateLogin
    Created on : Feb 5, 2018, 10:26:35 AM
    Author     : aish
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        
                Connection cn=(Connection)application.getAttribute("CONN");
                String _id=request.getParameter("userid");
                String _pass=request.getParameter("password");
                
                
                PreparedStatement ps=cn.prepareStatement("select * from login where LoginId=? and  Password=?");
                ps.setString(1, _id);
                ps.setString(2, _pass);
                
                
                ResultSet rs=ps.executeQuery();
                
                if(rs.next())
                {
                    if(rs.getString(3).equalsIgnoreCase("Admin"))
                    {
                        session.setAttribute("uid", _id);
                        response.sendRedirect("AdminPage.jsp");
                    }
                    else if(rs.getString(3).equalsIgnoreCase("Member"))
                    {
                        session.setAttribute("uid", _id);
                        response.sendRedirect("MemberPage.jsp");
                    }
                    
                     else if(rs.getString(3).equalsIgnoreCase("Trainer"))
                    {
                        session.setAttribute("uid", _id);
                        response.sendRedirect("TrainerPage.jsp");
                    }     
                }
                else
                    {
                        
                        // javax.swing.JOptionPane.showMessageDialog(null,"Invalid Login Id Or Password!" +"\n" +"Retry!!");
                        //out.println("<script type=\"text/javascript\">");
                        //out.println("alert('Invalid login password ......please enter correct email or password');");
                          //      out.println("</script>)");
                         response.sendRedirect("ErrorPage.jsp");
                         //out.println("<script>alert(\"Invalid login password ......please enter correct email or password\");</script>");
                    }
                               
                               
        %>
    </body>
</html>
