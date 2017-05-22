<%@ Page Language="C#" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta http-equiv="content-type" content="text/html;charset=utf-8" />
    <title>YANTRAGENE</title>
        <meta name="description" content=""/>
        <meta name="keywords" content=""/>
        <meta charset="utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
        <!-- Favicons -->
        <link rel="shortcut icon" href="images/yantra.png"/>
        <!-- CSS -->
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
        <link rel="stylesheet" href="css/style.css"/>
        <link rel="stylesheet" href="css/animate.css"/>
        <link rel="stylesheet" href="css/animations.min.css"/>
        <link rel="stylesheet" href="css/vertical-rhythm.min.css"/>
        <link rel="stylesheet" href="css/owl.carousel.css"/>
        <link rel="stylesheet" href="css/magnific-popup.css"/> 
        <link rel="stylesheet" href="css/simpletextrotator.css"/>       
        <link rel="stylesheet" href="css/colors/brown-extra.css"/>
     <style type="text/css"> 
*{padding:0;margin:0} 
a{text-decoration: none; outline:none} 
li{list-style:none} 
.clearfix:before, 
.clearfix:after {content: '\0020';display: block;overflow: hidden;visibility: hidden;width: 0;height: 0} 
.clearfix:after {clear: both} 
.clearfix {zoom: 1} 
:focus {outline:none} 
img {border:0 none; outline:none} 
a:hover {text-indent:0} 

