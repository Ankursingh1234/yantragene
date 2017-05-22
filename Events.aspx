﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Events.aspx.cs" Inherits="Events" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>YANTRAGENE|Events</title>

    <meta charset="utf-8" />

    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
    <meta name="description" content="Yantragene 2k17 organizes a lot of events including Appmania,Algosense,AirFray,,,, in FGIET Raebareli" />
    <meta name="keywords" content="Yantragene,TechFest,2017,FGIET,Yantragene17,Events" />
    <meta name="robots" content="default,index,follow" />
    <meta name="author" content="FGIET|Ankur|Abhishek|Shwatang" />
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>--%>

    <!-- Favicons -->
    <link rel="shortcut icon" href="images/yantra.png" />
    <!-- CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="css/style-responsive.css" />

    <link rel="stylesheet" href="css/animate.css" />
    <link rel="stylesheet" href="css/animations.min.css" />
    <link rel="stylesheet" href="css/vertical-rhythm.min.css" />
    <link rel="stylesheet" href="css/owl.carousel.css" />
    <link rel="stylesheet" href="css/magnific-popup.css" />
    <link type="text/css" media="screen" rel="stylesheet" href="nominee/awwwards.css" />
    <script src="js/bootstrap.js"></script>
    <script src="js/jquery-3.1.1.js"></script>
    <script src="js/jquery-3.1.1.intellisense.js"></script>
    <link rel="stylesheet" href="css/colors/cyan.css" />
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
                    cssclass = 'alert-success alert-toggle'
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
            window.setTimeout(function () { $("#alert_div").alert('close'); }, 4000);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="messagealert" id="alert_container">
        </div>
        <div class="page" id="top">

            <!-- Home Section -->
            <section class="home-section bg-dark bg-pattern parallax-4" data-background="images/sponsors/ownload.png" id="home">
                <div class="js-height-full" id="large-header">

                    <!-- Canvas Animation -->
                    <canvas id="demo-canvas"></canvas>

                    <!-- Home Page Content -->
                    <div class="ah-content">
                        <div class="home-content">
                            <div class="home-text animate-init" data-anim-type="fade-in-up-big" data-anim-delay="100">
                                <div class="container">

                                    <!-- Headings -->


                                    <div class="hs-line-5 animate-init" data-anim-type="flip-in-top-front" data-anim-delay="800">
                                        Events
                                   
                                    </div>
                                    <br />
                                    <div class="hs-line-6 mb-20">
                                        We are just <strong>creative people</strong>
                                    </div>

                                    <!-- End Headings -->

                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- End Home Page Content -->

                    <!-- Scroll Down -->
                    <div class="local-scroll">
                        <a href="#portfolio" class="scroll-down"><i class="scroll-down-icon"></i><span>Scroll Down</span></a>
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
                            <a href="Default.aspx">Home</a>
                        </li>
                        <li>
                            <a href="About.aspx">About</a>
                        </li>
                        <li>
                            <a href="#">Events</a>
                        </li>
                        <li>
                            <a href="Gallery.aspx">Gallery</a>
                        </li>
                        <li>
                            <a href="Contact.aspx">Contact</a>
                        </li>
                          <li>
                            <a data-target="#details" data-toggle="modal" class="work-ext-link">Schedule</a>
                         
                        </li>
                        <li>
                            <a href="Sponsors.aspx">Sponsors</a>
                        </li>
                        <li id="prof" runat="server">
                            <a href="Usr_lgn.aspx">Profile</a>
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
            <div runat="server" class="pull-right stick-fixed " id="Ank1">

                <a class="btn btn-black-outline" style="background-color: rgba(243, 233, 233, 0.49)" data-target="#Modal" id="reg" data-toggle="modal">Register for event</a>

            </div><br /><br /><br /><br />
           <div runat="server" class="pull-right stick-fixed " id="Div133">

                <a class="btn btn-black-outline" style="background-color: rgba(243, 233, 233, 0.49)" data-target="#mmmm"  data-toggle="modal">Regter for event</a>

            </div>
            <div class="modal">
                <div class="modal-header">
                    Event Registration
                </div>
                <div class="modal-body">
                    <asp:TextBox ID="TextBox1" runat="server" placeholder=""></asp:TextBox>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </div>
                <div class="modal-footer">
                </div>
            </div>
            <!-- End Navigation panel -->
            <a href="#top" class="toTop scroll"><i class="fa fa-angle-up"></i></a>

            <!-- Event Section -->
            <section class="page-section" id="portfolio">
                <div class="relative">


                    <!-- Works Filter -->
                    <div class="container align-center">
                        <div class="works-filter">
                            <%--<a href="#" class="filter active" data-filter="*">All</a>--%>
                            <a href="#" class="filter" data-filter=".Coding"><b>c</b>odefry</a>
                            <a href="#" class="filter" data-filter=".dmsp"><b>d</b>igi-X</a>
                            <a href="#" class="filter" data-filter=".Robotics"><span><b>R</b></span>obotroniX</a>
                            <a href="#" class="filter" data-filter=".Elec"><b>e</b>lectroArena</a>

                            <a href="#" class="filter" data-filter=".Abhiyantical"><b>y</b>antrical</a>
                            <a href="#" class="filter" data-filter=".Gaming"><b>d</b>-box</a>
                            <a href="#" class="filter" data-filter=".exhib"><b>t</b>echBuzz</a>
                        </div>
                    </div>
                    <!-- End Works Filter -->

                    <!-- Works Grid -->
                    <ul class="works-grid work-grid-3 clearfix" id="work-grid">

                        <!-- Work Item (Lightbox) -->
                        <li class="work-item mix photography Coding" style="padding: 2px">
                            <a data-target="#m1" data-toggle="modal" class="work-ext-link">
                                <div class="work-img">

                                    <img src="portfolio/1.png" alt="Work" style="border-radius: 15px;" />

                                </div>
                                <div class="work-intro">
                                    <h3 class="work-title">Algosense</h3>
                                    <div class="work-descr">
                                        Playing with algorithms
                                   
                                    </div>
                                </div>
                            </a>
                        </li>
                        <!-- End Work Item -->

                        <!-- Work Item (External Page) -->
                        <li class="work-item mix dmsp design" style="padding: 2px">
                            <a data-target="#Div6" data-toggle="modal" class="work-ext-link">
                                <div class="work-img">
                                    <img class="work-img" src="portfolio/2.jpg" alt="Work" style="border-radius: 15px;" />
                                </div>
                                <div class="work-intro">
                                    <h3 class="work-title">TexPlore</h3>
                                    <div class="work-descr">
                                        Explore your software
                                   
                                    </div>
                                </div>
                            </a>
                        </li>
                        <!-- End Work Item -->
                        <!-- Work Item (External Page) -->
                        <li class="work-item mix Abhiyantical design" style="padding: 2px">
                            <a data-target="#Div13" data-toggle="modal" class="work-ext-link">
                                <div class="work-img">
                                    <img class="work-img" src="portfolio/cp.jpg" alt="Work" style="border-radius: 15px;" />
                                </div>
                                <div class="work-intro">
                                    <h3 class="work-title">CONTRAPTION</h3>
                                    <div class="work-descr">
                                        Conserve The Energy
                                   
                                    </div>
                                </div>
                            </a>
                        </li>
                        <!-- End Work Item -->
                        <!-- Work Item (External Page) -->
                        <li class="work-item mix Robotics design" style="padding: 2px">
                            <a data-target="#Div20" data-toggle="modal" class="work-ext-link">
                                <div class="work-img">
                                    <img class="work-img" src="portfolio/4.jpg" alt="Work" style="border-radius: 15px;" />
                                </div>
                                <div class="work-intro">
                                    <h3 class="work-title">ROBO SOCCER</h3>
                                    <div class="work-descr">
                                        The Robot War
                                   
                                    </div>
                                </div>
                            </a>
                        </li>
                        <!-- End Work Item -->
                        <!-- SIRC -->
                        <li class="work-item mix exhib design" style="padding: 2px">
                            <a data-target="#Div1000" data-toggle="modal" class="work-ext-link">
                                <div class="work-img">
                                    <img class="work-img" src="portfolio/SIRC.png" alt="Work" style="border-radius: 15px;" />
                                </div>
                                <div class="work-intro">
                                    <h3 class="work-title">SIRC</h3>
                                    <div class="work-descr">
                                        Student Innovative Research Competition
                                   
                                    </div>
                                </div>
                            </a>
                        </li>
                        <!-- Sky Kingdom-->
                        <li class="work-item mix exhib design" style="padding: 2px">
                            <a data-target="#Div2000" data-toggle="modal" class="work-ext-link">
                                <div class="work-img">
                                    <img class="work-img" src="portfolio/Skykingdom.jpg" alt="Work" style="border-radius: 15px;" />
                                </div>
                                <div class="work-intro">
                                    <h3 class="work-title">Sky Kingdom</h3>
                                    <div class="work-descr">
                                        RC Aircraft Competition
                                   
                                    </div>
                                </div>
                            </a>
                        </li>
                        <!-- Work Item (External Page) -->
                        <li class="work-item mix Coding design" style="padding: 2px">
                            <a data-target="#Div27" data-toggle="modal" class="work-ext-link">
                                <div class="work-img">
                                    <img class="work-img" src="portfolio/5.jpg" alt="Work" style="border-radius: 15px;" />
                                </div>
                                <div class="work-intro">
                                    <h3 class="work-title">WEBBIT</h3>
                                    <div class="work-descr">
                                        The Web-page Designing Contest
                                   
                                    </div>
                                </div>
                            </a>
                        </li>
                        <!-- End Work Item -->
                        <!-- Work Item (External Page) -->
                        <li class="work-item mix Robotics design" style="padding: 2px">
                            <a data-target="#Div34" data-toggle="modal" class="work-ext-link">
                                <div class="work-img">
                                    <img class="work-img" src="portfolio/6.jpg" alt="Work" style="border-radius: 15px;" />
                                </div>
                                <div class="work-intro">
                                    <h3 class="work-title">ZUMO WAR</h3>
                                    <div class="work-descr">
                                        Make Your Angry Robot Fight
                                   
                                    </div>
                                </div>
                            </a>
                        </li>
                        <!-- End Work Item -->
                        <!-- Work Item (External Page) -->
                        <li class="work-item mix Abhiyantical design" style="padding: 2px">
                            <a data-target="#Div41" data-toggle="modal" class="work-ext-link">
                                <div class="work-img">
                                    <img class="work-img" src="portfolio/7.jpg" alt="Work" style="border-radius: 15px;" />
                                </div>
                                <div class="work-intro">
                                    <h3 class="work-title">AIR FRAY</h3>
                                    <div class="work-descr">
                                        Make Your Paper Plane Go Long
                                   
                                    </div>
                                </div>
                            </a>
                        </li>
                        <!-- End Work Item -->
                        <!-- Work Item (External Page) -->
                        <li class="work-item mix dmsp design" style="padding: 2px">
                            <a data-target="#Div48" data-toggle="modal" class="work-ext-link">
                                <div class="work-img">
                                    <img class="work-img" src="images/dig.jpg" alt="Work" style="border-radius: 15px;" />
                                </div>
                                <div class="work-intro">
                                    <h3 class="work-title">DIGI CANVA</h3>
                                    <div class="work-descr">
                                        Make your Digital Poster 
                                   
                                    </div>
                                </div>
                            </a>
                        </li>
                        <!-- End Work Item -->
                        <li class="work-item mix Coding design" style="padding: 2px">
                            <a data-target="#Div97" data-toggle="modal" class="work-ext-link">
                                <div class="work-img">
                                    <img class="work-img" src="portfolio/e7edd6b23fa1721c8ef2af9f6932aa33.jpg" alt="Work" style="border-radius: 15px;" />
                                </div>
                                <div class="work-intro">
                                    <h3 class="work-title">GAMEDROID</h3>
                                    <div class="work-descr">
                                    </div>
                                </div>
                            </a>
                        </li>
                        <!-- Work Item (External Page) -->
                        <li class="work-item mix Coding design" style="padding: 2px">
                            <a data-target="#Div55" data-toggle="modal" class="work-ext-link">
                                <div class="work-img">
                                    <img class="work-img" src="portfolio/9.jpg" alt="Work" style="border-radius: 15px;" />
                                </div>
                                <div class="work-intro">
                                    <h3 class="work-title">APPMANIA</h3>
                                    <div class="work-descr">
                                        Making Of Application
                                   
                                    </div>
                                </div>
                            </a>
                        </li>
                        <!-- End Work Item -->
                        <li class="work-item mix exhib design" style="padding: 2px">
                            <a data-target="#Div125" data-toggle="modal" class="work-ext-link">
                                <div class="work-img">
                                    <img class="work-img" src="images/ab.png" alt="Work" style="border-radius: 15px;" />
                                </div>
                                <div class="work-intro">
                                    <h3 class="work-title">Exhibition</h3>
                                    <div class="work-descr">
                                        Displaying your talent
                                   
                                    </div>
                                </div>
                            </a>
                        </li>
                        <!-- Work Item (External Page) -->
                        <li class="work-item mix Robotics design" style="padding: 2px">
                            <a data-target="#Div62" data-toggle="modal" class="work-ext-link">
                                <div class="work-img">
                                    <img class="work-img" src="portfolio/10.jpg" alt="Work" style="border-radius: 15px;" />
                                </div>
                                <div class="work-intro">
                                    <h3 class="work-title">ROBO RACE</h3>
                                    <div class="work-descr">
                                        Make your Robot Go Fastest
                                   
                                    </div>
                                </div>
                            </a>
                        </li>
                        <!-- End Work Item -->
                        <!-- Work Item (External Page) -->
                        <li class="work-item mix Gaming design" style="padding: 2px">
                            <a data-target="#Div69" data-toggle="modal" class="work-ext-link">
                                <div class="work-img">
                                    <img class="work-img" src="portfolio/11.jpg" alt="Work" style="border-radius: 15px;" />
                                </div>
                                <div class="work-intro">
                                    <h3 class="work-title">SURGICAL STRIKE</h3>
                                    <div class="work-descr">
                                        Compete With Counter Strike Players
                                   
                                    </div>
                                </div>
                            </a>
                        </li>
                        <!-- End Work Item -->
                        <!-- BRIDGE-IT -->
                        <li class="work-item mix Abhiyantical design" style="padding: 2px">
                            <a data-target="#Div76" data-toggle="modal" class="work-ext-link">
                                <div class="work-img">
                                    <img class="work-img" src="portfolio/12.jpg" alt="Work" style="border-radius: 15px;" />
                                </div>
                                <div class="work-intro">
                                    <h3 class="work-title">BRIDGE-IT</h3>
                                    <div class="work-descr">
                                        Design your Stable Bridge
                                   
                                    </div>
                                </div>
                            </a>
                        </li>
                        <!-- End Work Item -->
                        <!-- NFS -->
                        <li class="work-item mix Gaming design" style="padding: 2px">
                            <a data-target="#Div50" data-toggle="modal" class="work-ext-link">
                                <div class="work-img">
                                    <img class="work-img" src="portfolio/nfs.png" alt="Work" style="border-radius: 15px;" />
                                </div>
                                <div class="work-intro">
                                    <h3 class="work-title">NFS</h3>
                                    <div class="work-descr">
                                        Play NFS Game
                                   
                                    </div>
                                </div>
                            </a>
                        </li>
                        <!-- End Work Item -->
                        <!--TECHYSHOT -->
                        <li class="work-item mix Abhiyantical design" style="padding: 2px">
                            <a data-target="#Div83" data-toggle="modal" class="work-ext-link">
                                <div class="work-img">
                                    <img class="work-img" src="portfolio/115.jpg" alt="Work" style="border-radius: 15px;" />
                                </div>
                                <div class="work-intro">
                                    <h3 class="work-title">TECHYSHOT</h3>
                                    <div class="work-descr">
                                        Design Your Shot
                                   
                                    </div>
                                </div>
                            </a>
                        </li>
                        <!-- End Work Item -->
                        <!-- Work Item (External Page) -->
                        <li class="work-item mix Elec design" style="padding: 2px">
                            <a data-target="#Div2" data-toggle="modal" class="work-ext-link">
                                <div class="work-img">
                                    <img class="work-img" src="portfolio/121.jpg" alt="Work" style="border-radius: 15px;" />
                                </div>
                                <div class="work-intro">
                                    <h3 class="work-title">EMBEDDEDUINO</h3>
                                    <div class="work-descr">
                                        Design Your Embedded Device
                                   
                                    </div>
                                </div>
                            </a>
                        </li>
                        <!-- End Work Item -->
                        <!-- Work Item (External Page) -->

                        <!-- HYDRAULIC ARM -->
                        <li class="work-item mix Abhiyantical design" style="padding: 2px">
                            <a data-target="#Div104" data-toggle="modal" class="work-ext-link">
                                <div class="work-img">
                                    <img class="work-img" src="portfolio/17.jpg" alt="Work" style="border-radius: 15px;" />
                                </div>
                                <div class="work-intro">
                                    <h3 class="work-title">HYDRAULIC ARM</h3>
                                    <div class="work-descr">
                                        Arm Controlling With Water Pressure
                                   
                                    </div>
                                </div>
                            </a>
                        </li>
                        <!-- End Work Item -->
                        <li class="work-item mix Gaming design" style="padding: 2px">
                            <a data-target="#Div999" data-toggle="modal" class="work-ext-link">
                                <div class="work-img">
                                    <img class="work-img" src="portfolio/bplan.jpg" alt="Work" style="border-radius: 15px;" />
                                </div>
                                <div class="work-intro">
                                    <h3 class="work-title">Plan B</h3>
                                    <div class="work-descr">
                                        Display your business idea
                                   
                                    </div>
                                </div>
                            </a>
                        </li>

                        <!-- ROBO BALLOON FIGHT -->
                        <li class="work-item mix Robotics design" style="padding: 2px">
                            <a data-target="#Div111" data-toggle="modal" class="work-ext-link">
                                <div class="work-img">
                                    <img class="work-img" src="portfolio/3.jpg" alt="Work" style="border-radius: 15px;" />
                                </div>
                                <div class="work-intro">
                                    <h3 class="work-title">ROBO BALLOON FIGHT</h3>
                                    <div class="work-descr">
                                        Burst Your Rival's Balloon First
                                   
                                    </div>
                                </div>
                            </a>
                        </li>
                        <!--Ad frenzy-->
                        <li class="work-item mix Gaming design" style="padding: 2px">
                            <a data-target="#Div555" data-toggle="modal" class="work-ext-link">
                                <div class="work-img">
                                    <img class="work-img" src="portfolio/16.jpg" alt="Work" style="border-radius: 15px;" />
                                </div>
                                <div class="work-intro">
                                    <h3 class="work-title">Ad- frenzy</h3>
                                    <div class="work-descr">
                                        Show your ad madly
                                   
                                    </div>
                                </div>
                            </a>
                        </li>
                        <!-- DCTRONIX -->
                        <li class="work-item mix Elec design" style="padding: 2px">
                            <a data-target="#Div118" data-toggle="modal" class="work-ext-link">
                                <div class="work-img">
                                    <img class="work-img" src="portfolio/19.jpg" alt="Work" style="border-radius: 15px;" />
                                </div>
                                <div class="work-intro">
                                    <h3 class="work-title">DCTRONIX</h3>
                                    <div class="work-descr">
                                        Play With DC Circuit
                                   
                                    </div>
                                </div>
                            </a>
                        </li>




                    </ul>
                    <!-- End Works Grid -->

                </div>
            </section>
             <div class="modal" id="mmmm" runat="server" role="dialog">
                <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header well">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title text-center"><b class="text-warning">Event REGISTRATION</b></h4>
                        </div>
                        <div class="row">
                            <div class="col-md-offset-2 col-md-8">
                                <div class="modal-body">
                                    <!-- Modal -->
                                    <h1>Online Registration closed!!!
                                        <br />
                                        Onspot registration will be done
                                    </h1>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                 </div>
                 

            <!-- registration -->
            <div class="modal" id="Modal" runat="server" role="dialog">
                <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header well">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title text-center"><b class="text-warning">Event REGISTRATION</b></h4>
                        </div>
                        <div class="row">
                            <div class="col-md-offset-2 col-md-8">
                                <div class="modal-body">
                                    <!-- Modal -->

                                    <ul class="nav nav-tabs">
                                        <li class="active"><a data-toggle="tab" href="#menu1"><b class="text-success">INS. </b></a></li>

                                        <li><a data-toggle="tab" href="#menu2"><b class="text-success">CREATE TEAM </b></a></li>
                                        <li><a data-toggle="tab" href="#menu3"><b class="text-success">JOIN TEAM </b></a></li>
                                    </ul>
                                    <div class="tab-content">
                                        <div id="menu1" class="tab-pane in active">
                                            <br />
                                            <div class="text-center">
                                                &nbsp;&nbsp;
                                        <p style="color: #FF0000; font-size: medium">
                                            1.It is compulsory to create a group if a participant wants to participate in any event<br />
                                            2.Team Members will be added by the group leader
                                        </p>

                                            </div>
                                        </div>
                                        <div id="menu2" class="tab-pane fade">
                                            <br />
                                            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                <ContentTemplate>
                                                    <div class="text-center">
                                                        <div class="form-group">
                                                            <div class="input-group">
                                                                <div class="input-group-addon"><i class="glyphicon glyphicon-bullhorn"></i></div>
                                                                <asp:DropDownList ID="DropDownList1" runat="server" DataTextField="EVENT_NAME" DataValueField="E_NO" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" OnInit="DropDownList1_SelectedIndexChanged">
                                                                    <%--<asp:ListItem Value="-1" Selected="True" Text="Select"></asp:ListItem>--%>
                                                                </asp:DropDownList>
                                                            </div>
                                                        </div>
                                                        <div class="form-group" id="DM" runat="server" style="display: none">
                                                            <div class="input-group">
                                                                <div class="input-group-addon"><i class="glyphicon glyphicon-log-in"></i></div>
                                                                <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" AutoPostBack="True" Placeholder="Create Team name" OnTextChanged="TextBox5_TextChanged"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                        <div class="form-group" id="A" runat="server" style="display: none">
                                                            <div class="input-group">
                                                                <div class="input-group-addon"><i class="glyphicon glyphicon-user"></i></div>
                                                                <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server" Placeholder="Team Member 1 ID" AutoPostBack="True" OnTextChanged="TextBox6_TextChanged"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                        <div class="form-group" id="B" runat="server" style="display: none">
                                                            <div class="input-group">
                                                                <div class="input-group-addon"><i class="glyphicon glyphicon-user"></i></div>
                                                                <asp:TextBox ID="TextBox7" CssClass="form-control" runat="server" AutoPostBack="True" OnTextChanged="TextBox7_TextChanged" Placeholder="Team Member 2 ID"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                        <div class="form-group" id="C" runat="server" style="display: none">
                                                            <div class="input-group">
                                                                <div class="input-group-addon"><i class="glyphicon glyphicon-user"></i></div>
                                                                <asp:TextBox ID="TextBox8" CssClass="form-control" runat="server" AutoPostBack="True" OnTextChanged="TextBox8_TextChanged" Placeholder="Team Member 3 ID"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                        <div class="form-group" id="D" runat="server" style="display: none">
                                                            <div class="input-group">
                                                                <div class="input-group-addon"><i class="glyphicon glyphicon-user"></i></div>
                                                                <asp:TextBox ID="TextBox9" CssClass="form-control" runat="server" AutoPostBack="True" OnTextChanged="TextBox9_TextChanged" Placeholder="Team Member 4 ID"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                        <div class="form-group" id="E" runat="server" style="display: none">
                                                            <div class="input-group">
                                                                <div class="input-group-addon"><i class="glyphicon glyphicon-user"></i></div>
                                                                <asp:TextBox ID="TextBox10" CssClass="form-control" runat="server" AutoPostBack="True" OnTextChanged="TextBox9_TextChanged" Placeholder="Team Member 5 ID"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                        <p style="color: #FF0000; font-size: small">Note: The one who will create the team  will be the team leader</p>
                                                        <asp:Button ID="create_team" CssClass="btn bg-info" runat="server" Text="Create" OnClick="create_team_Click" />
                                                        <br />
                                                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label><br />
                                                        <asp:Label ID="Label2" runat="server" Text=""></asp:Label><br />
                                                        <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                                                    </div>
                                                </ContentTemplate>
                                            </asp:UpdatePanel>
                                        </div>
                                        <div id="menu3" class="tab-pane fade">
                                            <div class="text-center">
                                            </div>
                                            <p style="color: #FF0000; font-size: small">Note: Ask your team leader to add you in team</p>

                                        </div>
                                    </div>
                                    <!--modal -->
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>


            <!--algosense-->
            <div class="modal" id="m1" role="dialog" runat="server">
                <div class="modal-dialog" style="width: 96%;">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header well">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title text-center"><b class="text-warning">Algosense</b></h4>
                        </div>
                        <div class="row">
                            <div class="col-md-offset-2 col-md-8">
                                <div class="modal-body">
                                    <!-- Modal -->

                                    <ul class="nav nav-tabs">


                                        <li class="active"><a data-toggle="tab" href="#Div1"><b class="text-success">Description</b></a></li>
                                        <%--                                        <li><a data-toggle="tab" href="#Div2"><b class="text-success">Events Structure</b></a></li>--%>
                                        <li><a data-toggle="tab" href="#Div3"><b class="text-success">Rules and Regulations</b></a></li>

                                        <li><a data-toggle="tab" href="#Div4"><b class="text-success">Judging Criteria</b></a></li>
                                        <li><a data-toggle="tab" href="#Div5"><b class="text-success">Contacts</b></a></li>

                                    </ul>
                                    <div class="tab-content">

                                        <div id="Div1" runat="server" class="tab-pane in active">
                                            <p>In this event, you will be given a set of 6-8 puzzles, which you will need to implement in C language. You have to use GCC compiler. So, we'll be providing you providing a system to work for this perticular event. The puzzeles will have all necessary details in it.</p>
                                        </div>
                                        <%--  <div id="Div2" runat="server" class="tab-pane fade">
                                        </div>--%>
                                        <div id="Div3" runat="server" class="tab-pane fade">
                                            <p>
                                                Time alloted to implement all the puzzles in C language is 3hrs. The decision of the judges will be final and abiding. Each puzzle will have different marks assigned to their solutions. Every team will be provided with a single system which will be having GCC compiler.
                                             Maximum 3 candidates and a minimum of 1 candidate are allowed in a team.
                                            </p>
                                        </div>
                                        <div id="Div4" runat="server" class="tab-pane fade">
                                            <p>The team which will implement more puzzles will be winner. If all the puzzles are implemented by competing teams. Then, decision will be made on the basis of efficiency(both,time and space complexity needed to be considered). As different puzzles have different marks assigned to their solutions. So, if competing teams implement equal number of puzzles(this doesn't includes the case of all puzzles being implemented). Then, the team with heighest marks will be the winner.</p>
                                        </div>
                                        <div id="Div5" runat="server" class="tab-pane fade">
                                            <p>Event Co-ordinator<br />
                                                Md. Arif Siddiqui  :  +91-7275565661</p>
                                        </div>
                                    </div>
                                    <!--modal -->
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>

            <!--Texplore-->
            <div class="modal" id="Div6" role="dialog" runat="server">
                <div class="modal-dialog" style="width: 96%;">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header well">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title text-center"><b class="text-warning">TexPlore</b></h4>
                        </div>
                        <div class="row">
                            <div class="col-md-offset-2 col-md-8">
                                <div class="modal-body">
                                    <!-- Modal -->

                                    <ul class="nav nav-tabs">
                                        <li class="active"><a data-toggle="tab" href="#Div7"><b class="text-success">INTRODUCTION </b></a></li>

                                        <li><a data-toggle="tab" href="#Div10"><b class="text-success">Rules and Regulations</b></a></li>

                                        <li><a data-toggle="tab" href="#Div11"><b class="text-success">Judging Criteria</b></a></li>
                                        <li><a data-toggle="tab" href="#Div12"><b class="text-success">Contacts</b></a></li>

                                    </ul>
                                    <div class="tab-content">
                                        <div id="Div7" runat="server" class="tab-pane in active">
                                            This event involves two phases
                                            <br />
                                            <b>Phase 1</b><br />
                                            Learning the technical details and functionality of a software on your own
                                            <br />
                                            <b>Phase 2</b><br />
                                            Solving the given problem on that software
                                            <s>Note : Problem for phase two will be given after Phase 1</s>
                                        </div>
                                        <div id="Div8" runat="server" class="tab-pane fade">
                                            <p></p>
                                        </div>
                                        <div id="Div9" runat="server" class="tab-pane fade">
                                        </div>
                                        <div id="Div10" runat="server" class="tab-pane fade">
                                            1:Time allowed for Phase 1 and Phase 2 will be 1 hour each<br />
                                            2:There will be restriction on the online mode of learning of software<br />
                                            3:The decision of the judges will be final<br />
                                            4:Maximum 3 candidate and minimum 1 candidate is allowed in a team 
                                        </div>
                                        <div id="Div11" runat="server" class="tab-pane fade">
                                            :Learning aptitude<br />
                                            :Efficient Designing<br />
                                            :Problem solving
                                        </div>
                                        <div id="Div12" runat="server" class="tab-pane fade">
                                            Coordinator:
                                         <br />
                                            Naveen Chaurasia<br />
                                            +91-8604413611
                                        </div>
                                    </div>
                                    <!--modal -->
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <!--ad-mad-->
            <div class="modal" id="Div555" role="dialog" runat="server">
                <div class="modal-dialog" style="width: 96%;">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header well">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title text-center"><b class="text-warning">Ad mad</b></h4>
                        </div>
                        <div class="row">
                            <div class="col-md-offset-2 col-md-8">
                                <div class="modal-body">
                                    <!-- Modal -->

                                    <ul class="nav nav-tabs">
                                        <li class="active"><a data-toggle="tab" href="#Div556"><b class="text-success">INTRODUCTION </b></a></li>

                                        <li><a data-toggle="tab" href="#Div557"><b class="text-success">Contact</b></a></li>


                                    </ul>
                                    <div class="tab-content">
                                        <div id="Div556" runat="server" class="tab-pane in active">
                                            <br />
                                            Advertising is the demand of current market in order to withstand the competition. For comprehensive development one must have exquisite advertising skills.  In this event participants will be given the topic one hour before event commences and each team has to prepare an advertisement upon that topic.
Use of audio/pictures is allowed.
Max no. Of participants in each team is 4.



                                        </div>
                                        <div id="Div557" runat="server" class="tab-pane fade">
                                            Event Coordinator<br />
                                            Shashank srivastava:+91-8604679721<br />
                                            Ragini Singh:+91-9125424417
                                        </div>
                                    </div>
                                    <!--modal -->
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>

            <!--Contraption-->
            <div class="modal" id="Div13" role="dialog" runat="server">
                <div class="modal-dialog" style="width: 96%;">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header well">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title text-center"><b class="text-warning">Contraption</b></h4>
                        </div>
                        <div class="row">
                            <div class="col-md-offset-2 col-md-8">
                                <div class="modal-body">
                                    <!-- Modal -->

                                    <ul class="nav nav-tabs">
                                        <li class="active"><a data-toggle="tab" href="#Div14"><b class="text-success">INTRODUCTION </b></a></li>

                                        <li><a data-toggle="tab" href="#Div15"><b class="text-success">Task </b></a></li>
                                        <li><a data-toggle="tab" href="#Div16"><b class="text-success">Elements Used</b></a></li>
                                        <li><a data-toggle="tab" href="#Div17"><b class="text-success">Rules and Regulations</b></a></li>
                                        <li><a data-toggle="tab" href="#Div188"><b class="text-success">Abstract details</b></a></li>
                                        <li><a data-toggle="tab" href="#Div18"><b class="text-success">Scoring Criteria</b></a></li>
                                        <li><a data-toggle="tab" href="#Div19"><b class="text-success">Contacts</b></a></li>

                                    </ul>
                                    <div class="tab-content">
                                        <div id="Div14" runat="server" class="tab-pane in active">
                                            <p>
                                                <br />
                                                Contraption is the process (Chain Reaction) undergoing number of steps showing different mechanisms and different energy conversions.<br />
                                                Here you can develop a complex contraption by using elementary engineering principles to perform task. </p>
                                        </div>
                                        <div id="Div15" runat="server" class="tab-pane fade">
                                            <p>
                                                <br />
                                                Here you have to develop a complex contraption by using elementary engineering principles to perform different tasks.<br />
                                                In this event, there will be basically three tasks would be performed only by a single input to your machinery. The tasks you have to perform are 
                                                <br />
                                                (i) Drop a ball in the bucket (standard size). 20 points (mandatory)
                                                <br />
                                                (ii) Staple the two papers. 20 points (mandatory) 
                                                <br />
                                                (iii) Turning the pages of a book/notebook (only two) successively. 20 points (mandatory) 
                                                <br />
                                                (iv) Make a parallel chain (first chain must be of dominoes and second chain must be of another material) that will diverge from a same point at the same time and also converges into a single chain at the same time. (25 pts.) [optional]
                                                <br />
                                            </p>
                                        </div>
                                        <div id="Div16" runat="server" class="tab-pane fade">
                                            <p>
                                                <br />
                                                <b>Elements:</b><br />
                                                1- Dominoes
                                                <br />
                                                2- Funnels
                                                <br />
                                                3- Marbles
                                                <br />
                                                4- All kind of balls (equal or smaller size than tennis ball)
                                                <br />
                                                5- Toy cars
                                                <br />
                                                6- String, springs
                                                <br />
                                                7- Buckets
                                                <br />
                                                8- Cups or bowls
                                                <br />
                                                9- Ice cream sticks
                                                <br />
                                                10- Aluminium foil
                                                <br />
                                                11- Plastic containers
                                                <br />
                                                12- Cardboard
                                                <br />
                                                13- Water bottles
                                                <br />
                                                14- Tubes or pipes
                                                <br />
                                                15- Cereal boxes
                                                <br />
                                                16- Batteries, duct tapes to roll
                                                <br />
                                                17- Pulley
                                                <br />
                                                18- Rubber bands
                                                <br />
                                                19- Battery operated Fans 
                                                <br />
                                                NOTE: For support and rigidity of the setup you can use other things (chairs, tables, bricks, etc.) but they shouldn’t contribute to the energy transfer in the chain.
                                            </p>
                                        </div>
                                        <div id="Div17" runat="server" class="tab-pane fade">
                                            <p>
                                                <br />
                                                <b>Rules:</b>
                                                <br />
                                                1. An initial setup time of 90 minutes will be given to each team.
                                                <br />
                                                2. Setup time of 30 minutes will be given before second trial.
                                                <br />
                                                3. Only 2 trials are allowed.
                                                <br />
                                                4. 4 hand touches are allowed including the hand touch at the time of starting of contraption. For further hand touch 5 points will be deducted respectively.
                                                <br />
                                                5. If you fail in first trial then 10% of your total points gained after second successful trial will be deducted.
                                                <br />
                                                6. Time of 15minutes will be given to displaying contraption to the judges.
                                                <br />
                                                7. Less point will be allotted for repeated energy conversion.
                                                <br />
                                                8. Coordinators decision is final and binding to all.<br />
                                            </p>
                                            <p>
                                                <br />
                                                <b>Regulations:</b><br />
                                                1. Objects must remain within the arena. Once the reaction starts nothing should fall out of the arena. 3 points will be deducted if an item (part of setup) falls out of the arena. (10 ft.*10 ft.)
                                                <br />
                                                2. Once the chain starts only one person from the participating team must be within the arena.
                                                <br />
                                                3. Flames and electric appliances (other than fan & batteries) are not allowed.<br />
                                                4. If the setup fails then you will be given only 1 more chance to reset your setup. You have to reset within 40 minutes.  
                                             <br />
                                            </p>

                                        </div>
                                        <div id="Div188" runat="server" class="tab-pane fade">
                                            <p>
                                                <br />
                                                1.  All participants detail with contact no. 
                                                <br />
                                                2. Summary of contraption. 
                                                <br />
                                                3.  Total no. of energy conversion.
                                                <br />
                                                4. Write up of each step.  Submit the abstract to event coordinator before 6th March with suitable details on .<br />
                                            </p>
                                        </div>
                                        <div id="Div18" runat="server" class="tab-pane fade">
                                            <p>
                                                <br />
                                                1. Points will be given for No. of steps in the contraption. 
                                                <br />
                                                2. Points will be given for each energy conversion. 
                                                <br />
                                                3. Less point will be awarded for same energy conversion.  
                                                <br />
                                                4. Points will be given for innovation and complexity and shall be decided by coordinators.
                                                <br />
                                                Note- The rules and regulations are liable to be changed at any point of time to introduce interest and adventures in the competition. In case of any dispute the decision of the event coordinators will be final.<br />
                                            </p>
                                        </div>
                                        <div id="Div19" runat="server" class="tab-pane fade">
                                            Event Co-ordinator:<br />
                                            Ankush Singh Rathore<br />
                                            +91-8273620668<br />
                                            Akash Singh:<br />
                                            +91-8934072875
                                        </div>
                                    </div>
                                    <!--modal -->
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
      <!--Airfray-->
                <div class="modal-dialog" style="width: 96%;">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header well">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title text-center"><b class="text-warning">Air Fray</b></h4>
                        </div>
                        <div class="row">
                            <div class="col-md-offset-2 col-md-8">
                                <div class="modal-body">
                                    <!-- Modal -->

                                    <ul class="nav nav-tabs">
                                        <li class="active"><a data-toggle="tab" href="#Div42"><b class="text-success">INTRODUCTION </b></a></li>

                                        <li><a data-toggle="tab" href="#Div43"><b class="text-success">Event Structure </b></a></li>
                                       
                                        <li><a data-toggle="tab" href="#Div45"><b class="text-success">Rules and Regulations</b></a></li>

                                       
                                        <li><a data-toggle="tab" href="#Div47"><b class="text-success">Contacts</b></a></li>

                                    </ul>
                                    <div class="tab-content">
                                        <div id="Div134" runat="server" class="tab-pane in active">
                                          Flying was just an imagination till mid 18th century but then a legend named <b>OttoLilienthal </b>turned it into reality by introducing the gliders to the world. Afterwards, Gliders found its place in this world as a paper airplane which glides and acts as a way of fun for the children. So, This time just for reminding our early age days, we will make and fly paper plane not only for fun but also for competition. As far we know that it is very challenging to make a paper plane that can travel to longer range but also remain in air for comparatively longer time.
                                        </div>
                                        <div id="Div135" runat="server" class="tab-pane fade">
                                         <br/>  The main objective of this event is to create new designs of paper plane which will have better time of flight, better range as well as better glider stability. The competition will takes place in two rounds with different perspectives. <br/>
<br/>
<b>Round 1</b><br/>
 In this round the participants will be allowed to design a paper plane of any kind of paper material without having any kind of restriction from help of any kind of source they need. The planes will have better time of flight, range and stability will qualify for the next round.<br/>
<br/>
<b>Round 2<b/><br/>
In this round the qualified participants of round-1 will be provided a sheet of chart paper of standard A1 size ,adhesive material and a scissor .In this round the participants will not be allowed to take help of any kind of source and best design will be judged by a panel of judges based on time of flight ,range and stability.
<br/>
                                        </div>
                                        <div id="Div136" runat="server" class="tab-pane fade">
                                        </div>
                                        <div id="Div137" runat="server" class="tab-pane fade">
                                          <b>  Rules on Team structure: </b>
▸An individual or a team of maximum 2 members may participate in the event. <br/>
▸ Members of a team may be from same college or different (UG or PG).<br/>
▸Any number of teams can participate from one college.<br/>
▸ Professionals are not allowed (Only students can participate).<br/>
▸ One of the participant have to fly the plane<br/>
<br/>
<b>Rules:</b>
▸ Each team would be given 2 chances for each of the rounds and the best score is considered.<br/>
▸The timer will start at the moment when the planeleft in the air.<br/>
▸ Awards will be announced based on glide performance.<br/><br/>
<b>General Guidelines:</b><br/>
▸ Pilot can position himself at any point in the arena to fly the plane during the rounds.<br/>
▸ Plane should be built at venue from paper during round 2.<br/>
▸A team member can’t be a part of more than one team.<br/>
▸ Bring your college/student I-Card at the time of competition.<br/>
▸ Any of the above-mentioned rules, if found violated, teams would not be allowed to participate in the competition.<br/>

                                        </div>
                                        <div id="Div138" runat="server" class="tab-pane fade">
                                        </div>
                                        <div id="Div139" runat="server" class="tab-pane fade">
                                           <br /> Khurshid Ahmad <br />
                                         +91- 9760039941<br/>
Shaban Ahmad<br/>+91-9889152966

                                        </div>
                                    </div>
                                    <!--modal -->
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <!--GameDroid-->
            <div class="modal" id="Div97" role="dialog" runat="server">
                <div class="modal-dialog" style="width: 96%;">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header well">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title text-center"><b class="text-warning">GameDroid</b></h4>
                        </div>
                        <div class="row">
                            <div class="col-md-offset-2 col-md-8">
                                <div class="modal-body">
                                    <!-- Modal -->

                                    <ul class="nav nav-tabs">
                                        <li class="active"><a data-toggle="tab" href="#Div98"><b class="text-success">INTRODUCTION </b></a></li>

                                        <li><a data-toggle="tab" href="#Div99"><b class="text-success">Rules and Regulations</b></a></li>
                                        <li><a data-toggle="tab" href="#Div100"><b class="text-success">Contacts</b></a></li>

                                    </ul>
                                    <div class="tab-content">
                                        <div id="Div98" runat="server" class="tab-pane in active">
                                            Coding Game application
                                        </div>
                                        <div id="Div99" runat="server" class="tab-pane fade">
                                            <b>Round 1: </b>
                                            <br />
                                            •	Time-30 minutes<br />
                                            •	Total number of questions 25
                                            <br />
                                            •	Only those teams will qualify for next round that will give minimum 10 correct answers<br />
                                            •	20 minutes for evaluating result.<br />
                                            <br />

                                            <b>Round 2:</b><br />
                                            •	Task will be explained within 10 minutes<br />
                                            •	45 minutes will be provided for the completion of task<br />
                                            •	Marking based on-<br />
                                            (A)Given requirements should be fulfilled<br />
                                            (B)Speed<br />
                                            (C)Self innovation<br />
                                            (D)Look and feel<br />
                                            •	Team will be automatically disqualified if task is not performed within the time limit.<br />
                                            •	35 minutes for evaluating result.<br />

                                            <b>Round 3:</b><br />
                                            •	Time-60 minutes<br />
                                            •	Evaluation criteria is same as round-2<br />
                                            •	Those teams that complete their task first within the given time will be declared as the winners.<br />
                                            •	Winners position will be decided as per time taken by them<br />

                                        </div>
                                        <div id="Div100" runat="server" class="tab-pane fade">
                                            Coordinator: Satish  Yadav<br />
                                            +91-7080727650
                                        </div>
                                        <div id="Div101" runat="server" class="tab-pane fade">
                                        </div>
                                        <div id="Div102" runat="server" class="tab-pane fade">
                                        </div>
                                        <div id="Div103" runat="server" class="tab-pane fade">
                                        </div>
                                        <div id="Div110" runat="server" class="tab-pane fade">
                                        </div>
                                    </div>
                                    <!--modal -->
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>

            <!--Exhibition-->
            <div class="modal" id="Div125" role="dialog" runat="server">
                <div class="modal-dialog" style="width: 96%;">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header well">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title text-center"><b class="text-warning">Exhibition</b></h4>
                        </div>
                        <div class="row">
                            <div class="col-md-offset-2 col-md-8">
                                <div class="modal-body">
                                    <!-- Modal -->

                                    <ul class="nav nav-tabs">
                                        <li class="active"><a data-toggle="tab" href="#Div126"><b class="text-success">INTRODUCTION </b></a></li>

                                        <li><a data-toggle="tab" href="#Div127"><b class="text-success">Rules and Regulations</b></a></li>
                                        <li><a data-toggle="tab" href="#Div128"><b class="text-success">Contacts</b></a></li>

                                    </ul>
                                    <div class="tab-content">
                                        <div id="Div126" runat="server" class="tab-pane in active">
                                            The Tech Buzz – a two day Exhibition has a unique focus on the Practical use of Emerging Technologies. We Explore, Educate & Engage our audience in the deeper solutions new tech brings a business or enterprise, which supports the Indian Government Initiative <b>"Make In INDIA"</b> for brighter future of country youth through the implementation of Emerging Technologies.
                                            <br />
                                            Over the two days the show will feature an interactive expo, with a focus on creating real life experiences of the tech for the audience, alongside our Emerging Tech stage the perfect opportunity for those looking to explore the latest technology solutions and innovations.
                                        </div>
                                        <div id="Div127" runat="server" class="tab-pane fade">
                                            Submit your projects/ideas abstract on <b>yantragene17@gmail.com</b> which includes the Subject: <b>Yantra-exhi [your yantra id]: [your project name]</b> till 28th February 2017. 
                                            <br />
                                            Maximum no. of participants: 3

                                        </div>
                                        <div id="Div128" runat="server" class="tab-pane fade">
                                            Nishank Jain
                                            <br />
                                            +91-727547237
                                        </div>
                                        <div id="Div129" runat="server" class="tab-pane fade">
                                        </div>
                                        <div id="Div130" runat="server" class="tab-pane fade">
                                        </div>
                                        <div id="Div131" runat="server" class="tab-pane fade">
                                        </div>
                                        <div id="Div132" runat="server" class="tab-pane fade">
                                        </div>
                                    </div>
                                    <!--modal -->
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>

            <!--Plan B-->

            <div class="modal" id="Div999" role="dialog" runat="server">
                <div class="modal-dialog" style="width: 96%;">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header well">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title text-center"><b class="text-warning">Plan B</b></h4>
                        </div>
                        <div class="row">
                            <div class="col-md-offset-2 col-md-8">
                                <div class="modal-body">
                                    <!-- Modal -->

                                    <ul class="nav nav-tabs">
                                        <li class="active"><a data-toggle="tab" href="#Div991"><b class="text-success">INTRODUCTION </b></a></li>

                                        <li><a data-toggle="tab" href="#Div992"><b class="text-success">Event Structure</b></a></li>

                                        <li><a data-toggle="tab" href="#Div993"><b class="text-success">Rules And Regulations</b></a></li>
                                        <li><a data-toggle="tab" href="#Div994"><b class="text-success">Contacts</b></a></li>

                                    </ul>
                                    <div class="tab-content">
                                        <div id="Div991" runat="server" class="tab-pane in active">
                                            <br />
                                            Business plan is an event the comprehensive skill of the participant along with the touch of market knowledge. In this event Participant will have to prove their business mettle by presenting their infront of judges. Most innovative and feasible plan will be awarded. 
                                            <br />

                                        </div>
                                        <div id="Div992" runat="server" class="tab-pane fade">
                                            <p>
                                                Participants have to send their abstracts to the website of yantragene. Selected abstracts will be allowed to participate in the event. Students will be given time for presentation of their idea followed by 5 min question answer round by judges.
                                            </p>
                                        </div>
                                        <div id="Div993" runat="server" class="tab-pane fade">
                                            <p>
                                                1)Application,Innovation and Presentaton will be judgemental criteria.
                                                <br />
                                                2) Paricipants have to send their abstacts of 100 words on the yantragene website. 
                                                <br />
                                        </div>
                                        <div id="Div994" runat="server" class="tab-pane fade">
                                            Osama Mahmood
                                            <br />
                                            +91-9839485787
                                        </div>

                                    </div>
                                    <!--modal -->
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <!--SIRC-->
            <div class="modal" id="Div1000" role="dialog" runat="server">
                <div class="modal-dialog" style="width: 96%;">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header well">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title text-center"><b class="text-warning">SIRC</b></h4>
                        </div>
                        <div class="row">
                            <div class="col-md-offset-2 col-md-8">
                                <div class="modal-body">
                                    <!-- Modal -->

                                    <ul class="nav nav-tabs">
                                        <li class="active"><a data-toggle="tab" href="#Div1001"><b class="text-success">INTRODUCTION </b></a></li>

                                        <li><a data-toggle="tab" href="#Div1002"><b class="text-success">Problem Statement </b></a></li>
                                        <li><a data-toggle="tab" href="#Div1003"><b class="text-success">Event Structure</b></a></li>
                                        <li><a data-toggle="tab" href="#Div1004"><b class="text-success">Rules and Regulations</b></a></li>
                                        <li><a data-toggle="tab" href="#Div1005"><b class="text-success">Eligibility Criteria</b></a></li>

                                        <li><a data-toggle="tab" href="#Div1006"><b class="text-success">Contacts</b></a></li>

                                    </ul>
                                    <div class="tab-content">
                                        <div id="Div1001" runat="server" class="tab-pane in active">
                                            Students Innovative Research Competition (SIRC) aims at tapping this infinite potential of the human mind to generate an idea, which when given a proper platform, can transform into path breaking discovery. The idea may be anything presented in form of a working model, demonstrative prototype or soft project in front of eminent judges.
                                        </div>
                                        <div id="Div1002" runat="server" class="tab-pane fade">
                                            This event will be held in two different categories are
                                            <br />
                                            1.Hard Project Category-<br />
                                            Those team have working prototype model will fall in this category.  
                                            <br />
                                            2.Soft Project Category- 
                                            <br />
                                            Those team have only demonstrative prototype or soft copy of an idea will fall in this category<br />

                                        </div>
                                        <div id="Div1003" runat="server" class="tab-pane fade">
                                            <b>Submission of Abstract</b><br />
                                            In prelims round team will submit their abstract (not more than 300 words) with suitable pictures and explanatory video. Team can email their abstract on Email <a href="mailTo: yantragenesirc17@gmail.com">yantragenesirc17@gmail.com</a> before 5th march 2017.<br />
                                            <b>Final Presentation</b><br />
                                            Top teams will be invited for live presentation of their ideas with working prototype model (in Hard Project Category) or soft projects in front of the evaluation committee.

                                        </div>
                                        <div id="Div1004" runat="server" class="tab-pane fade">
                                            •	Each team can have a maximum 5 participants.<br />
                                            •	All the members of the team have to registered for the event through our website www.yantragene.com<br />
                                            •	Registration fees for the Hard project category is  ₹300 per team and for soft project category is ₹200 per team.<br />
                                            •	A team may consist of students from different engineering collage.<br />
                                            •	Certificates of excellence will be awarded to the top 3 teams.<br />
                                            •	Decision of evaluation committee will be final and binding to all.<br />
                                            <br />
                                            <b>Hardware model Specification</b><br />
                                            Hardware prototype model should be working and you have to display the working phenomena in front of evaluation committee.<br />

                                        </div>
                                        <div id="Div1005" runat="server" class="tab-pane fade">
                                            Competition is open to all students of any approved Technical / Engineering Institution within India.      
                                        </div>
                                        <div id="Div1006" runat="server" class="tab-pane fade">
                                            For any queries contact to:
                                            <br />
                                            Hemant Singh: 8924853915
                                     <br />
                                            Ravindra Kumar :7007415654                                           

                                        </div>

                                    </div>
                                    <!--modal -->
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>

            <!--Sky Kingdom-->
            <div class="modal" id="Div2000" role="dialog" runat="server">
                <div class="modal-dialog" style="width: 96%;">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header well">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title text-center"><b class="text-warning">Sky Kingdom</b></h4>
                        </div>
                        <div class="row">
                            <div class="col-md-offset-2 col-md-8">
                                <div class="modal-body">
                                    <!-- Modal -->

                                    <ul class="nav nav-tabs">
                                        <li class="active"><a data-toggle="tab" href="#Div2001"><b class="text-success">INTRODUCTION </b></a></li>


                                        <li><a data-toggle="tab" href="#Div2003"><b class="text-success">Event Structure</b></a></li>
                                        <li><a data-toggle="tab" href="#Div2004"><b class="text-success">Rules and Regulations</b></a></li>

                                        <li><a data-toggle="tab" href="#Div2006"><b class="text-success">Contacts</b></a></li>

                                    </ul>
                                    <div class="tab-content">
                                        <div id="Div2001" runat="server" class="tab-pane in active">
                                            The competition involves designing of RC aircraft . The competition provides a platform to compete with different competitor, with the best stable design performing  the rolling and yawing. The competition is launched with the vision to provide a unified platform for students interested in aerospace and related engineering disciplines - to demonstrate their aero-modeling expertise.
                                        </div>
                                        <div id="Div2003" runat="server" class="tab-pane fade">
                                            <b>Format of competition:</b><br />
                                            The competition requires the participants to design and fabricate a RC aircraft (no readymade planes are allowed) and perform a set of manoeuvers like yawing and rolling.Every team should bring their own Propellers, Motors, ESC and Servos with them. Receiver and Transmitter are provided by the organising team. The event will be conducted at the ground of the FGIET and participants will need to bring their aircraft and all necessary equipment to this venue. The arena will be an open ground. There will be two rounds of the competition.
                                            <br />
                                            <br />
                                            ▸ Designing<br />
                                            ▸ Stability<br />

                                            <b>Model specification:</b><br />
                                            ▸ fusladge and wing dimensions provided on the time of designing round.<br />
                                            ▸ Propeller diameter should not be greater than 10 inches.<br />
                                            ▸ Only electrical motors are allowed. The use of IC engines or any other means of providing thrust is prohibited.<br />
                                            ▸ Use of gyroscopes (gyros) and programming assistance in receivers is prohibited.<br />


                                        </div>
                                        <div id="Div2004" runat="server" class="tab-pane fade">
                                            Rules on Team structure:
                                            <br />
                                            ▸ Maximum of 5 members in a team.
                                            <br />
                                            ▸ Each and every member of the team have to register for the event through our website
    www.yantragene.com
                                            <br />
                                            ▸ Registration fees for the event is ₹500 per team<br />
                                            ▸ Members of a team may be from same college or different (UG or PG).<br />
                                            ▸ Any number of teams can participate from one college.<br />
                                            ▸ Professionals are not allowed (Only students can participate).<br />
                                            ▸ One of the team members should fly the aircraft.<br />
                                            <br />

                                            Rules:<br />
                                            ▸ Each team would be given 2 chances for each of the rounds and the best score is considered.<br />
                                            ▸ The timer will start from the moment the aircraft is in the air.<br />
                                            ▸ Awards will be announced based on aircraft performance.<br />
                                            <br />


                                            General Guidelines:<br />
                                            ▸ Receivers installed in the aircraft have to be in 'receiver mode only'.<br />
                                            ▸ All the systems (Servos, motor, etc.) will be checked by organizers for functionality before the competition. If found not working, teams will be dismissed from the competition.<br />
                                            ▸ Pilot can position himself at any point in the arena to fly the aircraft during the rounds.<br />
                                            ▸ Plane should be built at venue from scratch and not purchased models.<br />
                                            ▸ A team member can’t be a part of more than one team.<br />
                                            ▸ Bring your college/student I-Card at the time of competition.<br />
                                            ▸ Any of the above-mentioned rules, if found violated, teams would not be allowed to participate in the competition.<br />


                                        </div>
                                        <div id="Div2006" runat="server" class="tab-pane fade">
                                            For any other queries contact on the information given below:<br />
                                            VISHWAJEET TIWARI          
                                            <br />
                                            Mo-88967409118        
                                            <br />
                                            <a href="mailTo:tiwarivishwajeet29@gmail.com ">tiwarivishwajeet29@gmail.com </a>
                                            <br />
                                            <br />
                                            SRIJAN KATIYAR<br />
                                            Mo-8090414046<br />
                                            <a href="mailTo:srijankatiyar555@gmail.com">srijankatiyar555@gmail.com</a><br />

                                        </div>


                                    </div>
                                    <!--modal -->
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>

            <!--Robosoccer-->
            <div class="modal" id="Div20" role="dialog" runat="server">
                <div class="modal-dialog" style="width: 96%;">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header well">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title text-center"><b class="text-warning">Robo Soccer</b></h4>
                        </div>
                        <div class="row">
                            <div class="col-md-offset-2 col-md-8">
                                <div class="modal-body">
                                    <!-- Modal -->

                                    <ul class="nav nav-tabs">
                                        <li class="active"><a data-toggle="tab" href="#Div21"><b class="text-success">INTRODUCTION </b></a></li>

                                        <li><a data-toggle="tab" href="#Div22"><b class="text-success">Rules and Regulations</b></a></li>

                                        <li><a data-toggle="tab" href="#Div23"><b class="text-success">Contacts</b></a></li>

                                    </ul>
                                    <div class="tab-content">
                                        <div id="Div21" runat="server" class="tab-pane in active">
                                            <p>
                                                Fever of soccer is blowing everybody’s mind these days so why should technocrats be left behind to showcase their sporting skills? We at YANTRAGENE are giving an opportunity to the electronics enthusiasts to prove their talent without using physical strength but by guiding their ROBOTS to score goals for them. So,YANTRAGENE 2k17 comes up with ROBO Soccer…
                                                <br />
                                                So, make the move…….. 
                                                <br />
                                                <br />
                                                <b>Reference to learn:-  </b>
                                                <br />

                                                <a href="https://m.youtube.com/watch?v=kewza7RyKMQ" target="_blank">https://m.youtube.com/watch?v=kewza7RyKMQ</a>
                                                <br />
                                                <a href="https://m.youtube.com/watch?v=TE1qY4_GEwK" target="_blank">https://m.youtube.com/watch?v=TE1qY4_GEwK</a>
                                                <br />
                                            </p>
                                        </div>
                                        <div id="Div22" runat="server" class="tab-pane fade">
                                            <p>
                                                <b>Registration Fee:- INR 200 per person.It will be submitted on the spot. </b>
                                                <br />
                                                <br />
                                                Following are the rules for the event. 
 The maximum and minimum no. of participants allowed in a team are 6 and 3 respectively.A maximum of 4 bots are allowed in each team.
                                                <br />
                                                 At a time, 3 robots will be allowed by a team in the soccer arena.Remaining bots if any, will be in standby.
                                                <br />
                                                 Participants from different colleges can form a team. More than one team is acceptable from a particular college but one student cannot be a part of more than one team in one event.<br />
                                                 Dimensions of robot must not exceed 35x35x35cm (lxbxh).<br />
                                                 The weight of robot must not exceed 1.5kg.
                                                <br />
                                                 The thickness of the wheel used in robot must not exceed 3cm.
                                                <br />
                                                 Robot must be manual, autonomous robots are not allowed.<br />
                                                 2 out of 3 robots must be wireless and remaining 1 can be wired or wireless but if wired it will be allowed as goal keeper only and it should not block the way of other robots.
                                                <br />
                                                 The power supply used by a robot must not exceed 18 Volts and 4 Amperes, so try to use small motors to avoid large current consumption i.e. BO motors.<br />
                                                 The soccer match will be played in two halves of 5 minutes each and change or replacement of bots is permissible during this time only.<br />
                                                 Every team can use maximum 2 timeouts of 2 minutes each.
                                                <br />
                                                 If Robot damages the arena,either it will be marked as disqualified or the team will be given negative points.
                                                <br />
                                                 If the match ends up in tie, 2 extra minutes will be provided.
                                                <br />
                                                 If there is violation of any of the rules by any team, then that team will be disqualified.<br />
                                                 The arena size will be approx.- 2mx3m.
                                                <br />

                                                <br />
                                            </p>
                                        </div>
                                        <div id="Div23" runat="server" class="tab-pane fade">
                                            1)Sakshi Srivastava:
                                            <br />
                                            +91-7275811058
                                            <br />

                                            2)Anupriya Shukla
                                            <br />
                                            9169755919
                                            <br />
                                            Anu.palak1995@gmail.com
                                            <br />
                                            <br />
                                        </div>
                                        <div id="Div24" runat="server" class="tab-pane fade">
                                        </div>
                                        <div id="Div25" runat="server" class="tab-pane fade">
                                        </div>
                                        <div id="Div26" runat="server" class="tab-pane fade">
                                        </div>
                                    </div>
                                    <!--modal -->
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>

            <!--webit-->
            <div class="modal" id="Div27" role="dialog" runat="server">
                <div class="modal-dialog" style="width: 96%;">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header well">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title text-center"><b class="text-warning">Webbit</b></h4>
                        </div>
                        <div class="row">
                            <div class="col-md-offset-2 col-md-8">
                                <div class="modal-body">
                                    <!-- Modal -->

                                    <ul class="nav nav-tabs">
                                        <li class="active"><a data-toggle="tab" href="#Div28"><b class="text-success">INTRODUCTION </b></a></li>

                                        <li><a data-toggle="tab" href="#Div31"><b class="text-success">Rules and Regulations</b></a></li>

                                        <li><a data-toggle="tab" href="#Div32"><b class="text-success">Judging Criteria</b></a></li>
                                        <li><a data-toggle="tab" href="#Div33"><b class="text-success">Contacts</b></a></li>

                                    </ul>
                                    <div class="tab-content">
                                        <div id="Div28" runat="server" class="tab-pane in active">
                                            <br />
                                            <b>A web Page designing contest </b>
                                        </div>
                                        <div id="Div29" runat="server" class="tab-pane fade">
                                        </div>
                                        <div id="Div30" runat="server" class="tab-pane fade">
                                        </div>
                                        <div id="Div31" runat="server" class="tab-pane fade">
                                            1. BOOTSTRAP NOT ALLOWED<br />
                                            2.CODING WILL BE ON FRONTEND EITHER ON NOTEPAD OR NOTEPAD++<br />
                                            3:Languages used:<br />
                                            HTML,CSS,JQUERY,JAVASCRIPT<br />
                                            4:Time allowed is 3 hours.
                                            <br />
                                            5: The decision of the judge will be final and abiding.<br />
                                            6:Maximum 3 candidate and minimum of 1 candidate are allowed in a team<br />
                                        </div>
                                        <div id="Div32" runat="server" class="tab-pane fade">
                                            1.Completion of exact task<br />
                                            2. Efficient coding and design<br />
                                        </div>
                                        <div id="Div33" runat="server" class="tab-pane fade">
                                            Coordinator:<br />
                                            Arpit Srivastav<br />
                                            +91-9839468311
                                        </div>
                                    </div>
                                    <!--modal -->
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>

            <!--zumowar-->
            <div class="modal" id="Div34" role="dialog" runat="server">
                <div class="modal-dialog" style="width: 96%;">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header well">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title text-center"><b class="text-warning">Zumo War</b></h4>
                        </div>
                        <div class="row">
                            <div class="col-md-offset-2 col-md-8">
                                <div class="modal-body">
                                    <!-- Modal -->

                                    <ul class="nav nav-tabs">
                                        <li class="active"><a data-toggle="tab" href="#Div35"><b class="text-success">INTRODUCTION </b></a></li>

                                        <li><a data-toggle="tab" href="#Div36"><b class="text-success">Rules and Regulations</b></a></li>

                                        <li><a data-toggle="tab" href="#Div37"><b class="text-success">Contacts</b></a></li>

                                    </ul>
                                    <div class="tab-content">
                                        <div id="Div35" runat="server" class="tab-pane in active">
                                            Engineering is something that knows no International boundaries.We at YANTRAGENE have done it for the Techies. We are making you to take part in the national game of Japan, i.e SUMO WRESTLING. But here, the fighters will be the bots that makes it Zumo War; a very amusing event which is a sumo match of robots, in which a player must fix a light weight metal plate in front of the robot to push its opponent outside the arena. There will be 3 rounds in a match.Whichever team wins 2 rounds will win the game. 
 <br />
                                            Reference to learn:-
                                            <br />
                                            <a href="https://m.youtube.com/watch?v=kewza7RyKMQ" target="_blank">https://m.youtube.com/watch?v=kewza7RyKMQ</a>
                                            <br />
                                            <a href="https://m.youtube.com/watch?v=8pEOUdUndys" target="_blank">https://m.youtube.com/watch?v=8pEOUdUndys</a>
                                            <br />
                                            <a href="https://m.youtube.com/watch?v=UyC9dV7ZIoI" target="_blank">https://m.youtube.com/watch?v=UyC9dV7ZIoI</a>
                                            <br />
                                            <a href="https://m.youtube.com/watch?v=FVmNdEH01e4" target="_blank">https://m.youtube.com/watch?v=FVmNdEH01e4</a>
                                            <br />

                                        </div>
                                        <div id="Div36" runat="server" class="tab-pane fade">
                                            <b>Registration Fee:- INR 200 per person.It will be submitted on the spot. </b>
                                            <br />

                                             The maximum no. of participants allowed in a team is 5.
                                            <br />
                                             Participants from different colleges can form a team.More than one team is allowed from a particular college.One student cannot be a part of more than one team in one event.
                                            <br />
                                             Dimensions of robot must not exceed 35x35x35cm (lxbxh).<br />
                                             The weight of robot must not exceed 1.5kg.
                                            <br />
                                             The thickness of the wheel used in robot must not exceed 3cm.
                                            <br />
                                             The power supply used by a robot must not exceed 18 Volts and 4 Amperes, so try to use small motors to avoid large current consumption.
                                            <br />
                                             Robot must be strictly Wireless or you can use autonomous robot.
                                            <br />
                                             The robot should be controlled by 8-bit microcontroller board like Arduino or similar. Microprocessor based bots controlled by Raspberry pi are not allowed.<br />
                                             One must push the opponent’s robot from front using metal plate, if any robot pushes another from back or from side,then that team will be disqualified. 
                                            <br />
                                             One has to push the robot outside the ring. If any robot damages the opponent’s bot then that team will be disqualified.<br />
                                             There will be 3 rounds in a match.Whichever team wins 2 rounds will win the game.
                                            <br />

                                             If there is violation of any of the rules by any team, then that team will be disqualified.
                                            <br />
                                             The arena will be circular in shape with a diameter of 1.8m approx.
                                            <br />

                                        </div>
                                        <div id="Div37" runat="server" class="tab-pane fade">
                                            <br />
                                            1) Sagar Sharma
                                            <br />
                                            +91-8604866793<br />

                                            2) Anand Prakash
                                            <br />
                                            +91-9807736649
                                            <br />
                                            Anandpra786@gmail.com<br />
                                        </div>
                                        <div id="Div38" runat="server" class="tab-pane fade">
                                        </div>
                                        <div id="Div39" runat="server" class="tab-pane fade">
                                        </div>
                                        <div id="Div40" runat="server" class="tab-pane fade">
                                        </div>
                                    </div>
                                    <!--modal -->
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>

            <!--Airfray-->
            <div class="modal" id="Div41" role="dialog" runat="server">
                <div class="modal-dialog" style="width: 96%;">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header well">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title text-center"><b class="text-warning">Air Fray</b></h4>
                        </div>
                        <div class="row">
                            <div class="col-md-offset-2 col-md-8">
                                <div class="modal-body">
                                    <!-- Modal -->

                                    <ul class="nav nav-tabs">
                                        <li class="active"><a data-toggle="tab" href="#Div42"><b class="text-success">INTRODUCTION </b></a></li>

                                        <li><a data-toggle="tab" href="#Div43"><b class="text-success">Problem Statement </b></a></li>

                                        <li><a data-toggle="tab" href="#Div45"><b class="text-success">Rules and Regulations</b></a></li>


                                        <li><a data-toggle="tab" href="#Div47"><b class="text-success">Contacts</b></a></li>

                                    </ul>
                                    <div class="tab-content">
                                        <div id="Div42" runat="server" class="tab-pane in active">
                                            Well, every one had flied planes at younger age. Making a paper plane was always a fun. But it is always interesting and challenging to make a paper plane that will travel long distance or remain in air for comparatively longer time.
                                        </div>
                                        <div id="Div43" runat="server" class="tab-pane fade">
                                            <p>You have to make a paper plane and project it in air such that it will travel longer distance in comparison to others. The far your plane will go, the better is the chance for winning this competition</p>
                                        </div>
                                        <div id="Div44" runat="server" class="tab-pane fade">
                                        </div>
                                        <div id="Div45" runat="server" class="tab-pane fade">
                                            <p>
                                                1) Each participant will be provided 2 sheets for making paper plane.<br />
                                                2) Each one have to make his/her plane using one sheet at a time. Therefore participant will have 2 chances to challenge others
                                                <br />
                                                3) Each one has to use the provided material only.
                                                <br />
                                            </p>
                                        </div>
                                        <div id="Div46" runat="server" class="tab-pane fade">
                                        </div>
                                        <div id="Div47" runat="server" class="tab-pane fade">
                                            <br />
                                            Khurshid Ahmad
                                            <br />
                                            +91- 9760039941<br />
                                            Shaban Ahmad<br />
                                            +91-9889152966

                                        </div>
                                    </div>
                                    <!--modal -->
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>

            <!--Digicanva-->
            <div class="modal" id="Div48" role="dialog" runat="server">
                <div class="modal-dialog" style="width: 96%;">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header well">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title text-center"><b class="text-warning">Digi Canva</b></h4>
                        </div>
                        <div class="row">
                            <div class="col-md-offset-2 col-md-8">
                                <div class="modal-body">
                                    <!-- Modal -->

                                    <ul class="nav nav-tabs">
                                        <li class="active"><a data-toggle="tab" href="#Div49"><b class="text-success">INTRODUCTION </b></a></li>
                                        <li><a data-toggle="tab" href="#Div52"><b class="text-success">Rules and Regulations</b></a></li>

                                        <li><a data-toggle="tab" href="#Div54"><b class="text-success">Contacts</b></a></li>

                                    </ul>
                                    <div class="tab-content">
                                        <div id="Div49" runat="server" class="tab-pane in active">
                                            <p>
                                                <br />
                                                Particants will have to design a poster and logo using digital tools and software.</p>
                                        </div>


                                        <div id="Div52" runat="server" class="tab-pane fade">
                                            <p>
                                                <br />
                                                1)Themes will be given on the spot on which the poster must be designed.
                                                <br />
                                                2)A logo has to designed relevant to the theme which must be presented seperately and must also be included in the poster.
                                                <br />
                                                3)Participants will be provided 150 minutes to complete the given task. 
                                                <br />
                                                4)Only digital tools like photoshop, corel or powerpoint etc are allowed to be used. 
                                                <br />
                                                5)Paricipants must have their own system with required software.
                                                <br />
                                                6)Participant team must have at most 3 members.
                                                <br />
                                            </p>
                                        </div>

                                        <div id="Div54" runat="server" class="tab-pane fade">
                                            <p>
                                                <br />
                                                Co-ordinators:<br />
                                                Abhishek Vishwakarma:<br />
                                                +91-7408268408</p>
                                        </div>
                                    </div>
                                    <!--modal -->
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>

            <!--Appmania-->
            <div class="modal" id="Div55" role="dialog" runat="server">
                <div class="modal-dialog" style="width: 96%;">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header well">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title text-center"><b class="text-warning">Appmania</b></h4>
                        </div>
                        <div class="row">
                            <div class="col-md-offset-2 col-md-8">
                                <div class="modal-body">
                                    <!-- Modal -->

                                    <ul class="nav nav-tabs">


                                        <li><a data-toggle="tab" href="#Div57"><b class="text-success">Problem Statement </b></a></li>

                                        <li><a data-toggle="tab" href="#Div59"><b class="text-success">Rules and Regulations</b></a></li>

                                        <li><a data-toggle="tab" href="#Div60"><b class="text-success">Eligibility Criteria</b></a></li>
                                        <li><a data-toggle="tab" href="#Div61"><b class="text-success">Contacts</b></a></li>

                                    </ul>
                                    <div class="tab-content">
                                        <div id="Div56" runat="server" class="tab-pane fade">
                                        </div>
                                        <div id="Div57" runat="server" class="tab-pane in active">
                                            <br />
                                            In this event you are required to develop an app on one of the following technologies:
                                            <br />
                                            1)java 
                                            <br />
                                            2).net  
                                            <br />
                                            3)php  
                                            <br />
                                            a problem will be given with proper description to develop the app.<br />

                                        </div>
                                        <div id="Div58" runat="server" class="tab-pane fade">
                                        </div>
                                        <div id="Div59" runat="server" class="tab-pane fade">
                                            <br />
                                            1) Time allowed to develop the application is 3 hrs.
                                            <br />
                                            2) There is no restrictions on use of platforms.
                                            <br />
                                            3) The decision of the judges will be final and abiding.
                                            <br />
                                            4) Maximum 3 candidates & a minimum of 1 candidate are allowed in a team.
                                            <br />

                                        </div>
                                        <div id="Div60" runat="server" class="tab-pane fade">
                                            <br />
                                            1) Features included in the application.
                                            <br />
                                            2)Problem solving approach. 
                                            <br />
                                            3)Efficient back-end development.
                                            <br />

                                        </div>
                                        <div id="Div61" runat="server" class="tab-pane fade">
                                            Coordinator:<br />
                                            Shubham Singh<br />
                                            +91-8418921142
                                        </div>
                                    </div>
                                    <!--modal -->
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>

            <!--Roborace-->
            <div class="modal" id="Div62" role="dialog" runat="server">
                <div class="modal-dialog" style="width: 96%;">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header well">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title text-center"><b class="text-warning">Robo Race</b></h4>
                        </div>
                        <div class="row">
                            <div class="col-md-offset-2 col-md-8">
                                <div class="modal-body">
                                    <!-- Modal -->

                                    <ul class="nav nav-tabs">
                                        <li class="active"><a data-toggle="tab" href="#Div63"><b class="text-success">INTRODUCTION </b></a></li>



                                        <li><a data-toggle="tab" href="#Div64"><b class="text-success">Rules and Regulations</b></a></li>


                                        <li><a data-toggle="tab" href="#Div65"><b class="text-success">Contacts</b></a></li>

                                    </ul>
                                    <div class="tab-content">
                                        <div id="Div63" runat="server" class="tab-pane in active">
                                            <p>
                                                Robotic events are incomplete without a robotic race.So here it is. <b>YANTRAGENE </b>gives the opportunity to the technocrats to charge and make their robot run like The BOLT. The race will be on specialized track having different obstacles throughout.For clearing every obstacle there will be points.The bot that completes the race in least possible time and with maximum points will win the race.
                                                <br />
                                                <br />
                                                Reference to learn:-<a href=" https://m.youtube.com/watch?v=kewza7RyKMQ " target="_blank">https://m.youtube.com/watch?v=kewza7RyKMQ</a>
                                            </p>
                                        </div>
                                        <div id="Div64" runat="server" class="tab-pane fade">
                                            <br />
                                            <b>Registration Fee :- INR 200 per person </b>
                                            <br />


                                             The maximum no. of participants allowed in a team is 5.<br />
                                             Participants from different colleges can form a team and more than one team is acceptable from any particular college.One student can’t be a part of more than one team in the same event.<br />
                                             Dimensions of robot must not exceed 35x35x35cm (lxbxh).<br />
                                             The weight of robot must not exceed 1.5kg.
                                            <br />
                                             The power supply used by a robot must not exceed 18 Volts and 4 Amperes, so try to use small motors to avoid large current consumption.<br />
                                             The thickness of the wheel used in robot must not exceed 3cm.  The robot must be wireless.<br />
                                             If the robot will damage the arena, either the team will be disqualified or will be given negative points.<br />
                                             If there is violation of any of the rules, then that team will be disqualified.<br />
                                             The total distance to race will be at least 50m. 
 An estimated view of the track for the Robo Race is shown below and is subjected to changes.<br />
                                            <img src="images/RACETRACK.png" class="img-responsive" />
                                        </div>
                                        <div id="Div65" runat="server" class="tab-pane fade">
                                            -Akshita Srivastava
                                            <br />
                                            +91-73766547776
                                            <br />

                                            -Shubham Shukla
                                            <br />
                                            8181808735
                                            <br />
                                            Shubhamshukla167@gmail.com 
                                            <br />

                                        </div>
                                        <div id="Div66" runat="server" class="tab-pane fade">
                                        </div>
                                        <div id="Div67" runat="server" class="tab-pane fade">
                                        </div>
                                        <div id="Div68" runat="server" class="tab-pane fade">
                                        </div>
                                    </div>
                                    <!--modal -->
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>

            <!--Surgicalstrike-->
            <div class="modal" id="Div69" role="dialog" runat="server">
                <div class="modal-dialog" style="width: 96%;">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header well">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title text-center"><b class="text-warning">Surgical Strike</b></h4>
                        </div>
                        <div class="row">
                            <div class="col-md-offset-2 col-md-8">
                                <div class="modal-body">
                                    <!-- Modal -->

                                    <ul class="nav nav-tabs">
                                        <li class="active"><a data-toggle="tab" href="#Div70"><b class="text-success">INTRODUCTION </b></a></li>

                                        <li><a data-toggle="tab" href="#Div75"><b class="text-success">Contacts</b></a></li>

                                    </ul>
                                    <div class="tab-content">
                                        <div id="Div70" runat="server" class="tab-pane in active">
                                            <p>
                                                <br />
                                                1.	Competition Method: 5<b>vs</b> 5(Team Play, 5 players per team)
                                                <br />
                                                2.	Victory Condition: The first team to win 16 rounds is declared the winner.
                                                <br />
                                                3.	General game setting rounds: 30 rounds (Max rounds formats): Each team play 15 rounds as Terrorists and 15 round as Counter-Terrorists.
                                                <br />
                                                4.	Round Time: 1 minute 45 seconds.
                                                <br />
                                                5.	Players are expected to bring their gaming accessories. (Keyboard, Mouse, Headphone, Mouse)
                                                <br />
                                                6.	Any other use of map or program bugs can result in a warning at the minimum or loss by default for the offending team after deliberation and decision by the board of reference at its sole discretion.
                                                <br />
                                                7.	Basic configuration files (CFG) will be allowed with <b>no illegal</b> scripts. Final match will be “<b>BEST OF THREE MAPS</b>”.
                                                <br />
                                            </p>
                                        </div>
                                        <div id="Div71" runat="server" class="tab-pane fade">
                                        </div>
                                        <div id="Div72" runat="server" class="tab-pane fade">
                                        </div>
                                        <div id="Div73" runat="server" class="tab-pane fade">
                                        </div>
                                        <div id="Div74" runat="server" class="tab-pane fade">
                                        </div>
                                        <div id="Div75" runat="server" class="tab-pane fade">
                                            Coordinator:<br />
                                            Piyush Kumar Rao<br />
                                            +91-7785075738<br />
                                            Akhilesh Yadav<br />
                                            +91-9125361868
                                        </div>
                                    </div>
                                    <!--modal -->
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>

            <!--bridgeit-->
            <div class="modal" id="Div76" role="dialog" runat="server">
                <div class="modal-dialog" style="width: 96%;">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header well">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title text-center"><b class="text-warning">Bridge It</b></h4>
                        </div>
                        <div class="row">
                            <div class="col-md-offset-2 col-md-8">
                                <div class="modal-body">
                                    <!-- Modal -->

                                    <ul class="nav nav-tabs">
                                        <li class="active"><a data-toggle="tab" href="#Div77"><b class="text-success">INTRODUCTION </b></a></li>

                                        <li><a data-toggle="tab" href="#Div80"><b class="text-success">Rules and Regulations</b></a></li>

                                        <li><a data-toggle="tab" href="#Div81"><b class="text-success">Judging Criteria</b></a></li>
                                        <li><a data-toggle="tab" href="#Div82"><b class="text-success">Contacts</b></a></li>

                                    </ul>
                                    <div class="tab-content">
                                        <div id="Div77" runat="server" class="tab-pane in active">
                                            <p>
                                                <br />
                                                <i>Ask of the steel, the struts and wire…What gave it force and power:  </i>
                                                <br />
                                                <b>josseph H. Strauss </b>
                                                <br />
                                                <br />
                                                The first bridges made by humans were probably spans of cut wooden logs or planks and eventually stones, using a simple support and crossbeam arrangement. Some early Americans used trees or bamboo poles to cross small caverns or wells to get from one place to another. A common form of lashing sticks, logs, and deciduous branches together involved the use of long reeds or other harvested fibers woven together to form a huge rope capable of binding and holding together the materials used in early bridges. But its strength depends on your design. If you have knowledge of truss, force resolution and have a creativity of making something. So you must take a part and you will leave you with your marvelous experience.   
                                            </p>
                                        </div>

                                        <div id="Div80" runat="server" class="tab-pane fade">
                                            <p>
                                                No. of participants in a team can be <b>4</b>. 
                                                <br />
                                                • <b>Round 1:</b>
                                                <br />
                                                The teams shall mail a zip file containing the abstract of their design to <b>bridgeit.yantragene17@gmail.com</b>
                                                <br />
                                                • The abstract should contain the following: 
                                                <br />
                                                o Drawings of the design (isometric and orthographic views) with proper dimensioning on AutoCAD or clear pictures of handmade sketches. Clearly state the specifications and advantages your design and any innovative idea that you have.
                                                <br />
                                                o The teams will be shortlisted for Round 2 on the basis of their abstracts. 
                                                <br />
                                                oThe Popsicle sticks can be cut to any size or shape and used to construct the bridge. 
                                                <br />

                                                oEach cable can be made of a single cotton thread or a group of cotton threads. 
                                                <br />

                                                It is a day-long event (8-12hrs). 
                                                <br />
                                                <br />
                                                Once the allotted duration is completed, the bridges are tested and at that point of time, the participants are not allowed to touch/alter or support their bridge.
                                            </p>
                                            <br />
                                            <br />
                                            <asp:Button ID="More" runat="server" Text="More" CommandArgument="bridgeit" OnClick="More_Click" />
                                        </div>
                                        <div id="Div81" runat="server" class="tab-pane fade">
                                            <p>
                                                1.	Maximum load carrying capacity.
                                                <br />
                                                2.	Deflection of the bridge.
                                                <br />
                                                3.	Mass of the suspension bridge.
 <br />


                                                4.	If all the three criteria of one team matches with the other team, then the team that has completed first will be given priority.
                                            </p>
                                        </div>
                                        <div id="Div82" runat="server" class="tab-pane fade">
                                            Event co-ordinator:<br />
                                            <b>Farheen Abdullah</b><br />
                                            +91-9889622294<br />
                                        </div>
                                    </div>
                                    <!--modal -->
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>

            <!--techyshot-->
            <div class="modal" id="Div83" role="dialog" runat="server">
                <div class="modal-dialog" style="width: 96%;">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header well">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title text-center"><b class="text-warning">TechyShot</b></h4>
                        </div>
                        <div class="row">
                            <div class="col-md-offset-2 col-md-8">
                                <div class="modal-body">
                                    <!-- Modal -->

                                    <ul class="nav nav-tabs">
                                        <li class="active"><a data-toggle="tab" href="#Div84"><b class="text-success">INTRODUCTION </b></a></li>

                                        <li><a data-toggle="tab" href="#Div85"><b class="text-success">Event Structure </b></a></li>
                                        <li><a data-toggle="tab" href="#Div87"><b class="text-success">Rules and Guidelines </b></a></li>

                                        <li><a data-toggle="tab" href="#Div88"><b class="text-success">Eligibility Criteria</b></a></li>
                                        <li><a data-toggle="tab" href="#Div89"><b class="text-success">Contacts</b></a></li>

                                    </ul>
                                    <div class="tab-content">
                                        <div id="Div84" runat="server" class="tab-pane in active">
                                            <p>
                                                <br />
                                                For this event the team has to prepare a model, such that it accumulates maximum force generated by the chemical reaction (given below) and perform the various tasks of the respective rounds. The best suited model, qualifying the successive rounds will be decided as the winner of the event.
                                     Chemicals used: - Baking Soda and Acetic acid.The reaction to be used for the production of the desired thrust must be :- 
                                                <br />
                                                <br />
                                                <b>NaHCO3(s) + CH3COOH (l) → CO2(g) + H2O(l) + CH3COONa(aq)  </b>
                                                <br />
                                            </p>
                                        </div>
                                        <div id="Div85" runat="server" class="tab-pane fade">
                                            <b>Stage 1:</b><br />
                                            Presentation Round (30 points)
                                            <br />
                                            a) There would not be any PowerPoint presentation, you need to present your
 prototype to the judges and explain its specifications to them. 
                                            <br />
                                            b) Presentation should be given by the team on the day of the competition, in front
