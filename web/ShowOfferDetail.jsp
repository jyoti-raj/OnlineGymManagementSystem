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
    
    <script language="javascript" type="text/javascript">
        function fetchId(){
            return "http://localhost:8080/onlinegymmanagementsystem/ShowOfferDetail.jsp?OfferId="+document.getElementById("t1").value;
        }
    </script>
    <!-- Required Meta Tags -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <!-- Page Title -->
    <title>Admin Offer</title>

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
    <link rel="stylsesheet" href="assets/css/style.css">
    <script>
        function home()
        {
            window.open("AdminPage.jsp","_self");
        }
       </script>
       <style>
             .button1 {
    background-color: #e83e8c;; 
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
    border-radius: 8px;
}
.button4:hover {
    box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
}
            body{
        background-color:#b3d1ff;
    }
    
       </style>
    </head>
    <body>    <div class="col-lg-12">
                    <div class="section-top text-center">
                        <h3><font color="#003d99" type="bold" size="7px">Our Offers</font></h3>
                    </div>
            
        
<!--<div class="col-lg-9">-->
<div class="left">

      <%
          
          response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
       
        Connection cn=(Connection)application.getAttribute("CONN");
       
              String oid=request.getParameter("offerid");
              String ON=null;
              String Details=null;
              Double charges=0.0;
              String duration=null;
         if(!cn.isClosed())
            {
                  
        PreparedStatement ps=cn.prepareStatement("select * from offerdetails where OfferId=?");
         ps.setString(1,oid);
            ResultSet rs=ps.executeQuery();
             while(rs.next())
             {
                 ON=rs.getString("OName");
                 duration=rs.getString("ODuration");
                 charges=rs.getDouble("OCharges");
                 Details=rs.getString("ODetails");
                 
             }
            }
%>
<table align="center" cellpadding="10">
    <input name="o_id" value="<%=oid%>" hidden>
    <tr>
        <td><font color="red" type="bold" size="5px"> Offer Id:</font> </td>
        <td><label><%=oid%></label></td>
    </tr>
    <tr>
        <td><font color="red" type="bold" size="5px"> Offer Name:</font> </td>
        <td><label><%=ON%></label></td>
    </tr>
    <tr>
        <td> <font color="red" type="bold" size="5px">Offer Duration:</font> </td>
        <td><label><%=duration%></label></td>
    </tr>
    <tr>
        <td><font color="red" type="bold" size="5px">Offer Charges</font></td>
        <td><label><%=charges%></label></td>
    </tr>
    <tr>
        <td><font color="red" type="bold" size="5px">Offer Details</font></td>
        <td>
            <label><%=Details%></label>
        </td>
    </tr>
    <tr>
       
        <td>
            <button type="button" onclick="home()" class="button1 button4">Home</button>
        </td>
    </tr>
    

</table>
</div>
                <!--</div>-->



    </body>
</html>
