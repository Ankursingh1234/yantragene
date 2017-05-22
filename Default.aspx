
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>YANTRAGENE 2K17|Techfest</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
    <meta name="description" content="Yantragene 2k17 is the techfest of FGIET RaeBareli. Yantragene is organised every year.This is second edition of Yantragene" />
    <meta name="keywords" content="Yantragene,TechFest,2017,FGIET,Yantragene17" />
    <meta name="robots" content="default,index,follow" />
    <meta name="author" content="FGIET|Ankur|Abhishek|Shwatang" />
    <%-- //   <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">--%>
    <!-- Favicons -->
    <link rel="shortcut icon" href="images/yantra.png" />
    <!-- CSS -->
    <link href="css/rotate-headlines.css" rel="stylesheet" />

    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/style.css" />

    <link rel="stylesheet" href="css/animate.css" />
    <link rel="stylesheet" href="css/animations.min.css" />
    <link rel="stylesheet" href="css/vertical-rhythm.min.css" />
    <link rel="stylesheet" href="css/owl.carousel.css" />
    <link rel="stylesheet" href="css/magnific-popup.css" />
    <link rel="stylesheet" type="text/css" href="css/normalize.css" />
    <link rel="stylesheet" type="text/css" href="css/demo1.css" />
    <link rel="stylesheet" type="text/css" href="css/style17.css" />
	<link rel="stylesheet" type="text/css" href="css/style11.css" />
    <link rel="stylesheet" href="assets/theme/css/style.css" />
    <style type="text/css">
        .messagealert {
            width: 100%;
            position: fixed;
            top: 0px;
            z-index: 100000;
            padding: 0;
            font-size: 15px;
        }
    </style>
    <script type="text/javascript">
        function ShowMessage(message, messagetype) {
            var cssclass;
            switch (messagetype) {
                case 'Success':
                    cssclass = 'alert-success'
                    break;
                case 'Error':
                    cssclass = 'alert-danger'
                    break;
                case 'Warning':
                    cssclass = 'alert-warning'
                    break;
                default:
                    cssclass = 'alert-info'
            }
            $('#alert_container').append('<div id="alert_div" style="margin: 0 0.5%; -webkit-box-shadow: 3px 4px 6px #999;" class="alert fade in ' + cssclass + '"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><strong>' + messagetype + '!</strong> <span>' + message + '</span></div>');
            //  $("#alert_container").show().delay(5000).fadeOut();
            window.setTimeout(function () { $("#alert_div").alert('close'); }, 4000);
        }
    </script>
     <style type="text/css">
         #sign {
              -webkit-animation-name: example; /* Safari 4.0 - 8.0 */
    -webkit-animation-duration: 4s; /* Safari 4.0 - 8.0 */
    animation-name: example;
    animation-duration: 4s;
     animation-iteration-count: infinite;
         }



         @-webkit-keyframes example {
    0%   {opacity:0.25;}
    5%   {opacity:0.35;}
    10%   {opacity:0.45;}
    15%   {opacity:0.55;}
    20%   {opacity:0.65;}
    25%   {opacity:0.75;}
    30%   {opacity:0.85;}
    35%  {opacity:0.95;}
    40%  {opacity:1;}
    45% {opacity:.95;}
    50%   {opacity:0.85;}
    55%   {opacity:0.75;}
    60%   {opacity:0.65;}
    65%   {opacity:0.55;}
    70%   {opacity:0.45;}
    75%   {opacity:0.35;}
    80%   {opacity:0.25;}
    100%   {opacity:0;}
}

/* Standard syntax */
@keyframes example {
     0%   {opacity:0.25;}
    5%   {opacity:0.35;}
    10%   {opacity:0.45;}
    15%   {opacity:0.55;}
    20%   {opacity:0.65;}
    25%   {opacity:0.75;}
    30%   {opacity:0.85;}
    35%  {opacity:0.95;}
    40%  {opacity:1;}
    45% {opacity:.95;}
    50%   {opacity:0.85;}
    55%   {opacity:0.75;}
    60%   {opacity:0.65;}
    65%   {opacity:0.55;}
    70%   {opacity:0.45;}
    75%   {opacity:0.35;}
    80%   {opacity:0.25;}
    100%   {opacity:0;}
}
     </style>
