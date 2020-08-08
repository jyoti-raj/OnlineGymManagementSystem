<%-- 
    Document   : registrat
    Created on : Jul 12, 2019, 9:54:41 AM
    Author     : Jyoti Kumari
--%>


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
    <title>Admin Offer</title>
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
    <style>
        select {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    box-sizing: border-box;
    border: 2px solid red;
    border-radius: 4px;
}
body{
    background:url(assets/images/Signup.jpg);
}
input[type=text] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    box-sizing: border-box;
    border: 2px solid red;
    border-radius: 4px;
}

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
textArea{
   
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    box-sizing: border-box;
    border: 2px solid red;
    border-radius: 4px;
}


    </style>
    </head>
    <body> 
         <% 
         String _id=(String) session.getAttribute("uid");
             if(_id==null){
                 response.sendRedirect("login.jsp");
             }
          
        %>
    <div class="col-lg-12">
    <div class="section-top text-center">
        <h3><font color="#003d99" type="bold" size="7px">Our Offers</font></h3>
    </div>
<div class="left">
<form action="AdminOfferInsert.jsp">
    
<table align="center" cellpadding="10">
    
    <tr><td><font color="red" size="5px" type="bold"> Offer Id:</font> </td>
     <td>
         <select name="O_Id" id="t1">
     <option value="Select">Select your option</option>
 <option value="Arbi101">Arbi101</option>
 <option value="Med90">Med90</option>
 <option value="Wei70">Wei70</option>
  <option value="Medi500">Medi500</option>
  <option value="Snap01">Snap01</option>
  <option value="RhinoFit">RhinoFit01</option>
  <option value="CureFit">CureFit</option>
  <option value="Fitness360">Fitness360</option>
  <option value="First123">First123</option>
  <option value=FitPass>FitPass</option>
  <option value=Star360>Star360</option>
  <option value=SpringDeal>SpringDeal</option>
  <option value=Fitness360>Fitness360</option>
  <option value=Crossfit010>Crossfit010</option>
  <option value=EquiFit20>EquiFit20</option>

  
 </select></td></tr>
    <tr><td><font color="red" size="5px" type="bold"> Offer Name:</font> </td>
 <td>
 <select name="O_Name">
     <option value="Select">Select your option</option>
 <option value="Aerobics">Aerobics</option>
 <option value="Meditation">Meditation</option>
 <option value="WeightLifting">WeightLifting</option>
 <option value="Mediplus">Mediplus</option>
 <option value="SnapFitness">SnapFitness</option>
 <option value="RhineFit">RhinoFit</option>
 <option value="FitnessNU">FitnessNU</option>
 <option value="JonasFitess">JonasFitess</option>
 <option value="FitnessNU">Fitnessfirst</option>
 <option value="Fit120">Fit120</option>
 <option value="Star01">Star01</option>
 <option value="Spring123">Spring123</option>
 <option value="AnytimeFitness">AnytimeFitness</option>
  <option value="ReebokCrossFit">ReebokCrossFit</option>
  <option value="EquinoxFit01">EquinoxFit01</option>
 
 </select></td></tr>
    <tr><td> <font color="red" size="5px" type="bold">Offer Duration: </font></td><br>
 <td><input type="text" value="" name="o_duration" placeholder="Enter offer duration"></td>
 </tr>

 <tr><td><font color="red" size="5px" type="bold">Offer Charges:</font></td>
<td><input type="text" value="" name="o_charges"placeholder="Enter offer charges"></td></tr>

 <tr><td><font color="red" size="5px" type="bold">Offer Details:</font></td>
 <td><textarea name="o_details" cols="20" rows="7" placeholder = 'Enter Details'"  ></textarea></td></tr>
 
 
<tr><td> <input type="submit" class="button1 button4" name="Operation" value="Insert"></td>
<td> <input type="submit" class="button1 button4" name="Operation" value="Delete"></td>
</table>
</form>
<form action="UpdateOfferDetails.jsp" method="post">
 <table align="center">
     <tr><td><font type="bold" size="5px" color="red">Offer Id:</font></td>
         <td>
             <select name="oid">
     <option value="Select">Select your option</option>
 <option value="Arbi101">Arbi101</option>
 <option value="Med90">Med90</option>
 <option value="Wei70">Wei70</option>
  <option value="Medi500">Medi500</option>
  <option value="Snap01">Snap01</option>
  <option value="RhinoFit">RhinoFit01</option>
  <option value="CureFit">CureFit</option>
  <option value="Fitness360">Fitness360</option>
  <option value="First123">First123</option>
  <option value=FitPass>FitPass</option>
  <option value=Star360>Star360</option>
  <option value=SpringDeal>SpringDeal</option>
  <option value=Fitness360>Fitness360</option>
  <option value=Crossfit010>Crossfit010</option>
  <option value=EquiFit20>EquiFit20</option>

  
             </select></td></tr>
     <%
    String _oid=request.getParameter("oid");
    session.setAttribute("oid",_oid);
    //out.println(_oid);
              
 %>
 
<td><input type="submit" class="button1 button4" name="Operation" value="Edit"></td></tr>

  
 </table> 
</form>


         
          

   
 
</div>
                <!--</div>-->


    </body>
</html>