of the judges. The candidates should describe their model for its creativity,
appearance, technical design and innovation.<br />
                                            c) Your model will be inspected for any forgery. If found any, you will be disqualified.
                                            <br />
                                            d) Presentation should be given prior to the Performance competition. Team
members should be present during judging to answer questions of the judges.
                                            <br />
                                            e) The presentation round consists a total of 30 points. Presentation will be judged
according to the following criteria: 
                                            <br />
                                            • Design of the prototype for its innovation, creativity and its unique features (For e.g.
trigger mechanism, robustness of the model). 
                                            <br />
                                            • Safety measures and precautions taken.
                                            <br />
                                            • Team member presentations.
                                            <br />
                                            <br />
                                            <b>Stage 2:</b>
                                            <br />
                                            Precision Round & Range Round (70 points)as described under the ‘Rules and Guidelines’ tab.
                                            <br />


                                            Deciding the Winner
                                            <br />
                                            • The team scoring maximum from the two Stages (sum of the scores) will be declared as the winner of the event.
                                            <br />
                                        </div>
                                        <div id="Div87" runat="server" class="tab-pane fade">
                                            <br />
                                            • Each team may have a maximum of two members.
                                            <br />
                                            • Chemicals (acetic acid and baking soda) will be provided by us. Maximum amount of both