body{font-size:12px; font-family:Arial, Helvetica, sans-serif; background:url(http://i3.cdn-image.com/__media__/pics/9163/bg.gif) repeat;} 
#wrapper {width:960px; margin:0 auto} 
.header{float: left; width: 100%; background:url(http://i2.cdn-image.com/__media__/pics/9161/h_bg.gif) repeat;border-top: 10px solid #472558;} 
.header img {float: left;margin: 22px 0;padding-right: 15px;} 

.header h2, .header h2 a {font-size:24px; color:#fff; overflow:hidden; padding:30px 0 ;  font-weight:normal;  word-wrap:break-word} 

.searchHolder{padding:25px 0} 
.searchBox{margin:0 auto; width:403px; border:1px solid #c5c5c5; overflow:hidden; height:34px; background:#ffffff url(http://i4.cdn-image.com/__media__/pics/8624/searchIcon.gif) 9px 8px no-repeat; padding-left:30px} 
.srchBtn{width:97px;float:right; cursor:pointer; height:34px; font-weight: normal; font-size:16px; border:none; color:#fff;-webkit-appearance: none;outline:none; background:#919191} 
.srchTxt{height:20px; border:0 none; width:284px; padding:7px 5px; line-height:20px; float:left} 
.srchBtn, .srchTxt{-webkit-appearance:none; border-radius:0 none} 
#wrapper h4 {color: #999;font-size: 18px; float: left;width: 100%;margin: 17px 0 0;} 
ul#ads {width:100%; list-style:none} 
ul#ads li {clear: both; display: block; word-wrap: break-word; margin-bottom:12px} 
ul#ads .numWrap{float:left; text-align:center; height:64px; width:66px; position:relative; background:#78678a url(http://i4.cdn-image.com/__media__/pics/9161/numArrowres.png) right top no-repeat; margin:20px 0 20px -7px; padding:24px 0 0 10px} 
ul#ads .gol {background:#fff; width:40px; height:40px; border-radius:50%; color:#635b74; font-size:25px; line-height:40px; text-align:center} 

ul#ads a {display:block; background:#483d5b} 
ul#ads a:hover {border-color:#999} 
.adWrap {padding:30px 10px 30px 78px} 
ul#ads .title {color:#ffb047; font-size:18px; line-height: 22px; word-wrap:break-word; font-weight: bold} 
ul#ads .desc {color: #868686; font-size: 14px; line-height: 20px; font-weight: normal; word-wrap:break-word} 
ul#ads .url {color: #fff; font-size: 14px; word-wrap:break-word; font-weight: bold; line-height:20px} 
ul#ads a:hover .url {color: #ffb047;} 
ul#ads a:hover  .title{color: #fff} 

.rs h3{font-size:16px; color:#fff; height:30px; line-height:29px; font-weight:normal} 
.rs p {color:#ffb047; font-size:18px; padding-top:10px} 
.rs a {color:#ffb047; text-decoration:underline; display:block; padding-bottom:15px} 
.rs a:hover {text-decoration:none} 
.srchBtn, .srchTxt{-webkit-appearance:none; border-radius:0} 
.adsTxt {text-align:right; color: #b0afaf; font-size:10px;padding-bottom: 5px} 
.customMsg {position:relative; background:#f4f4f4; color:#666; text-align: center; font: 11px/14px Arial, Helvetica, sans-serif; width:100%}
.customMsg a {text-decoration: none; color:#000; font-size: 11px;} 
.customMsg a:hover {text-decoration: underline;} 
@media only screen and (max-width:1023px) { 
    body {-webkit-text-size-adjust: 100%; padding-top:0} 
    #wrapper {width: 93%; padding-left:2%}  
    .adWrap {float:none; width:auto} 
    .srchBtn, .srchTxt{-webkit-appearance:none; border-radius:0 none} 
} 
@media only screen and (max-width:599px) { 
    ul#ads li {padding-top:0} 
    ul#ads a .title{margin: 0 0 2px 0} 
} 
@media only screen and (max-width:479px) { 
    ul#ads a {height:auto} 
    ul#ads .title{font-size:18px; line-height:22px} 
    .txt{width:65%} 
    .srchBtn{width:27%} 
    .srchTxt {width:65%} 
    .searchBox{width:84%} 
} 
@media only screen and (max-width:280px) { 
    ul#ads .numWrap {display:none} 
    .adWrap {padding:10px} 
    #wrapper {padding-left:0}   
    .srchBtn{width:100%; float:none; background:#919191; margin-top:5px} 
    .srchTxt {width:94%; padding:7px 3%; float:none; background:#ccc} 
    .searchBox{width:96%; background:none; padding-left:0; height:auto; border:0 none}  
} 
</style> 
</head>
<body>
    <form id="form1" runat="server">
     <!-- Page Wrap -->
        <div class="page" id="top">
                   
      <!-- Home Section -->
            <section class="page-section bg-dark-alfa-70 parallax-7" data-background="/images/a1.jpg">
                
                <div class="container relative pt-40">
                    
                    <div class="align-center">
                     
                        
                        <h1 class="small-title white">About Us</h1>
                        
                        <!-- Author, Categories, Comments -->
                        <div class="blog-post-data">
                          <b>______________</b>
                        </div>
                        
                    </div>
                    
                </div>
            </section>
            <!-- End Home Section -->
     
            <!-- Navigation panel -->
            <div class="nav-bar-compact nbc-bg clearfix">
                
                <!-- Logo ( * your text or image into link tag *) -->
                <div class="nbc-logo-wrap local-scroll">
                    <a href="Default.aspx" class="nbc-logo">
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
                            <a href="#">About</a>
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
                        <li>
                            <a href="Sponsors.aspx">Sponsors</a>
                        </li>
                        <li id="prof" runat="server">
                            <a  href="Usr_lgn.aspx">Profile</a>
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
            
            
            <!-- Some Facts Section -->
            <section class="page-section" id="counts">
                    	
          <div class="container">
            <div class="row">
              <div class="col-md-12">
                <h4 class="alt-font text-center">Some interesting facts</h4>
              </div>
            </div>
            <div class="row">
                        
                        <!-- Counter Item -->
                        <div class="col-xs-6 col-sm-3">
                            <div class="count-number">
                                22
                            </div>
                            <div class="count-descr">
                                <i class="fa fa-briefcase"></i>
                                <span class="count-title">Events</span>
                            </div>
                        </div>
                        <!-- End Counter Item -->
                        
                        <!-- Counter Item -->
                        <div class="col-xs-6 col-sm-3">
                            <div class="count-number" id="part" runat="server">
                              
                            </div>
                            <div class="count-descr">
                                <i class="fa fa-heart"></i>
                                <span class="count-title">Participants</span>
                            </div>
                        </div>
                        <!-- End Counter Item -->
                        
                        <!-- Counter Item -->
                        <div class="col-xs-6 col-sm-3">
                            <div class="count-number">
                                200
                            </div>
                            <div class="count-descr">
                                <i class="fa fa-coffee"></i>
                                <span class="count-title">Awards</span>
                            </div>
                        </div>
                        <!-- End Counter Item -->
                        
                        <!-- Counter Item -->
                        <div class="col-xs-6 col-sm-3">
                            <div class="count-number">
                                500000
                            </div>
                            <div class="count-descr">
                                <i class="fa fa-lightbulb-o"></i>
                                <span class="count-title">Worth Rs.</span>
                            </div>
                        </div>
                        <!-- End Counter Item -->
                        
                    </div>
          </div>
            </section>
            <!-- End Some Facts Section -->
         <br />
            <h3 class="alt-font text-center">What our FANTASTICS SAYS</h3>
               <div class="well" style="border:2px solid;">
                <div class="row">
                <div class="col-md-4">
                    <img src="images/dire.jpg" style="width:150px;height:150px;margin:0px auto" class="img-responsive img-circle" />
                       <h5 class="alt-font text-center">DIRECTOR<br />FGIET</h5>
                        <h6 class="alt-font text-center">Prof. R.P.SHARMA</h6>

                </div>
                <div class="col-md-8" style="font-size:15px;text-align:left;">
                 <p>Every child is born with inherent talent and we here at F.G.I.E.T. take steps so that each and every student can explore various facts of his personality. <br/><br/>
It gives me immense pleasure to announce that our college F.G.I.E.T. is gearing up to organise a technical fest "YANTRAGENE-17" that is to be held on 8-9 march at our college campus in Raebareli. <br/><br/>
YANTRAGENE-17 indeed is an ideal platform for students to manifest their creativity and project their ideas in the various fields of technology. The events are divided in such a way so that all branches of technology can participate. These different branches can come together in one such event and communicate with their ideas.<br/>
Our college has always strived hand to instil in the students the best of knowledge, so that they stand tall and proud in the evolutionary world of innovation and technology.<br/><p>
                </div>
                </div>
              </div>
                    <div class="row" >
                <div class="col-md-4">
                    <img src="images/nupa.jpg" style="width:150px;height:150px;margin:0px auto" class="img-responsive img-circle" />
                     <h5 class="alt-font text-center">H.O.D.<br />CSE Department</h5>
                        <h6 class="alt-font text-center">Prof. Nupa Ram Chauhan</h6>
                </div>
                <div class="col-md-8" style="font-size:15px;text-align:left;">
              <p>It gives me immense pleasure to share with the readers that,<i> 'A journey of a thousand miles begins with the first step'</i>. Today the institutes under the umbrella of  Dr. APJ Abdul Kalam Technical University are progressing by leaps and bounds and have already set a benchmark.
<br /><br />
All the institutes have excelled in all spheres and Feroze Gandhi Institute of Engineering & Technology, Raebareli in particular where learning is pleasure giving newer heights to the technology world.
<br /><br />
The students and faculty grow together in tandem. The aim of the Yantragene is to bring out inherent, creative skills of the students. The youth of today are the future hope of any country and developing & nurturing students is a step in the right direction. I extend my best wishes for the success of Yantragene 2017.
<br /><br />
Technology is an instrument for social change, economic development, technical development, universal brotherhood and national reconstruction and integration.
To achieve all these, men and women need the extensive exposure, healthy enviroment for harmonious growth and development by crossing national geographical boundaries, the technology takes the world and mankind on the path of progress.
<br />HOD
</p>

                </div>
            </div>
            <div class="well" style="border:2px solid;">
                <div class="row">
                <div class="col-md-4">
                    <img src="images/photo.jpg" style="width:150px;height:150px;margin:0px auto" class="img-responsive img-circle" />
                      <h5 class="alt-font text-center">CSI Coordinator <br />Student Chapter RBL</h5>
                        <h6 class="alt-font text-center">Dinesh Kumar Tiwari</h6>
                </div>
                <div class="col-md-8" style="font-size:15px;text-align:left;">
                   <p>CSI is immensly proud to conduct YANTRAGENE in association with FGIET.
YANTRAGENE is a technical fest of FGIET encompassing various technical events which is helpful in honing the technical abilities of the students thereby provide a perfect start in their career.<br/>
YANTRAGENE provides a platform for innovative minds of various colleges to discover the latest happenings in the field of science and technology, as learning is process of constant updation in an ever changing world.<br/>

<i>"An investment in knowledge pays the best interest"></i><p>
                </div>
            </div>
                </div>
    
          <section class="home-section bg-dark" style="background-image: url(images/full-width-images/bg.jpg);">
          <div id="wrapper" class="clearfix"> 
   

    <p class="adsTxt"></p> 
<h4>FORMER WINNERS</h4> 
   <ul id="ads"> 
                                <li> 
                    <a target="_blank" href="#"> 
                        <div class="numWrap"><div class="gol">1</div></div> 
                        <div class="adWrap"> 
                            <p class="title">ALGOSENSE</p>                              
                            <p class="desc">WINNER: Shubham Singh, Ajay Pandey, Kripa Shankar Pandey </p> 
                            <p class="desc">RUNNER UP: Arpit Srivastava, Shubham Singh, Arif Siddiqui  </p> 
                        </div>  
                    </a> 
                </li>  
                                <li> 
                    <a target="_blank" href="#"> 
                        <div class="numWrap"><div class="gol">2</div></div> 
                        <div class="adWrap"> 
                            <p class="title">AD-FRENZY</p>                              
                            <p class="desc">WINNER: Ankit Kumar Gupta, Ankit Singh  </p> 
                            <p class="desc">RUNNER UP: Ayush Tiwari, Shrish Shukla, Akash Singh  </p> 
                        </div>  
                    </a> 
                </li>  
                                <li> 
                    <a target="_blank" href="#"> 
                        <div class="numWrap"><div class="gol">3</div></div> 
                        <div class="adWrap"> 
                            <p class="title">APPMANIA</p>                              
                            <p class="desc">WINNER: Shubham Singh, Ajay Pandey, Kripa Shankar Pandey </p> 
                            <p class="desc">RUNNER UP: Atul Kumar, Aakrash Yadav  </p> 
                        </div>  
                    </a> 
                </li>  
                                <li> 
                    <a target="_blank" href="#"> 
                        <div class="numWrap"><div class="gol">4</div></div> 
                        <div class="adWrap"> 
                            <p class="title">DIGI CANVA</p>                              
                            <p class="desc">WINNER: Tahanee, Ankit Kumar Maurya </p> 
                            <p class="desc">RUNNER UP: Priyanshi Pandey  </p> 
                        </div>  
                    </a> 
                </li>  
                                <li> 
                    <a target="_blank" href="#"> 
                        <div class="numWrap"><div class="gol">5</div></div> 
                        <div class="adWrap"> 
                            <p class="title">GAMEDROID</p>                              
                            <p class="desc">WINNER: Geetika Gupta, Mona Gupta, Komal Gupta </p> 
                            <p class="desc">RUNNER UP: Shubham Singh, Ajay Pandey, Kripa Shankar Pandey  </p> 
                        </div>  
                    </a> 
                </li>  
                                <li> 
                    <a target="_blank" href="#"> 
                        <div class="numWrap"><div class="gol">6</div></div> 
                        <div class="adWrap"> 
                            <p class="title">PROJECTEX</p>                              
                            <p class="desc">WINNER: Aishwary Saigal, Suman Seth, Aman Kumar Gupta </p> 
                            <p class="desc">RUNNER UP: Aman Kumar Verma from AITH, Kanpur </p> 
                        </div>  
                    </a> 
                </li>  
                                <li> 
                    <a target="_blank" href="#"> 
                        <div class="numWrap"><div class="gol">7</div></div> 
                        <div class="adWrap"> 
                            <p class="title">TEXPLORE</p>                              
                            <p class="desc">WINNER: Navneet Chaudhary, Anoop Gupta </p> 
                            <p class="desc">RUNNER UP: Ankit Gupta, Vishal Maurya  </p> 
                        </div>  
                    </a> 
                </li>  
                                <li> 
                    <a target="_blank" href="#"> 
                        <div class="numWrap"><div class="gol">8</div></div> 
                        <div class="adWrap"> 
                            <p class="title">WEBBIT</p>                              
                            <p class="desc">WINNER: Atul Kumar, Aakrash Yadav, Srinkhla Verma </p> 
                            <p class="desc">RUNNER UP: Arpit Srivastava, Abhishek, Archit Patel  </p> 
                        </div>  
                    </a> 
                </li>  
                   
                            </ul> 

            </div> 
         	</section>
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
                             --%>   <!-- End Logo Item -->

                                <!-- Logo Item -->
                              <%--  <div class="logo-item">
                                    <img src="images/portfolio/download%20(5).png" width="100" height="60" alt="" />
                                </div>
                               --%> <!-- End Logo Item -->

                                <!-- Logo Item -->
                                <%--<div class="logo-item">
                                    <img src="images/portfolio/download%20(7).png" width="100" height="60" alt="" />
                                </div>
                              --%>  <!-- End Logo Item -->

                                <!-- Logo Item -->
                                <%--<div class="logo-item">
                                    <img src="images/portfolio/download%20(8).png" width="100" height="60" alt="" />
                                </div>
                              --%>  <!-- End Logo Item -->

                                <!-- Logo Item -->
                               <%-- <div class="logo-item">
                                    <img src="images/portfolio/images%20(1).png" width="100" height="60" alt="" />
                                </div>
                               --%> <!-- End Logo Item -->

                                <!-- Logo Item -->
                            <%--    <div class="logo-item">
                                    <img src="images/portfolio/download%20(6).png" width="100" height="60" alt="" />
                                </div>
                             --%>   <!-- End Logo Item -->

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
                            <a href="http://fgiet.ac.in" target="_blank">&copy; FGIET<span class="number">2017</span></a>.
                       
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
        <!-- Replace test API Key "AIzaSyAZsDkJFLS0b59q7cmW0EprwfcfUA8d9dg" with your own one below 
        **** You can get API Key here - https://developers.google.com/maps/documentation/javascript/get-api-key -->
        <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAZsDkJFLS0b59q7cmW0EprwfcfUA8d9dg"></script>
        <script type="text/javascript" src="js/gmap3.min.js"></script>
        <script type="text/javascript" src="js/jquery.simple-text-rotator.min.js"></script>
        <script type="text/javascript" src="js/all.js"></script>
        <script type="text/javascript" src="js/contact-form.js"></script>
        <script type="text/javascript" src="js/animations.min.js"></script>

</body>
</html>
