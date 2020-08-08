<%-- 
    Document   : registration
    Created on : Jul 12, 2019, 9:54:41 AM
    Author     : Jyoti Kumari
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
<head>
    <!-- Required Meta Tags -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <!-- Page Title -->
    <title>Registration Form</title>

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
input[type=text] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    box-sizing: border-box;
    border: 2px solid red;
    border-radius: 4px;
}
input[type=email] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    box-sizing: border-box;
    border: 2px solid red;
    border-radius: 4px;
}
input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    box-sizing: border-box;
    border: 2px solid red;
    border-radius: 4px;
}
textArea{
   
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    box-sizing: border-box;
    border: 2px solid red;
    border-radius: 4px;
}
input[type=number] {
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
input[type=radio]
{
    padding-right: 10px;
}
</style>

    </head>
    <body>    <div class="col-lg-12">
                    <div class="section-top text-center">
                        <h3 ><font color="blue" type="bold" size="7px">Register YourSelf</font></h3>
                    </div>
            
        
<!--<div class="col-lg-9">-->
<div class="left">
                    <form action="registrationconfirm.jsp" method="post">
                         <table align="center" cellpadding="5">
                             <tr><td><font color="red" type="bold" size="5px">NAME:</font></td>
                                <td> <input type="text" placeholder="Enter your name" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your name'" required name="name"></td></tr>
                             <tr><td> <font color="red" type="bold" size="5px">EMAIL:</font></td>
                               <td> <input type="email" placeholder="Enter email address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter email address'" required name="email"></td></tr>
                             <tr><td> <font color="red" type="bold" size="5px">PASSWORD:</font></td><td> <input type="password" placeholder="Enter your password" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your password'" required name="pass"></td></tr>
                             <tr><td><font color="red" type="bold" size="5px">Age: </font></td><td><input type="text"  placeholder="Enter your age"required name="age"></td></tr>
                             <tr><td> <font color="red" type="bold" size="5px">GENDER:</font> </td><td><input type="radio" name="gender"value="Male"><font color="red"type="bold" size="5px">Male</font>
                                     <input type="radio" name="gender" value="Female"><font color="red" type="bold" size="5px">Female</font>
                                </td></tr>
                              
                            <tr><td><font color="red" type="bold" size="5px"> CONTACT NO.: </font></td><td><input type="text" placeholder="Enter number" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter mobile no'" required name="mobile"></td></tr>
                      
                        <!--</div>-->
                       <!-- <div class="right">-->
                            <tr><td>  <font color="red" type="bold" size="5px"> ADDRESS:</font> </td><td><textarea name="message" cols="20" rows="7"  placeholder="Enter Address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Your Address'" required name="address"></textarea></td></tr>
                       <!-- </div>-->
<tr><td><font color="red" type="bold" size="5px">  WEIGHT:</font> </td><td><input type="number" placeholder="Enter your weight in kg" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your height in cm'" required name="height"></td></tr>
<tr><td> <font color="red" type="bold" size="5px">  HEIGHT: </font></td><td><input type="number" placeholder="Enter your height in cm" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your weight in kg'" required name="weight"></td></tr>

                         <tr><td><input type="submit" class="button1 button4" value="submit"></td>
                                  <!-- <td> <a href="login.jsp" class="button1 button4">Login</a></td></tr>-->
                    </table>
                        
                   
</div>
                <!--</div>-->



    </body>
</html>