the chemicals is as follows: Acetic acid: 23 ml, Baking Soda: 30 g. (per chance).
                                            <br />
                                            • There will be three stages as follows:
                                            <br />
                                            1. Prototype explanation
                                            <br />
                                            2. Precision round
                                            <br />
                                            3. Power round
                                            <br />
                                            • The teams will be asked to get ready 15 minutes prior to the start of the competition.
                                            <br />
                                            <br />

                                            Precision round: 
                                            <br />
                                            • This round is all about the accuracy and design of your prototype.
                                            <br />
                                            • In this round your prototype is required to shoot a stream of water through a hole in a
cardboard screen. The hole that you hit will determine your score.<br />


                                            • The ejection point of your prototype will be kept 3 m from the target. You cannot change
the position of your prototype which will be kept at the centre of the table, but you can
change its orientation.<br />


                                            • Height of the screen is 1m above the base/reference plane (top surface of the table
provided).
                                            <br />
                                            • In this round you will be given two chances (i.e. chemicals will be provided twice), total
points of both the attempts will be considered for your evaluation.
                                            <br />



                                            • If you happen to shoot at more than one target holes, hit point of the hole containing
least points will be awarded (For e.g. if your stream hits 10,5 and 20 then 5 points will be
awarded).
                                            <br />
                                            <br />
                                            Range Round: 
                                            <br />

                                            • This round would be checking the impact (basically momentum/impulse) created by the