</head>
<body>
    <form id="form1" runat="server">
       <div class="page-loader">
              <b class="spinner">Loading</b>
       
           <div class="bounceOutRight">
               <img src="images/load.jpg" class="img-responsive center-block" style="width:500px; height:500px; " />
              <%--   <div class="content">
            <svg viewBox="0 0 2000 200">

                <!-- Symbol with text -->
                <symbol id="s-text">
                    <text text-anchor="middle" x="50%" y="50%" dy=".35em" class="text--line">
                        YANTRAGENE'17
                    </text>
                </symbol>

                <!-- Clippath  with text -->
                <clippath id="cp-text">
                    <text text-anchor="middle" x="50%" y="50%" dy=".35em" class="text--line">
                        YANTRAGENE'17
                    </text>
                </clippath>
				

                <!-- Group for shadow -->
                <g clip-path="url(#cp-text)" class="shadow">
                    <rect width="100%" height="100%" class="anim-shape anim-shape--shadow"></rect>
                </g>

                <!-- Group with clippath for text-->
                <g clip-path="url(#cp-text)" class="colortext">
                    <!-- Animated shapes inside text -->
                    <rect width="100%" height="100%" class="anim-shape"></rect>
                    <rect width="80%" height="100%" class="anim-shape"></rect>
                    <rect width="60%" height="100%" class="anim-shape"></rect>
                    <rect width="40%" height="100%" class="anim-shape"></rect>
                    <rect width="20%" height="100%" class="anim-shape"></rect>
                </g>

                <!-- Transparent copy of text to keep patterned text selectable -->
                <use xlink:href="#s-text" class="text--transparent"></use>

            </svg>
			</div>
		<div class="content">      </div>--%>
            <%-- <span class="spinner alt-font">FGIET</span>--%></div>
        </div>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div class="messagealert" id="alert_container">
        </div>
        <div class="modal fade" id="Modal" role="dialog">
            <div class="modal-dialog">

                <div class="modal-content home-section bg-dark" style="background-image: url('images/1.jpg'); font-size: x-large">
                    <div class="modal-header well">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title text-center"><b class="text-warning">REGISTRATION | LOGIN</b></h4>
                    </div>
                    <div class="row">
                        <div class="col-md-offset-2 col-md-8">
                            <div class="modal-body">


                                <ul class="nav nav-tabs">
                                    <li class="active"><a data-toggle="tab" href="#menu1"><b class="text-success">SIGN IN </b></a></li>
                                    <li><a data-toggle="tab" href="#menu2"><b class="text-success">SIGN UP </b></a></li>
                                </ul>

                                <div class="tab-content" style="font-size: x-large">
                                    <div id="menu1" class="tab-pane in active" style="font-size: x-large">

                                        <div class="text-center" style="font-size: x-large">
                                            &nbsp;&nbsp;
                                           
                                                 <div class="form-group" style="font-size: x-large">

                                                     <div class="input-group" style="font-size: x-large">
                                                         <div class="input-group-addon"><i class="fa fa-user"></i></div>
                                                         <asp:TextBox ID="TextBox7" class="form-control" placeholder="User Id" runat="server"></asp:TextBox>
                                                     </div>
                                                 </div>
                                            <div class="form-group">

                                                <div class="input-group">
                                                    <div class="input-group-addon"><i class="fa fa-unlock"></i></div>
                                                    <asp:TextBox ID="TextBox8" class="form-control" TextMode="Password" placeholder="Password" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                            <asp:Button ID="log_in" type="submit" runat="server" class="btn btn-success" OnClick="Log_in_btn_Click" OnClientClick="Log_in_btn_Click" Text="Login" />

                                            <button type="reset" class="btn btn-warning"><i class="fa fa-refresh">Reset</i></button>
                                        </div>

                                    </div>
                                    <div id="menu2" class="tab-pane fade">

                                        <div class="text-center">
                                            &nbsp;&nbsp;
                       
                                       
                                            <div class="form-group">
                                                <%-- <label for="inputUserName">Name</label>  <div class="input-group">--%>
                                                <div class="input-group">
                                                    <div class="input-group-addon"><i class="fa fa-user"></i></div>

                                                    <asp:TextBox ID="TextBox1" class="form-control" ToolTip="Please enter your name" placeholder="Your name" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                            <%--   <div class="form-group">
                                           <label for="inputUserName">Last Name</label>
                                           
                                            <div class="input-group">
                                                <div class="input-group-addon"><i class="glyphicon glyphicon-user"></i></div>

                                                <input class="form-control" placeholder="Your name" type="text" />
                                            </div>
                                        </div> --%>
                                            <div class="form-group">
                                                <%--      <label for="inputUserName">College</label>
                                                --%>
                                                <div class="input-group">
                                                    <div class="input-group-addon"><i class="fa fa-bank"></i></div>

                                                    <asp:TextBox ID="TextBox2" class="form-control" placeholder="College name" runat="server" ToolTip="Enter your college name"></asp:TextBox>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <%--<label for="inputUserName">Email</label>
                                                --%>
                                                <div class="input-group">
                                                    <div class="input-group-addon"><i class="fa fa-envelope"></i></div>

                                                    <asp:TextBox ID="TextBox3" class="form-control" placeholder="Email address" runat="server" TextMode="Email" ToolTip="enter your e-mail address"></asp:TextBox>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <%-- <label for="inputUserName">Phone no</label>
                                                --%>
                                                <div class="input-group">
                                                    <div class="input-group-addon"><i class="fa fa-phone"></i></div>

                                                    <asp:TextBox ID="TextBox4" class="form-control" placeholder="Phone no." runat="server" TextMode="Phone" MaxLength="10" CausesValidation="True" ToolTip="Enter your phone number"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <%--<label for="inputPassword">Password</label>
                                                --%>
                                                <div class="input-group">
                                                    <div class="input-group-addon"><i class="fa fa-lock"></i></div>

                                                    <asp:TextBox ID="TextBox5" class="form-control" TextMode="Password" placeholder="Password" runat="server" ToolTip="Create your password"></asp:TextBox>
                                                </div>
                                                <%-- <asp:RequiredFieldValidator class="form-control" ID="RequiredFieldValidator5" runat="server" ErrorMessage="Password is required" ControlToValidate="TextBox5" Font-Size="Smaller" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" class="form-control" runat="server" ErrorMessage="Password must be 6-12 characters long  and does not contain white spaces" Font-Size="Smaller" ValidationExpression="\S{6,12}" ForeColor="Red" ControlToValidate="TextBox5" Display="Dynamic"></asp:RegularExpressionValidator>--%>
                                            </div>
                                            <div class="form-group">
                                                <%-- <label for="inputPassword">Confirm Password</label>
                                                --%>
                                                <div class="input-group">
                                                    <div class="input-group-addon"><i class="fa fa-lock"></i></div>

                                                    <asp:TextBox ID="TextBox6" placeholder="Confirm Password" TextMode="Password" class="form-control" runat="server" ToolTip="Re-enter your password"></asp:TextBox>
                                                </div>
                                            </div>

                                            <asp:Button ID="reg1" runat="server" type="submit" class="btn btn-warning" OnClick="register_btn_Click" OnClientClick="register_btn_Click" Text="Sign Up" name="submit" />
                                            <button type="reset" class="btn btn-warning" name="reset"><i class="fa fa-refresh"></i>Reset</button>
                                        </div>
                                    </div>

                                </div>

                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>


        <div class="page" id="top">

            <!-- Home Section -->
            <section class="home-section bg-dark" style="background-image: url(images/full-width-images/bg.jpg);" id="home">
                <div class="js-height-full" id="large-header">

                    <!-- Canvas Animation -->
                    <canvas id="demo-canvas"></canvas>

                    <!-- Home Page Content -->
                    <div class="ah-content">
                        <div class="home-content">
                            <div class="home-text animate-init" data-anim-type="fade-in-up-big" data-anim-delay="100">
                                <div class="container">
                                    <div class="row hidden-xs ">
                                        <div class="col-md-6 pull-left">
                                            <a href="#">
                                                <img src="images/csi.png" width="150px" height="150px" class="pull-left" alt="" /></a>
                                        </div>
                                        <div class="col-md-6 pull-right">
                                            <a href="#">
                                                <img src="images/logo.png" width="130px" height="130px" class="pull-right" alt="" /></a>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-10 col-sm-offset-1 col-md-8 col-md-offset-2 hidden-xs">

                                            <!-- Headings -->
                                            <div class="hs-wrap-1">

                                                <div class="hs-line-5 animate-init" data-anim-type="flip-in-top-front" data-anim-delay="800">
                                                    <h1 data-wow-delay="0.5s" data-wow-duration="3s" class="cd-headline letters  hs-line-6 wow fadeInDown"><span class="cd-words-wrapper"><b style="opacity: 1;">Yantragene</b><b style="opacity: 1;">Yantragene</b><b style="opacity: 1;">Yantragene</b><b style="opacity: 1;">Yantragene</b></span></h1>

                                                </div>

                                                <hr class="white animate-init" data-anim-type="fade-in-right-big" data-anim-delay="1200" />
                                                <div class="hs-line-4 mb-20 animate-init" data-anim-type="fade-in-down-big" data-anim-delay="400">
                                                    Genes that encode technology.
                                   
                                                </div>

                                                <%--  <div class="local-scroll animate-init" data-anim-type="fade-in-up-large" data-anim-delay="1600">
                                        
                                        <a href="#about" class="btn btn-mod btn-w btn-circle btn-small">Events</a>
                                        &nbsp;
                                        <a href="#" class="btn btn-mod btn-w btn-circle btn-small" target="_blank">Register</a>
                                        
                                    </div>--%>
                                            </div>
                                            <!-- End Headings -->

                                        </div>
                                    </div>

                                     <div class="row">
                                        <div class="col-sm-10 col-sm-offset-1 col-md-8 col-md-offset-2 visible-xs">

                                            <!-- Headings -->
                                            <div class="hs-wrap-1">

                                                <div class="hs-line-head animate-init" data-anim-type="flip-in-top-front" data-anim-delay="800" style="line-s">
                                                    <h1 data-wow-delay="0.5s" data-wow-duration="3s" class="cd-headline letters  hs-line-6 wow fadeInDown"><span class="cd-words-wrapper"><<b style="opacity: 1;">Yantragene</b><b style="opacity: 1;">Yantragene</b><b style="opacity: 1;">Yantragene</b><b style="opacity: 1;">Yantragene</b></span></h1>

                                                </div>

                                                <hr class="white animate-init" data-anim-type="fade-in-right-big" data-anim-delay="1200" />
                                                <div class="hs-line-4 mb-20 animate-init" data-anim-type="fade-in-down-big" data-anim-delay="400">
                                                    Genes that encode technology.
                                   
                                                </div>

                                                <%--  <div class="local-scroll animate-init" data-anim-type="fade-in-up-large" data-anim-delay="1600">
                                        
                                        <a href="#about" class="btn btn-mod btn-w btn-circle btn-small">Events</a>
                                        &nbsp;
                                        <a href="#" class="btn btn-mod btn-w btn-circle btn-small" target="_blank">Register</a>
                                        
                                    </div>--%>
                                            </div>
                                            <!-- End Headings -->

                                        </div>
                                    </div>

                                </div>
                                <div class="container">
                                    <div class="row">
                                        <div class="col-md-8 col-md-offset-2 ">
                                            <!-- START TIMER -->

                                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                <ContentTemplate>
                                                    <div id="timer" data-animated="FadeIn">
                                                        <div id="days" class="timer_box ">
                                                            <h1>
                                                                <asp:Label ID="lblDays" runat="server" Text="0"></asp:Label></h1>
                                                            <p>Days</p>
                                                        </div>
                                                        <div id="hours" class="timer_box ">
                                                            <h1>
                                                                <asp:Label ID="lblHours" runat="server" Text="0"></asp:Label></h1>
                                                            <p>Hours</p>
                                                        </div>
                                                        <div id="minutes" class="timer_box">
                                                            <h1>
                                                                <asp:Label ID="lblMins" runat="server" Text="0"></asp:Label></h1>
                                                            <p>Minutes</p>
                                                        </div>
                                                        <div id="seconds" class="timer_box ">
                                                            <h1>
                                                                <asp:Label ID="lblSecs" runat="server" Text="0"></asp:Label></h1>
                                                            <p>Seconds</p>
                                                        </div>
                                                    </div>
                                                   <div class="sign" id="sign">

     <img src="portfolio/slide_live.png" width="300" height="300" class="img-responsive center-block" />
                                                 
