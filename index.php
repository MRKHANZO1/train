<!DOCTYPE html>
<?php
include 'constants.php';
?>

<head>

    <meta charset="utf-8">

    <meta name="viewport" content="width=devidev-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>BAKAAL EXPRESS</title>


    <!-- [ FONT-AWESOME ICON ] 
        
=========================================================================================================================-->

    <link rel="stylesheet" type="text/css" href="library/font-awesome-4.3.0/css/font-awesome.min.css">


    <!-- [ PLUGIN STYLESHEET ]
        
=========================================================================================================================-->






  
    <link rel="stylesheet" type="text/css" href="library/bootstrap/css/bootstrap-theme.min.css">

    <link rel="stylesheet" type="text/css" href="library/bootstrap/css/bootstrap.css">

    <link rel="stylesheet" type="text/css" href="css/style.css">


    <link rel="stylesheet" type="text/css" href="css/color/themecolor.css">
    <style>
        
.body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
  font-size: 17px;
  color: whitesmoke;
  line-height: 1.6;
}
#showcase {
  background-size: cover;
  background-position: center;
  height: 100vh;
  display: flex;
  flex-direction:column;
  justify-content: center;
  align-items: center;
  text-align: center;
  padding: 0 20px;
}

#showcase h1 {
  font-size: 50px;
line-height: 1.2;
}

#showcase p {
  font-size: 20px;
}

#showcase .button {
  font-size: 18px;
  text-decoration: none;
  color: rgb(34, 11, 241);
  border: rgb(71, 3, 3) 1px solid;
  padding: 10px 20px;
  border-radius: 10px;
  margin-top: 20px; ;
}

#showcase .button:hover {
  background: rgb(175, 18, 18);
  color: #333;
}


    </style>


</head>

<body class="body" style="background-color: #333">

 
    <div class="wrapper">


        <nav class=" nim-menu navbar navbar-default navbar-fixed-top">

            <div class="container">

                <!-- Brand and toggle get grouped for better mobile display -->

                <div class="navbar-header">

                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                        data-target="#bs-example-navbar-collapse-1">

                        <a href="#" class="Toggle-button">

                        <span class="icon-bar"></span>

                        <span class="icon-bar"></span>

                        <span class="icon-bar"></span>

                    </button>

                    <a class="navbar-brand" href="index.php">

                </div>


                <!-- Collect the nav links, forms, and other content for toggling -->

                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">


                    <ul class="nav navbar-nav navbar-left">
                     <a href="#" style="margin-left: 20px; color: darkcyan;"><h3>Bakaal Express</h3></a></ul>

                    <ul class="nav navbar-nav navbar-right">

                       <li><a href="#home"  class="page-scroll" ><h3>Home</h3></a></li>

                       <li><a href="about.php" class="page-scroll"><h3>About</h3></a></li>

                        <li><a href="library/sample.pdf" class="page-scroll"><h3>Map</h3></a></li>

                        <li><a href="pro/signin.php" class="page-scroll"><h3>Book A Train</h3></a></li>

                        <li><a href="pro/adminsignin.php" class="page-scroll"><h3>Admin</h3></a></li>
                    </ul>

                </div>

            </div>
        </nav>



        
        <section class="main-heading" id="home">

            <div class="overlay">

                <div class="container">

                    <div class="row">

                        <div class="main-heading-content col-md-12 col-sm-12 text-center">

                            

                           <p><h1 style="color: darkcyan;">WELCOME TO<br></h1>

                       <nav class="navbar">
                            <div class="brand-title"> 
                                <h1 style="margin-left: 20px; color: darkcyan;">BAKAAL EXPRESS</h1>
                                     </div></p>
                                 <h3>We Provide You An Ultimate Travel Experience</h3>
 <h4><p> Book Bakaal Express tickets from the comfort of your homes.</p></h4>
 <h4><a href="readmore.html"button class="btn btn-custom theme_background_color" class="page-scroll" style="background-color: red; border-radius: 15px ; font-size: 15px; color: aliceblue;">Read More</button></a></nav></h4>

                            <div class="btn-bar">

                                <a href="pro/signin.php" class="btn btn-custom theme_background_color" style="background-color: darkcyan;">Make Reservations Now</a>

                            </div>

                        </div>

                    </div>

                </div>

            </div>


        </section>

        

<section class="about">
 
 
    <div class="main">
      <div class="about-text">
        <h1>About us</h1>
        <h5>Bakaal <span>Express</span></h5>
        <p>
        <b>Our Vision</b><br>
To be a provider of world class rail services.<br>


<b>Integrity & Teamwork</b><br>
We are guided by probity and highest business ethics in carrying 
out our business. We operate as a team and 
fully subscribe to the principles of teamwork as a key attribute to achieving our objectives.


<b>Customer Focus</b><br>
We are committed to achieving the highest levels of customer
 satisfaction through continuous improvement of our services<br>


<b>Professionalism</b><br>
We adhere to impeccable professional and personal standards while conducting the affairs of the Corporation. The Corporation’s services shall be offered in a professional
 manner and with expertise that ensures high quality.<br>


<b>Our Mission</b><br>
To develop an integrated rail network and provide
 efficient and safe rail services.<br>

<b>Our Mandate</b><br>
Provide skills and technology for the railway sector
Provide efficient and effective railway services
Leverage our assets to grow business
Promotion, facilitation and participation in national
 and metropolitan railway network development
        </p>
       
      </div>

    </div>

  </section>
                        <p class="footer-links"><a href="#">Terms of Use</a> <a href="#">Privacy Policy</a></p>

                    </div>

                    <div class="col-md-4"> <small>&copy; <?php echo date('Y'); ?>, Developed By <?php echo $developer_name; ?> </small></div>

                    <div class="col-md-4">

                     

                    </div>

                </div>

            </div>

        </footer>





    </div>


    <script src="library/modernizr.custom.97074.js"></script>

    <script src="library/jquery-1.11.3.min.js"></script>

    <script src="library/bootstrap/js/bootstrap.js"></script>

    <script type="text/javascript" src="js/jquery.easing.1.3.js"></script>


    <script src="library/vegas/vegas.min.js"></script>

    <script src="js/plugins.js"></script>


    <script src="js/typed.js"></script>


    <script src="js/fappear.js"></script>

    <script src="js/jquery.countTo.js"></script>


    <script src="js/owl.carousel.js"></script>

    <script src="js/jquery.magnific-popup.min.js" type="text/javascript"></script>

    <script type="text/javascript" src="js/SmoothScroll.js"></script>


    <script src="js/common.js"></script>

</body>


</html>