stream from your prototype.
                                            <br />
                                            • It is a one on one competition between the qualified teams of the previous round.
                                            <br />
                                            • The participant getting maximum range/displacement from the starting spot would be the winner of this round.
                                            <br />
                                        </div>
                                        <div id="Div86" runat="server" class="tab-pane fade">
                                        </div>
                                        <div id="Div88" runat="server" class="tab-pane fade">
                                            <p>Abstract submission is the criteria for getting eligible for the event. </p>
                                        </div>
                                        <div id="Div89" runat="server" class="tab-pane fade">
                                            Event Co-ordinators
                                            <br />
                                            Ghanshyam Khushwaha:+91-8449318025<br />
                                            Anuj Kumar:+91-8808702755
                                            <br />
                                        </div>
                                    </div>
                                    <!--modal -->
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>

            <!--NFS-->
            <div class="modal" id="Div50" role="dialog" runat="server">
                <div class="modal-dialog" style="width: 96%;">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header well">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title text-center"><b class="text-warning">NfS</b></h4>
                        </div>
                        <div class="row">
                            <div class="col-md-offset-2 col-md-8">
                                <div class="modal-body">
                                    <!-- Modal -->

                                    <ul class="nav nav-tabs">
                                        <li class="active"><a data-toggle="tab" href="#Div91"><b class="text-success">INTRODUCTION </b></a></li>
                                        <li><a data-toggle="tab" href="#Div93"><b class="text-success">Events Structure</b></a></li>
                                        <li><a data-toggle="tab" href="#Div94"><b class="text-success">Rules and Regulations</b></a></li>

                                        <li><a data-toggle="tab" href="#Div95"><b class="text-success">Game Settings</b></a></li>
                                        <li><a data-toggle="tab" href="#Div96"><b class="text-success">Contacts</b></a></li>

                                    </ul>
                                    <div class="tab-content">
                                        <div id="Div91" runat="server" class="tab-pane in active">
                                            <b>Game Version:</b> NFS Most Wanted 1.3
                                            <br />


                                        </div>
                                        <div id="Div92" runat="server" class="tab-pane fade">
                                        </div>
                                        <div id="Div93" runat="server" class="tab-pane fade">
                                            <p>
                                                First day of the event: Preliminaries 
                                                <br />
                                                Second day: Main Tournament
                                            </p>
                                        </div>
                                        <div id="Div94" runat="server" class="tab-pane fade">
                                            <br />
                                            General Competition Method: 4 players<br />
                                            <br />
                                            <b>Rules for Preliminaries:  </b>
                                            <br />

                                            <b>Game Type:</b> Circuit , Sprint
                                            <br />
                                            The Circuit is for 2 rounds
                                            <br />
                                            Players getting the 1st position shall qualify for the next round.
                                            <br />

                                            <b>Rules for the tournament: </b>
                                            <br />

                                            1. The tournament will be knockout.
                                            <br />
                                            2. The player who wins their 1st stage match advances to the next stage.
                                            <br />
                                            3. There will not be any match played for the third spot.
                                            <br />
                                            <br />
                                            <b>Penalty for Unfair Play: </b>
                                            <br />

                                            • Unfair play
                                            <br />
                                            • Use of any cheat program 
                                            <br />
                                            • Intentional disconnection
                                            <br />
                                            • Use of any settings exceeding standard and permitted settings
                                            <br />

                                            If the match is disrupted due to unnecessary chatting, the player may be given a warning or lose by default at the referee’s sole discretion.
                                            <br />
                                            Upon discovery of any player committing any violations regarded as unfair play, that player will be disqualified from the Tournament/Preliminaries.
                                            <br />
                                            During the course of any match, the operations staff and/or referee may determine other actions to be unfair play at any time.
                                            <br />
                                            Two warnings constitute being disqualified from the Tournament/Preliminaries.
                                            <br />


                                        </div>
                                        <div id="Div95" runat="server" class="tab-pane fade">
                                            <br />
                                            1. Courses: Course selection is done by the Game Administrator.
                                            <br />
                                            2. Car Settings: All cars are available.
                                            <br />
                                            3. Race Mode Options:
                                            <br />
                                            * Nitrous: On
                                            <br />
                                            * Collision Detection: ON
                                            <br />
                                            * Performance Matching: Off
                                            <br />
                                            * Units: Player's own discretion
                                            <br />
                                            4. Player Mode Options:
                                            <br />
                                            * Game Moment Camera: Off
                                            <br />
                                            * Car Damage: Off
                                            <br />
                                            * Rear View Mirror: Player's own discretion.
                                            <br />
                                            5. Players are provided with a standard keyboard and mouse. Other Controllers and Steering Wheel are allowed.
                                            <br />
                                        </div>
                                        <div id="Div96" runat="server" class="tab-pane fade">
                                            Coordinator:<br />
                                            Piyush Kumar Rao<br />
                                            +91-7785075738<br />
                                            Akhilesh Yadav<br />
                                            +91-9125361868
                                        </div>
                                        <!--modal -->
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <!--hydraulic arm-->
            <div class="modal" id="Div104" role="dialog" runat="server">
                <div class="modal-dialog" style="width: 96%;">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header well">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title text-center"><b class="text-warning">Hydraulic Arm</b></h4>
                        </div>
                        <div class="row">
                            <div class="col-md-offset-2 col-md-8">
                                <div class="modal-body">
                                    <!-- Modal -->

                                    <ul class="nav nav-tabs">
                                        <li class="active"><a data-toggle="tab" href="#Div105"><b class="text-success">INTRODUCTION </b></a></li>


                                        <li><a data-toggle="tab" href="#Div106"><b class="text-success">Bot Specification</b></a></li>
                                        <li><a data-toggle="tab" href="#Div107"><b class="text-success">Rules and Regulations</b></a></li>

                                        <li><a data-toggle="tab" href="#Div108"><b class="text-success">Contacts</b></a></li>

                                    </ul>
                                    <div class="tab-content">
                                        <div id="Div105" runat="server" class="tab-pane in active">
                                            <p>
                                                <br />
                                                Have you ever imagined the paramountcy of water? A single drop if dropped in the ocean loses its importance but if put on a petal, shines.
