
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%
        
        
                
                Connection cn=(Connection)application.getAttribute("CONN");
                 String _id=(String) session.getAttribute("uid");
                String mob=request.getParameter("mobile");
                String add=request.getParameter("message");
                double height=Double.parseDouble(request.getParameter("height"));
                double weight=Double.parseDouble(request.getParameter("weight"));
                  String pass1=request.getParameter("pass");   
                 String age=request.getParameter("age");
                try
                {
                    PreparedStatement ps=cn.prepareStatement("update registration set Mobile=?, Address=?,Age=?,Password=?,height=?,weight=? where Email=?");
                    ps.setString(1,mob);
                    ps.setString(2,add);
                    ps.setString(3,age);
                     ps.setString(4,pass1);
                     ps.setDouble(5,height);
                    ps.setDouble(6,weight);
                     ps.setString(7,_id);
                    ps.executeUpdate();
                
                out.println("Updated");
                         response.sendRedirect("MemberPage.jsp");
               
               
                }
                catch(Exception ex)
                {
                         out.println("<script>alert(\"Not Updated\");</script>");
                    
                }
              
  %>    
       