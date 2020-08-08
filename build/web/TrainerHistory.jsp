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
          if(!cn.isClosed())
            {
                  
        PreparedStatement ps1=cn.prepareStatement("select * from trainer where Email=?;");
        ps1.setString(1,_id);
        
            ResultSet rs=ps1.executeQuery();
             while(rs.next())
                    {
           
       
       
 %>
 <body>
  
     <form action="memeberHistory.jsp" method="post">
 <table align="center">
 <tr>
 <td width="60%">
 <h3><font color="blue" type="bold" size="5px">Email:</font></h3>
 </td>
 <td width="60%">
 <h4> <input type="hidden"  name="name" value="<%=rs.getString(1)%>"><%=rs.getString(1)%></h4>
 </td>
 </tr>
 <tr>
 <td width="60%">
 <h3><font color="blue" type="bold" size="5px">Offer Id:</font></h3>
 </td>
 <td width="60%">
 <h4> <input type="hidden"  name="mobile" value="<%=rs.getString(2)%>"><%=rs.getString(2)%></h4>
 </td>
 </tr>
 <tr>
 <td width="50%">
 <h3><font color="blue" type="bold" size="5px">Offer Name:</font></h3>
 </td>
 <td width="60%">
 <h4> <input type="hidden"  name="address" value="<%=rs.getString(3)%>"><%=rs.getString(3)%></h4>
 </td>
 </tr>
 <tr>
 <td width="60%">
 <h3><font color="blue" type="bold" size="5px">Offer Charges:</font></h3>
 </td>
 <td width="60%">
 <h4> <input type="hidden"  name="email" value="<%=rs.getString(4)%>"><%=rs.getString(4)%></h4>
 </td>
 </tr>
  <tr>
 <td width="60%">
 <h3><font color="blue" type="bold" size="5px">Offer Duration:</font></h3>
 </td>
 <td width="60%">
 <h4> <input type="hidden"  name="age" value="<%=rs.getString(5)%>"><%=rs.getString(5)%></h4>
 </td>
 </tr>
 
 </table>
 </form>
 <%
        }
        }
 %>
 </body>
</html>