Yantragene hereby provides you with a perfect platform to over think the unimaginable and challenge the unchallenged. Play out with your creativity to design a syringe¬actuated arm which has the potential to move the given objects in a specified way.
Let the laws of hydraulics come together to make all of us bow to satisfy its vengeance.
                                            </p>
                                        </div>
                                        <div id="Div106" runat="server" class="tab-pane fade">
                                            <p>
                                                <br />
                                                •	The dimensions of the base of the bot should not exceed 350mm x 250mm.
                                                <br />
                                                •	No restrictions on the weight and height of the machine.
                                                <br />
                                                •	All the movements of the machine should be actuated by hydraulic force only but the locomotion can be controlled by a remote control. It may be either wired or wireless.
                                                <br />
                                                •	No electronics parts should be used in the machine except locomotion.
                                                <br />
                                                •	No restriction on the number of syringes used.
                                                <br />
                                                •	Springs are not allowed.
                                                <br />
                                            </p>
                                        </div>
                                        <div id="Div107" runat="server" class="tab-pane fade">
                                            <p>
                                                <br />
                                                •	Team size: 3 members- One member for the bot locomotion control and two for syringe control.
                                                <br />
                                                •	Participant have to send an abstract containing the photos and a small description of their Mobile Syringe Actuated Mechanical Arm.
                                                <br />
                                                •	Last date of Submission of abstract is .5 March 2017.
                                                <br />
                                                •	The teams have to mail their abstract to <b>er.ktj.mech@gmail.com</b>
                                                <br />
                                                •	The organizers reserve all rights to change any or all of the above rules. Changes in any rule, if any, will be highlighted on the website.
                                                <br />
                                                •	All the rounds of the event will be held at .FGIET Campus     
                                                <br />
                                                •	If the bot runs away from the track, topples or halts, the team member present on the arena can reset it. However time would be running during this duration.
                                                <br />
                                                •	Readymade kits should not be used. Any bot found having a ready-made body will be disqualified.
                                                <br />
                                            </p>
                                        </div>
                                        <div id="Div108" runat="server" class="tab-pane fade">
                                            Event Co-ordinators:<br />
                                            Rahul Jaiswal:9005681006
                                            <br />
                                        </div>

                                    </div>
                                    <!--modal -->
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>

            <!--robo ballon-->
            <div class="modal" id="Div111" role="dialog" runat="server">
                <div class="modal-dialog" style="width: 96%;">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header well">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title text-center"><b class="text-warning">Robo Balloon Fight</b></h4>
                        </div>
                        <div class="row">
                            <div class="col-md-offset-2 col-md-8">
                                <div class="modal-body">
                                    <!-- Modal -->

                                    <ul class="nav nav-tabs">
                                        <li class="active"><a data-toggle="tab" href="#Div112"><b class="text-success">INTRODUCTION </b></a></li>

                                        <li><a data-toggle="tab" href="#Div113"><b class="text-success">Problem Statement </b></a></li>

                                        <li><a data-toggle="tab" href="#Div117"><b class="text-success">Contacts</b></a></li>

                                    </ul>
                                    <div class="tab-content">
                                        <div id="Div112" runat="server" class="tab-pane in active">
                                            As the children love to play with balloons, we at YANTRAGENE too but in a different style. This event is new and yet most funny and exciting. As the name suggests, you need to create a wireless robot and fit a needle or little spear on the front side and paste a balloon at the back side of your robot and try to pierce the opponent’s balloon in order to win. There will be 3 rounds in a match. Whichever team wins 2 rounds will win the game. 
                                            <br />
                                            <br />
                                            Reference to learn:-
                                            <br />

                                            <a href="https://m.youtube.com/watch?v=kewza7RyKMQ" target="_blank">https://m.youtube.com/watch?v=kewza7RyKMQ</a>
                                            <br />
                                            <a href="https://m.youtube.com/watch?v=atd8bESoQkc " target="_blank">https://m.youtube.com/watch?v=atd8bESoQkc</a>
                                            <br />
                                            <a href="https://m.youtube.com/watch?v=Nzpkl2FTd_k " target="_blank">https://m.youtube.com/watch?v=Nzpkl2FTd_k</a>
                                            <br />
                                        </div>
                                        <div id="Div113" runat="server" class="tab-pane fade ">
                                            <b><b>Registration Fee:- INR 200 per person.It will be submitted on the spot. </b>
                                                <br />
                                            </b>
                                            <br />


                                             The maximum no. of participants allowed in a team is 5.<br />
                                             Participants from different colleges can form a team and more than one team is acceptable from any particular college.One student cannot be a part of more than one team in the same event.<br />
                                             Dimensions of robot must not exceed 35x35x35cm (lxbxh).<br />
                                             The weight of robot must not exceed 1.5kg.
                                            <br />
                                             The length of spear or needle must be constant and must not exceed 12cm.
                                            <br />
                                             The power supply used by a robot must not exceed 18 Volts and 4 amperes, so try to use small motors to avoid large current consumption.<br />
                                             The thickness of the wheel used in robot must not exceed 3cm.
                                            <br />
                                             Robots must be strictly Wireless.<br />
                                             The robot should be controlled by 8-bit microcontroller boards like Arduino or similar. Microprocessor and Raspberry Pi is not allowed.
                                            <br />
                                             If any robot damages the opponent’s bot,then that team will be disqualified.<br />
                                             If there is violation of any of the rules by any team, then that team will be disqualified.<br />
                                             The arena size will be 2mx2m. 
 
                                        </div>
                                        <div id="Div114" runat="server" class="tab-pane fade ">
                                        </div>
                                        <div id="Div115" runat="server" class="tab-pane fade ">
                                        </div>
                                        <div id="Div116" runat="server" class="tab-pane fade ">
                                        </div>
                                        <div id="Div117" runat="server" class="tab-pane fade ">
                                            1)-Amit Kumar Patel
                                            <br />
                                            +91-8090505687
                                            <br />
                                            Amitkpu515@gmail.com
                                            <br />

                                            2)Sudhanshu Agrawal 
                                            <br />
                                            +91-7617824670
                                            <br />
                                        </div>
                                    </div>
                                    <!--modal -->
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>

            <!--dctronix-->
            <div class="modal" id="Div118" role="dialog" runat="server">
                <div class="modal-dialog" style="width: 96%;">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header well">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title text-center"><b class="text-warning">Dctronix</b></h4>
                        </div>
                        <div class="row">
                            <div class="col-md-offset-2 col-md-8">
                                <div class="modal-body">
                                    <!-- Modal -->

                                    <ul class="nav nav-tabs">
                                        <li class="active"><a data-toggle="tab" href="#Div119"><b class="text-success">INTRODUCTION </b></a></li>

                                        <li><a data-toggle="tab" href="#Div120"><b class="text-success">Events Structure</b></a></li>

                                        <li><a data-toggle="tab" href="#Div121"><b class="text-success">Contacts</b></a></li>

                                    </ul>
                                    <div class="tab-content">
                                        <div id="Div119" runat="server" class="tab-pane in active">
                                            If you love electronics then this event is for you. The main idea behind this competition is to judge the basics of electronic circuit building.this is a team event.Each team will be provided with some kind of analog or a digital circuit which they have to implement using basic electronic components like Resistors, Transistors or IC’s on breadboard. There will be two rounds-The team which clears the first round will only be allowed to move to the second round which will be the final one. Primary judging will be on correct implementation of the circuit and then on its simplicity i.e. using least number of transistors or IC’s. Note that the team using transistors for building digital circuit in place of gate IC will get extra marks for every logic gate implemented by transistors.The components will be provided by us. 