</div>
                                                      <asp:Timer ID="Timer1" runat="server" OnTick="GetTime" Interval="1000" />
                                                </ContentTemplate>

                                            </asp:UpdatePanel>
                                            <!-- END TIMER -->
                                        </div>
                                    </div>

                                </div>

                            </div>
                        </div>
                    </div>
                    <!-- End Home Page Content -->

                    <!-- Scroll Down -->
                    <div>
                        <div class="local-scroll">
                            <a href="#features3-4" class="scroll-down"><i class="scroll-down-icon"></i><span>Scroll Down</span></a>
                        </div>
                    </div>
                    <!-- End Scroll Down -->

                </div>
            </section>
            <!-- End Home Section -->

            <!-- Navigation panel -->
            <div class="nav-bar-compact clearfix">

                <!-- Logo ( * your text or image into link tag *) -->
                <div class="nbc-logo-wrap local-scroll">
                    <a href="#top" class="nbc-logo">
                        <img src="images/yantra.png" width="80" height="27" alt="" />
                    </a>
                </div>

                <!-- Menu Button -->
                <div class="nbc-menu-button">
                    <i class="nbc-menu-icon"></i>
                </div>

                <!-- Menu Links -->
                <nav class="nbc-menu-wrap">
                    <ul class="nbc-menu-links local-scroll">
                        <li>
                            <a href="#">Home</a>
                        </li>
                        <li>
                            <a href="About.aspx">About</a>
                        </li>
                        <li>
                            <a href="Events.aspx">Events</a>
                        </li>
                        <li>
                            <a href="Gallery.aspx">Gallery</a>
                        </li>
                        <li>
                            <a href="Contact.aspx">Contact</a>
                        </li>
                        <li id="regg" runat="server">
                            <a data-target="#Modal" data-toggle="modal" hidden="hidden">Register/Login</a>
                        </li>
                        <li>
                            <a href="Sponsors.aspx">Sponsors</a>
                        </li>
                        <li id="prof" runat="server">
                            <a href="Usr_lgn.aspx">Profile
                                <div class="fa fa-user"></div>
                            </a>
                        </li>
                    </ul>

                    <!-- Social Links -->
                    <div class="nbc-social-links">
                        <a href="https://www.facebook.com/YANTRAGENE2017/" target="_blank"><i class="fa fa-facebook"></i></a>
                        <a href="#" target="_blank"><i class="fa fa-twitter"></i></a>
                        <a href="#" target="_blank"><i class="fa fa-pinterest"></i></a>
                    </div>
                    <!-- End Social Links -->

                </nav>
            </div>
            <!-- End Navigation panel -->
        </div>


        <section class="mbr-cards mbr-section mbr-section-nopadding mbr-parallax-background home-section bg-dark" id="features3-4" style="background-image: url(images/full-width-images/background2.jpg);">



            <div class="mbr-cards-row row">

                <div class="mbr-cards-col col-xs-12 col-sm-6 col-md-3" style="background-color: rgba(228, 184, 184, 0.44); padding-top: 80px; padding-bottom: 80px;">
                    <div class="container">
                        <a href="Events.aspx">
                            <div class="card cart-block">
                                <div class="card-img">
                                    <div class="pane pane-wide" style="transition-delay: .2s;">
                                        <div class="pane-wrapper">
                                            <div class="pane-image-container">

                                                <img src="images/events.jpg" class="card-img-top" alt="" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-block">
                                    <h3>Events</h3>
                                    <h6><u>Our Events In This TechFest</u></h6>
                                    <asp:HyperLink ID="lnkdwnload" runat="server" NavigateUrl="~/info_event/PicsArt.apk">Download MyApp</asp:HyperLink>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>

                <div class="mbr-cards-col col-xs-12 col-sm-6 col-md-3" style="background-color: rgba(185, 137, 137, 0.42); padding-top: 80px; padding-bottom: 80px;">
                    <div class="container">
                        <a href="Gallery.aspx">
                            <div class="card cart-block">
                                <div class="card-img">
                                    <div class="pane pane-wide" style="transition-delay: .2s;">
                                        <div class="pane-wrapper">
                                            <div class="pane-image-container">

                                                <img src="images/gallery.jpg" class="card-img-top" alt="" />
                                            </div>
                                        </div>
                                    </div>

                                </div>

                                <div class="card-block">
                                    <h3>Gallery</h3>
                                    <h6><u>Our Memories For This TechFest</u></h6>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="mbr-cards-col col-xs-12 col-sm-6 col-md-3" style="background-color: rgba(228, 184, 184, 0.44); padding-top: 80px; padding-bottom: 80px;">
                    <div class="container">
                        <a href="About.aspx">
                            <div class="card cart-block">
                                <div class="card-img">
                                    <div class="pane pane-wide" style="transition-delay: .2s;">
                                        <div class="pane-wrapper">
                                            <div class="pane-image-container">

                                                <img src="assets/images/desktop.jpg" class="card-img-top" alt="" />
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="card-block">
                                    <h3>About</h3>
                                    <h6><u>About Yantragene</u></h6>
                                </div>
                            </div>
                        </a>
                    </div>

                </div>
                <div class="mbr-cards-col col-xs-12 col-sm-6 col-md-3" style="background-color: rgba(185, 137, 137, 0.42); padding-top: 80px; padding-bottom: 80px;">
                    <div class="container">

                        <a href="Contact.aspx">
                            <div class="card cart-block">
                                <div class="card-img">
                                    <div class="pane pane-wide" style="transition-delay: .2s;">
                                        <div class="pane-wrapper">
                                            <div class="pane-image-container">
                                                <img src="images/contactus.jpg" class="card-img-top" alt="" />
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="card-block">
                                    <h3>Contact Us</h3>
                                    <h6><u>For any Query please contact
                                    </u></h6>
                                </div>
                            </div>
                        </a>
                    </div>

                </div>


            </div>
        </section>

        <div runat="server" class="stick-fixed pull-right hidden" id="Ank" style="font-size: x-large" >

            <a class="btn btn-danger hidden-xs " style="font-size: x-large; background-color: rgba(243, 233, 233, 0.49)" data-target="#Modal" data-toggle="modal">Register/Login</a>

        </div>
        <!-- Logotypes Section -->
        <section class="small-section bg-gray-lighter pt-10 pb-10">
            <div class="container relative">

                <div class="row">
                    <div class="col-md-8 col-md-offset-2">

                        <div class="small-item-carousel black owl-carousel mb-0 animate-init" data-anim-type="fade-in-right-large" data-anim-delay="100">

                            <!-- Logo Item -->
                            <div class="logo-item">
                                <img src="images/csi.png" width="100" height="60" alt="" />
                            </div>
                            <!-- End Logo Item -->

                            <!-- Logo Item -->
                            <div class="logo-item">
                                <img src="images/logo.png" width="100" height="60" alt="" />
                            </div>
                            <!-- End Logo Item -->

                            <!-- Logo Item -->
                            <%--                                <div class="logo-item">
                                    <img src="images/portfolio/download%20(3).png" width="100" height="60" alt="" />
                                </div>--%>
                            <!-- End Logo Item -->

                            <!-- Logo Item -->
                            <%--                                <div class="logo-item">
                                    <img src="images/portfolio/download%20(5).png" width="100" height="60" alt="" />
                                </div>--%>
                            <!-- End Logo Item -->

                            <!-- Logo Item -->
                            <%--                                <div class="logo-item">
                                    <img src="images/portfolio/download%20(7).png" width="100" height="60" alt="" />
                                </div>--%>
                            <!-- End Logo Item -->

                            <!-- Logo Item -->
                            <%--                                <div class="logo-item">
                                    <img src="images/portfolio/download%20(8).png" width="100" height="60" alt="" />
                                </div>--%>
                            <!-- End Logo Item -->

                            <!-- Logo Item -->
                            <%--                                <div class="logo-item">
                                    <img src="images/portfolio/images%20(1).png" width="100" height="60" alt="" />
                                </div>--%>
                            <!-- End Logo Item -->

                            <!-- Logo Item -->
                            <%--                                <div class="logo-item">
                                    <img src="images/portfolio/download%20(6).png" width="100" height="60" alt="" />
                                </div>--%>
                            <!-- End Logo Item -->

                        </div>

                    </div>
                </div>

            </div>
        </section>

        <!-- Foter -->
        <footer class="small-section bg-dark footer">
            <div class="container animate-init" data-anim-type="bounce-in-up" data-anim-delay="0">

                <!-- Footer Text -->
                <div class="footer-text">
                    <!-- Copyright -->
                    <div class="footer-copy">
                        <a href="http://fgiet.ac.in" target="_blank">&copy; YANTRAGENE FGIET<span class="number">2017</span></a>.
                       
                    </div>
                    <!-- End Copyright -->

                    <div class="footer-made">
                        Made by<span class="serif">our</span>
                        college <span class="serif">students</span>.
                       
                    </div>

                </div>
                <!-- End Footer Text -->

                <!-- Social Links -->
                <div class="footer-social-links">
                    <div class="social-links tooltip-bot">
                        <a href="https://www.facebook.com/YANTRAGENE2017/" title="Facebook" target="_blank"><i class="fa fa-facebook"></i></a>
                    </div>
                </div>
                <!-- End Social Links -->

            </div>
        </footer>
        <!-- End Foter -->
    </form>
    <!-- JS -->
    <script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
    <script type="text/javascript" src="js/jquery-migrate-1.2.1.min.js"></script>
    <script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/SmoothScroll.js"></script>
    <script type="text/javascript" src="js/jquery.scrollTo.min.js"></script>
    <script type="text/javascript" src="js/jquery.localScroll.min.js"></script>
    <script type="text/javascript" src="js/jquery.ba-hashchange.min.js"></script>
    <script type="text/javascript" src="js/jquery.viewport.mini.js"></script>
    <script type="text/javascript" src="js/jquery.countTo.js"></script>
    <script type="text/javascript" src="js/jquery.appear.js"></script>
    <script type="text/javascript" src="js/jquery.sticky.js"></script>
    <script type="text/javascript" src="js/jquery.parallax-1.1.3.js"></script>
    <script type="text/javascript" src="js/jquery.fitvids.js"></script>
   <%-- <script type="text/javascript" src="js/owl.carousel.min.js"></script>--%>
    <script type="text/javascript" src="js/isotope.pkgd.min.js"></script>
    <script type="text/javascript" src="js/imagesloaded.pkgd.min.js"></script>
    <script type="text/javascript" src="js/jquery.magnific-popup.min.js"></script>
    <!-- Replace test API Key "AIzaSyAZsDkJFLS0b59q7cmW0EprwfcfUA8d9dg" with your own one below 
        **** You can get API Key here - https://developers.google.com/maps/documentation/javascript/get-api-key -->
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAZsDkJFLS0b59q7cmW0EprwfcfUA8d9dg"></script>
    <script type="text/javascript" src="js/gmap3.min.js"></script>
    <script type="text/javascript" src="js/all.js"></script>
    <script type="text/javascript" src="js/contact-form.js"></script>
    <script type="text/javascript" src="js/animations.min.js"></script>
    <!--[if lt IE 10]><script type="text/javascript" src="js/placeholder.js"></script><![endif]-->
    <script src="js/animated-headers/TweenLite.min.js"></script>
    <script src="js/animated-headers/EasePack.min.js"></script>
    <script src="js/animated-headers/rAF.js"></script>
    <script src="js/animated-headers/demo-1.js"></script>

    <%--    <script src="js/animated-headers/demo-2.js"></script>--%>
    <script src="js/main.js"></script>

    <script src="assets/theme/js/script.js"></script>
    <script type="text/javascript">
        //function regn() {
        //    if (document.getElementById('TextBox1').value == "")
        //    {
        //        alert("Please Enter your name");
        //        return false;
        //    }
        //    else if (document.getElementById('TextBox2').value == "")
        //    {
        //        alert("Please Enter your college name");
        //        return false;
        //    }
        //    else if (document.getElementById('TextBox4').value.toString().length < 10) {
        //        alert("Please Enter your valid mobile number");
        //        return false;
        //    }
        //    else {
        //        var pass = document.getElementById('TextBox5');
        //        var pass2 = document.getElementById('TextBox6');
        //        if (pass.toString().localeCompare(pass2.toString()) == 0)
        //        { return true; }
        //        else
        //        { window.alert('Password Not Matched '); return false }
        //    }
        //}
        function initAnimation() {
            var panes = document.querySelectorAll('.pane');
            for (var i = 0; i < panes.length; i++) {
                var element = panes[i];
                // console.log(element, element.childNodes);
                handlePane(element);
            }
        }
        function handlePane(element) {
            element.addEventListener('mousemove', function (event) {
                // console.log('on mousemove')
                var mouseX = event.layerX;
                var mouseY = event.layerY;
                var elementH = element.scrollHeight;
                var elementW = element.scrollWidth;
                var maxRotationAngle = 120;
                function getRotationAngle(cx, cy, x, y, ma) {
                    return ma * Math.sqrt(((cx - x) * (cx - x) + (cy - y) * (cy - y)) / (cx * cx + cy * cy));
                }
                var rotationAngle = getRotationAngle(elementW / 2, elementH / 2, mouseX, mouseY, maxRotationAngle);
                var tr = '';

                tr += 'transform:translateZ(10px) rotate3d(' + -1 * (mouseY - (1.0 * elementH / 2)) + ',' + (mouseX - (1.0 * elementW / 2)) + ',0,' + rotationAngle + 'deg);';

                var transformation = tr;
                transformation += '-webkit-' + tr;
                transformation += '-moz-' + tr;
                transformation += '-ms-' + tr;
                transformation += '-o-' + tr;

                element.childNodes[1].setAttribute('style', transformation);
                // element.childNodes.setAttribute({transform:transformation});
            });
            element.addEventListener('mouseleave', function () {
                element.childNodes[1].setAttribute('style', "");
            });
        }
        initAnimation();
        $("#flexiselDemo3").flexisel({
            visibleItems: 4,
            itemsToScroll: 1,
            autoPlay: {
                enable: true,
                interval: 5000,
                pauseOnHover: true
            }
        });
        
    </script>
</body>
</html>
