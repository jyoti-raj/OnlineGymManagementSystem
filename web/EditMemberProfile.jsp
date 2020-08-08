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
        <style>
            body{
    background-color:#ffcccc;
}
label{
    font-size:20px;
    color:blue;
}
input[type=text]{
    color:blue;
}
input[type=number]{
    color:blue;
}
textarea{
     color:blue;
}       </style>
    </head>
    
           <%

                Connection cn=(Connection)application.getAttribute("CONN");
        
        String _id=(String) session.getAttribute("uid");
             // String Eid=request.getParameter("userid");
             // out.println(_id);
            // String OId=null;
             // String ON=null;
              //String Details=null;
              //Double charges=0.0;
              //String duration=null; 
         if(!cn.isClosed())
            {
                  
        PreparedStatement ps=cn.prepareStatement("select * from registration where Email=?");
         ps.setString(1,_id);
            ResultSet rs=ps.executeQuery();
             while(rs.next())
             {
        %>
        <form action="UpdateProfile.jsp" method="post">


            <table align="center">
                <tr>
                    <td><h3><u><font color="#003d99" type="bold" size="7px">Your Profile</font></u></h3></td>
                </tr>
                
                <tr>    
                    <td width="60%">
                        <h4><label><font color="red" type="bold" size="7px">Name:</font></label></h4>
                    </td>
                    <td>
                        <label><%=rs.getString(1)%></label></td>
                </tr>
                <tr>
                    <td width="60%">
                        <h4><font color="red" type="bold" size="5px">Email:</font></h4>
                    </td>
                    <td width="60%">
                       <label><%=rs.getString(5)%></label></td>
                    
                </tr>
                <tr>
                    <td width="50%">
                        <h4><font color="red" type="bold" size="5px">Password:</font></h4>
                    </td>
                    <td width="60%">
                              <input type="text" value="<%=rs.getString(6)%>" name="pass"></td>
                
                </tr>
                <tr>
                    <td width="60%">
                        <h4><font color="red" type="bold" size="5px">Contact_No:</font></h4>
                    </td>
                    <td width="60%">
                        <input type="number" value="<%=rs.getString(2)%>" name="mobile"></td></td>
                
                    
                </tr>
                <tr>
                    
                    <td width="60%">
                        <h4><font color="red" type="bold" size="5px">Address:</font></h4>
                    </td>
                    <td><textarea name="message" cols="20" rows="7"  placeholder="Enter Address" name="address"><%=rs.getString(3)%></textarea></td>
                    
                </tr>
                <tr>
                <td width="60%">
                        <h4><font color="red" type="bold" size="5px">Age:</font></h4>
                    </td>
                    <td width="60%">
                        <input type="text" value="<%=rs.getString(4)%>" name="age"></td></td>
                
                    
                </tr>
                 <tr>
                    <td width="60%">
                        <h4><font color="red" type="bold" size="5px">Gender:</font></h4>
                    </td>
                    <td>
                        <label><%=rs.getString(7)%></label></td>
                </tr>
               
                <tr>
                    
                  <td width="60%">
                        <h4><font color="red" type="bold" size="5px">Height:</font></h4>
                    </td>
                    <td width="60%">
                        <input type="text" value="<%=rs.getString(8)%>" name="height"></td></td>
                
                    
                </tr>  
                
                <tr>
                    <td>
                        <h4><font color="red" type="bold" size="5px">Weight:</font></h4>
                    </td>
                    <td>
                        <input type="text" value="<%=rs.getString(9)%>" name="weight"></td></td>
                
                    
                </tr>
                <tr><td> 
                        <input type="submit" class="button button2" value="Update"></td></tr>
            </table>
        </form>
<%
            
             }}
%>
    </body>
</html>

