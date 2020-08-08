<%-- 
    Document   : latestOffers.jsp
    Created on : Jul 12, 2019, 9:45:05 AM
    Author     : Jyoti Kumari
--%>

<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
       <head>
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
    <link rel="stylesheet" href="assets/css/font-awesome-4.7.0.min.css">
    <link rel="stylesheet" href="assets/fonts/flat-icon/flaticon.css">
    <link rel="stylesheet" href="assets/css/bootstrap-4.1.3.min.css">
    <link rel="stylesheet" href="assets/css/owl-carousel.min.css">
    <link rel="stylesheet" href="assets/css/nice-select.css">
    <link rel="stylesheet" href="assets/css/style.css">
</head>
    <body>
        <form action="latestOffers.jsp" method="post">
         
       <section class="coaches-area section-padding">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-top text-center">
                        <h3>Our Latest Offers</h3>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-3 col-sm-6">
                    <div class="single-coaches mb-5 mb-lg-0">
                        <div class="coaches-img">
                            <img src="assets/images/feature1.jpg" alt="">
                            <div class="hover-state">
                                <ul>
                                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="coaches-footer text-center">
                            <h5><a href="OfferDetails.jsp?id=Fitness360" value="Fitness360">Boxing</a></h5>
                            <h6>Muscle building</h6>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="single-coaches mb-5 mb-lg-0">
                        <div class="coaches-img">
                            <img src="assets/images/feature2.jpg" alt="">
                            <div class="hover-state">
                                <ul>
                                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="coaches-footer text-center">
                            <h5><a href="OfferDetails.jsp?id=FitPass" value="FitPass">Tone muscles</a></h5>
                            <h6>Muscle reducing training</h6>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6 mb-5 mb-sm-0">
                    <div class="single-coaches">
                        <div class="coaches-img">
                            <img src="assets/images/feature3.jpg" alt="">
                            <div class="hover-state">
                                <ul>
                                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="coaches-footer text-center">
                            <h5><a href="OfferDetails.jsp?id=Wei70" value="Wei70">Weightlifting</a></h5>
                            <h6>gym fitness</h6>
                        </div>
                    </div>
                </div>
            </div>
            <br>
            <br>
                <div class="row">  
                 <div class="col-lg-3 col-sm-6">
                    <div class="single-coaches mb-5 mb-lg-0">
                        <div class="coaches-img">
                            <img src="assets/images/ArmStretching.jpg" alt="">
                            <div class="hover-state">
                                <ul>
                                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="coaches-footer text-center">
                            <h5><a href="OfferDetails.jsp?id=Med90" value="Med90">ArmStretching</a></h5>
                            <h6>Muscle building</h6>
                        </div>
                    </div>
                </div>
         
                 <div class="col-lg-3 col-sm-6">
                    <div class="single-coaches mb-5 mb-lg-0">
                        <div class="coaches-img">
                            <img src="assets/images/Bodybuiding.jpg" alt="">
                            <div class="hover-state">
                                <ul>
                                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="coaches-footer text-center">
                            <h5><a href="OfferDetails.jsp?id=Medi500" value="Medi500">Bodybuilding</a></h5>
                            <h6>Muscle building</h6>
                        </div>
                    </div>
                </div>
                
                 <div class="col-lg-3 col-sm-6">
                    <div class="single-coaches mb-5 mb-lg-0">
                        <div class="coaches-img">
                            <img src="assets/images/CrossFitness.jpg" alt="">
                            <div class="hover-state">
                                <ul>
                                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="coaches-footer text-center">
                            <h5><a href="OfferDetails.jsp?id=Crossfit010" value="Crossfit010">CrossFitness</a></h5>
                            <h6>Muscle building</h6>
                        </div>
                    </div>
                </div>
                </div>
        </div>
  <div class="row">
                 <div class="col-lg-3 col-sm-6">
                    <div class="single-coaches mb-5 mb-lg-0">
                        <div class="coaches-img">
                            <img src="assets/images/FreeElectricsWorkout.jpg" alt="">
                            <div class="hover-state">
                                <ul>
                                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="coaches-footer text-center">
                            <h5><a href="OfferDetails.jsp?id=Snap01" value="Snap01">FreeElectricsWorkout</a></h5>
                            <h6>Muscle building</h6>
                        </div>
                    </div>
                </div>
                
                 <div class="col-lg-3 col-sm-6">
                    <div class="single-coaches mb-5 mb-lg-0">
                        <div class="coaches-img">
                            <img src="assets/images/Puhups.jpg" alt="">
                            <div class="hover-state">
                                <ul>
                                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="coaches-footer text-center">
                            <h5><a href="OfferDetails.jsp?id=CureFit" value="CureFit">Pushups</a></h5>
                            <h6>Muscle building</h6>
                        </div>
                    </div>
                </div>
        
        
                 <div class="col-lg-3 col-sm-6">
                    <div class="single-coaches mb-5 mb-lg-0">
                        <div class="coaches-img">
                            <img src="assets/images/Pullups.jpg" alt="">
                            <div class="hover-state">
                                <ul>
                                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="coaches-footer text-center">
                            <h5><a href="OfferDetails.jsp?id=First123" value="First123">Pullups</a></h5>
                            <h6>Muscle building</h6>
                        </div>
                    </div>
                </div>
            
  </div>
             <div class="row">
                 <div class="col-lg-3 col-sm-6">
                    <div class="single-coaches mb-5 mb-lg-0">
                        <div class="coaches-img">
                            <img src="assets/images/RhinoFitness.jpg" alt="">
                            <div class="hover-state">
                                <ul>
                                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                 </div>
                        <div class="coaches-footer text-center">
                            <h5><a href="OfferDetails.jsp?id=RhinoFit01" value="RhinoFit01">RhinoFitness</a></h5>
                            <h6>Muscle building</h6>
                        </div>
                    
                
                
                 <div class="col-lg-3 col-sm-6">
                    <div class="single-coaches mb-5 mb-lg-0">
                        <div class="coaches-img">
                            <img src="assets/images/Stretching.jpg" alt="">
                            <div class="hover-state">
                                <ul>
                                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="coaches-footer text-center">
                            <h5><a href="OfferDetails.jsp?id=SpringDeal" value="SpringDeal">Stretching</a></h5>
                            <h6>Muscle building</h6>
                        </div>
                    </div>
                </div>
            
                
       </div>    
                 
                <div class="col-lg-3 col-sm-6">
                    <div class="single-coaches">
                        <div class="coaches-img">
                            <!--<img src="assets/images/coaches4.jpg" alt="">
                            <div class="hover-state">
                                <ul>
                                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="coaches-footer text-center">
                            <h5>senioer fall</h5>
                            <h6>gym fitness</h6>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
        
           <section class="coaches-area section-padding">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                            </div>
            </div>
            <div class="row">
                <div class="col-lg-3 col-sm-6">
                    <div class="single-coaches mb-5 mb-lg-0">
                        <div class="coaches-img">
                            <img src="assets/images/coaches1.jpg" alt="">
                            <div class="hover-state">
                                <ul>
                                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="coaches-footer text-center">
                            <h5>david williams</h5>
                            <h6>fitness trainer</h6>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="single-coaches mb-5 mb-lg-0">
                        <div class="coaches-img">
                            <img src="assets/images/coaches2.jpg" alt="">
                            <div class="hover-state">
                                <ul>
                                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="coaches-footer text-center">
                            <h5>jacob bare</h5>
                            <h6>weight loss</h6>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6 mb-5 mb-sm-0">
                    <div class="single-coaches">
                        <div class="coaches-img">
                            <img src="assets/images/coaches3.jpg" alt="">
                            <div class="hover-state">
                                <ul>
                                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="coaches-footer text-center">
                            <h5>senioer fall</h5>
                            <h6>gym fitness</h6>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="single-coaches">
                        <div class="coaches-img">
                            <img src="assets/images/coaches4.jpg" alt="">
                            <div class="hover-state">
                                <ul>
                                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="coaches-footer text-center">
                            <h5>senioer fall</h5>
                            <h6>gym fitness</h6>
                        </div>-->
                    </div>
                </div>
            </div>
        </div>
    </section>
        
         <!-- Discount Area Starts -->
    <!--<section class="discount-area section-padding">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h3>25% <span>discount</span></h3>
                    <h4 class="pt-3 pb-5">Subscribe to our newsletter and get <br>a coupon code!</h4>
                    <form action="#">
                        <input type="email" placeholder="Your email" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Your email'" required>
                        <button type="submit" class="button button2">subscribe</button>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <!-- Discount Area End -->

    
    
        </form>
    </body>
</html>