Provided components will be :- BC-547, BC-548, BC-558, 74xx series gate IC’s, breadboard, resistors, LEDs etc. 
If a team wants an extra breadboard , they can bring it on their own. 


                                        </div>
                                        <div id="Div120" runat="server" class="tab-pane fade">
                                            <b><b>Registration Fee:- INR 200 per person.It will be submitted on the spot. </b>
                                                <br />
                                            </b>
                                            <br />
                                             The maximum no. of participants allowed in a team is 4.
                                            <br />
                                             Participants from different colleges can form a team and more than one team is acceptable from any particular college.One student can’t be a part of more than one team in the same event.
                                            <br />
                                             If any of the component is burnt or lost or any kind of damage occurs, the team has to pay the penalty.<br />
                                             We will not be providing any data sheets so please be prepared accordingly.
                                            <br />
                                             If there is violation of any of the rules by any team, then that team will be disqualified.
                                            <br />

                                        </div>
                                        <div id="Div121" runat="server" class="tab-pane fade">
                                            Contact:-
                                            <br />
                                            -Jegyasu 
                                            <br />
                                            7071077608
                                            <br />
                                            jegyashugupta@gmail.com
                                            <br />
                                            -Shaifali Gupta
                                            <br />
                                            9125400370
                                            <br />
                                            Shaifali136@gmail.com
                                            <br />
                                            -Ayush Tiwari
                                            <br />
                                            7080304887
                                            <br />
                                            ayushbabusuraj@gmail.com
                                            <br />
                                        </div>
                                        <div id="Div122" runat="server" class="tab-pane fade">
                                        </div>
                                        <div id="Div123" runat="server" class="tab-pane fade">
                                        </div>
                                        <div id="Div124" runat="server" class="tab-pane fade">
                                        </div>
                                    </div>
                                    <!--modal -->
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>


            <!--Embebbeduino-->
            <div class="modal" id="Div2" role="dialog" runat="server">
                <div class="modal-dialog" style="width: 96%;">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header well">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title text-center"><b class="text-warning">Embebbeduino</b></h4>
                        </div>
                        <div class="row">
                            <div class="col-md-offset-2 col-md-8">
                                <div class="modal-body">
                                    <!-- Modal -->

                                    <ul class="nav nav-tabs">
                                        <li class="active"><a data-toggle="tab" href="#Div51"><b class="text-success">INTRODUCTION </b></a></li>


                                        <li><a data-toggle="tab" href="#Div79"><b class="text-success">Rules and Regulations</b></a></li>


                                        <li><a data-toggle="tab" href="#Div109"><b class="text-success">Contacts</b></a></li>

                                    </ul>
                                    <div class="tab-content">
                                        <div id="Div51" runat="server" class="tab-pane in active">
                                            <p>
                                                The creative and innovative technocrats are invited by YANTRAGENE to showcase their innovative skills by developing a working prototype of SMART HOME using microcontrollers and sensors which will be controlled wirelessly either by Wi-Fi or Bluetooth. 
                                                <i>HOME IS NOT WHERE YOU LIVE, BUT WHERE EVERYONE UNDERSTANDS YOU.           </i><b>--CHRISTIAN MORGANSTEN  </b>
                                                <br />
                                                <br />
                                                Smart home is the residential extension of home automation involving control and automation of room lighting, heating, security and other home appliances. In the prototype, there must be ATLEAST 2 appliances (Microwave oven, Air conditioners, Security system, lighting, etc.) that are communicated and controlled smartly with the wireless network. For example, in light controlling when 
