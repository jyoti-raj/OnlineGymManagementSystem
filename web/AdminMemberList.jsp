<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<html>
    <head><style>
         body{
            background-color: #ffcccc;
        }
        </style></head>
    
    <%
       // String _fetch = request.getParameter("email");
            Connection cn=(Connection)application.getAttribute("CONN");
             String _id=(String) session.getAttribute("uid");
             if(_id==null){
                 response.sendRedirect("login.jsp");
             }
             else{
          if(!cn.isClosed())
            {
                  
        PreparedStatement ps1=cn.prepareStatement("select * from registration r natural join login l where r.Email=l.LoginId and U_Type='Member'");
        // ps1.setString(1,_fetch);
        
            ResultSet rs=ps1.executeQuery();
             while(rs.next())
                    {
           
       
       
 %>
 <body>
  
     <form action="AdminMemberList.jsp" method="post">
 <table align="center">
 <tr>
 <td width="60%">
 <h3><font color="blue" type="bold" size="5px">Name:</font></h3>
 </td>
 <td width="60%">
 <h4> <input type="hidden"  name="name" value="<%=rs.getString(1)%>"><%=rs.getString(1)%></h4>
 </td>
 </tr>
 <tr>
 <td width="60%">
 <h3><font color="blue" type="bold" size="5px">Mobile:</font></h3>
 </td>
 <td width="60%">
 <h4> <input type="hidden"  name="mobile" value="<%=rs.getString(2)%>"><%=rs.getString(2)%></h4>
 </td>
 </tr>
 <tr>
 <td width="50%">
 <h3><font color="blue" type="bold" size="5px">Address:</font></h3>
 </td>
 <td width="60%">
 <h4> <input type="hidden"  name="address" value="<%=rs.getString(3)%>"><%=rs.getString(3)%></h4>
 </td>
 </tr>
 <tr>
 <td width="60%">
 <h3><font color="blue" type="bold" size="5px">Age:</font></h3>
 </td>
 <td width="60%">
 <h4> <input type="hidden"  name="age" value="<%=rs.getString(4)%>"><%=rs.getString(4)%></h4>
 </td>
 </tr>
 <tr>
 <td width="60%">
 <h3><font color="blue" type="bold" size="5px">Email:</font></h3>
 </td>
 <td width="60%">
 <h4> <input type="hidden"  name="email" value="<%=rs.getString(5)%>"><%=rs.getString(5)%></h4>
 </td>
 </tr>
 <tr>
<td width="60%">
 <h3><font color="blue" type="bold" size="5px">Gender:</font></h3>
 </td>
 <td width="60%">
 <h4> <input type="hidden"  name="gender" value="<%=rs.getString(7)%>"><%=rs.getString(7)%></h4>
  </td>
 </tr>
 <tr>
 <td width="60%">
 <h3><font color="blue" type="bold" size="5px">Height:</font></h3>
 </td>
 <td width="60%">
 <h4> <input type="hidden"  name="height" value="<%=rs.getString(8)%>"><%=rs.getString(8)%></h4>
 </td>
 </tr>
 <tr>
 <td width="60%">
 <h3><font color="blue" type="bold" size="5px">Weight:</font></h3>
 </td>
 <td width="60%">
 <h4> <input type="hidden"  name="weight" value="<%=rs.getString(9)%>"><%=rs.getString(9)%></h4>
 </td>
 </tr>
 <tr>
 <td width="60%">
 <h3><font color="blue" type="bold" size="5px">User_Type:</h3>
 </td>
 <td width="60%">
 <h4> <input type="hidden"  name="u_type" value="<%=rs.getString(11)%>"><%=rs.getString(11)%></h4>
 </td>
 </tr>
 </table>
 </form>
 <%
        }
        }
             }
 %>
 </body>
</html>