someone enters the room light gets ON automatically and you get notification wirelessly on phone or computer.This can also be done in some other way such as the amount of light is controlled depending upon the natural light availability in room or you control it wirelessly and so on. So the objective is to automate a home better in one way or the other which depends upon you. 
 
                                            </p>
                                        </div>
                                        <div id="Div79" runat="server" class="tab-pane fade">
                                            <b><b>Registration Fee:- INR 200 per person.It will be submitted on the spot. </b>
                                                <br />
                                            </b>
                                            <br />
                                            <br />

                                             The maximum no. of participants allowed in a team is 5.<br />
                                             Participants from different colleges can form a team and more than one team is acceptable from a particular college.One student can’t be a part of more than one team in the same event.<br />
                                             Every team will be given 15 minutes to prepare, 10 minutes for presentation and 5 minutes for demonstration.<br />
                                             Low Power consumption, low cost and extra features will help you gain extra marks.<br />
                                             You must carry your own power supply.No supply will be provided.<br />
                                             Copying of prototype will not be entertained.Authenticity of the prototype will fetch marks.<br />
                                             If there is violation of any of the rules, by any team then that team will be disqualified. 

                                        </div>
                                        <div id="Div109" runat="server" class="tab-pane fade">
                                            <br />
                                            1)Parvez Alam
                                            <br />
                                            9452314129
                                            <br />
                                            Parvezalam01994@gmail.com
                                            <br />
                                            2)Vipul Kumar Singh
                                            <br />
                                            9554158517
                                            <br />
                                            Klvipul25@gmail.com
                                            <br />
                                        </div>
                                        <div id="Div53" runat="server" class="tab-pane fade">
                                        </div>
                                        <div id="Div90" runat="server" class="tab-pane fade">
                                        </div>
                                        <div id="Div78" runat="server" class="tab-pane fade">
                                        </div>
                                    </div>
                                    <!--modal -->
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <div class="modal" id="details" role="dialog" runat="server">
                <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header well">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title text-center"><b class="text-warning">Schedule</b></h4>
                        </div>
                        <div class="row">
                            <div class="col-md-offset-2 col-md-8">
                                <div class="modal-body">
                                    <!-- Modal -->
                                    <div class="text-center">                                     <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                                <ContentTemplate>
                                              
                                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                                        <asp:ListItem Value="-1">--Select Event--</asp:ListItem>
                                        <asp:ListItem Value="1">Texplore</asp:ListItem>
                                        <asp:ListItem Value="3">DigiCanva</asp:ListItem>
                                        <asp:ListItem Value="5">Algosense</asp:ListItem>
                                        <asp:ListItem Value="2">Webbit</asp:ListItem>
                                        <asp:ListItem Value="4">AppMania</asp:ListItem>
                                        <asp:ListItem Value="6">Gamedroid</asp:ListItem>
                                        <asp:ListItem Value="7">Robo Soccer(Round 1)</asp:ListItem>
                                        <asp:ListItem Value="8">Robo Soccer (Round 2)</asp:ListItem>
                                        <asp:ListItem Value="9">Robo Race (round 1)</asp:ListItem>
                                        <asp:ListItem Value="10">Robo Race (round 2)</asp:ListItem>
                                        <asp:ListItem Value="11">Zumo War</asp:ListItem>
                                        <asp:ListItem Value="12">Robo Balloon Fight</asp:ListItem>
                                        <asp:ListItem Value="14">Embeddeduino</asp:ListItem>
                                        <asp:ListItem Value="15">Techy Shot</asp:ListItem>
                                        <asp:ListItem Value="17">Contraption</asp:ListItem>
                                        <asp:ListItem Value="16">Hydraulic Arm</asp:ListItem>
                                        <asp:ListItem Value="18">Bridge It</asp:ListItem>
                                        <asp:ListItem Value="19">Sky Kingdom</asp:ListItem>
                                        <asp:ListItem Value="21">SIRC (Day1)</asp:ListItem>
                                        <asp:ListItem Value="20">SIRC(Day2)</asp:ListItem>
                                        <asp:ListItem Value="22">Air Fray</asp:ListItem>
                                        <asp:ListItem Value="23">Ad Mad</asp:ListItem>
                                        <asp:ListItem Value="25">B plan</asp:ListItem>
                                    </asp:DropDownList>
                                           <br />        
                                    <asp:Label ID="Label4" runat="server" Text="" BorderWidth="2px"></asp:Label>
                                     </ContentTemplate>
                                         </asp:UpdatePanel>
                                    <!--modal -->
                                    <asp:Button ID="Button1" runat="server" CssClass="btn btn-info" Text="View Full Schedule" CommandArgument="SCHEDULE2017" OnClick="More_Click" />
                               </div>
 </div>
                            </div>

                        </div>
                    </div>
                </div>
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
                                <%-- <div class="logo-item">
                                    <img src="images/portfolio/download%20(3).png" width="100" height="60" alt="" />
                                </div>
                                --%><!-- End Logo Item -->

                                <!-- Logo Item -->
                                <%-- <div class="logo-item">
                                    <img src="images/portfolio/download%20(5).png" width="100" height="60" alt="" />
                                </div>
                                --%><!-- End Logo Item -->

                                <!-- Logo Item -->
                                <%-- <div class="logo-item">
                                    <img src="images/portfolio/download%20(7).png" width="100" height="60" alt="" />
                                </div>
                                --%>
                                <!-- End Logo Item -->

                                <!-- Logo Item -->
                                <%--  <div class="logo-item">
                                    <img src="images/portfolio/download%20(8).png" width="100" height="60" alt="" />
                                </div>
                                --%>
                                <!-- End Logo Item -->

                                <!-- Logo Item -->
                                <%--   <div class="logo-item">
                                    <img src="images/portfolio/images%20(1).png" width="100" height="60" alt="" />
                                </div>
                                --%>
                                <!-- End Logo Item -->

                                <!-- Logo Item -->
                                <%--  <div class="logo-item">
                                    <img src="images/portfolio/download%20(6).png" width="100" height="60" alt="" />
                                </div>
                                --%>
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
                            <a href="http://fgiet.ac.in" target="_blank">&copy; FGIET <span class="number">2017</span></a>.
                       
                        </div>
                        <!-- End Copyright -->

                        <div class="footer-made">
                            Made By <span class="serif">Ankur|Abhishek|Shwatang|Tanuj</span>
                            <span class="serif"></span>.
                        </div>

                    </div>
                    <!-- End Footer Text -->

                    <!-- Social Links -->
                    <div class="footer-social-links">
                        <div class="social-links tooltip-bot">
                            <a href="https://www.facebook.com/YANTRAGENE2017/" title="Facebook" target="_blank"><i class="fa fa-facebook"></i></a>
                            <%-- <a href="#" title="Twitter" target="_blank"><i class="fa fa-twitter"></i></a>
                            <a href="#" title="Google+" target="_blank"><i class="fa fa-google-plus"></i></a>
                            <a href="#" title="LinkedIn+" target="_blank"><i class="fa fa-linkedin"></i></a>
                            <a href="#" title="Pinterest" target="_blank"><i class="fa fa-pinterest"></i></a>
                            <a href="#" title="E-mail" target="_blank"><i class="fa fa-envelope"></i></a>--%>
                        </div>
                    </div>
                    <!-- End Social Links -->

                </div>
            </footer>
            <!-- End Foter -->


        </div>
        <!-- End Page Wrap -->



        <!-- Works Expander -->
        <div class="work-full">
            <div class="work-navigation clearfix">
                <a class="work-prev"><span><i class="fa fa-chevron-left"></i>&nbsp;Previous</span></a>
                <a class="work-all"><span><i class="fa fa-times"></i>&nbsp;All works</span></a>
                <a class="work-next"><span>Next&nbsp;<i class="fa fa-chevron-right"></i></span></a>
            </div>
            <div class="work-full-load">
            </div>
            <div class="work-loader">
            </div>
        </div>
        <div class="body-masked">
        </div>
        <!-- End Works Expander -->




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
    <script type="text/javascript" src="js/owl.carousel.min.js"></script>
    <script type="text/javascript" src="js/isotope.pkgd.min.js"></script>
    <script type="text/javascript" src="js/imagesloaded.pkgd.min.js"></script>
    <script type="text/javascript" src="js/jquery.magnific-popup.min.js"></script>
    <script type="text/javascript" src="js/all.js"></script>
    <script type="text/javascript" src="js/contact-form.js"></script>
    <script type="text/javascript" src="js/animations.min.js"></script>
    <!--[if lt IE 10]><script type="text/javascript" src="js/placeholder.js"></script><![endif]-->
    <script src="js/animated-headers/TweenLite.min.js"></script>
    <script src="js/animated-headers/EasePack.min.js"></script>
    <script src="js/animated-headers/rAF.js"></script>
    <script src="js/animated-headers/demo-3.js"></script>
</body>
</html>
