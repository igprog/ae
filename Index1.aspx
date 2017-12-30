﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index1.aspx.cs" Inherits="Index1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

   <meta charset="utf-8">
   <!-- <meta http-equiv="X-UA-Compatible" content="IE=edge">  -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Spend your holiday in Jardula, a quiet part of Brela, just 30 meters from the beautiful sandy beach.">
    <meta name="author" content="IG PROG, vl. Igor Gašparović">
    <meta name="robots" content="index, follow">

    <meta property="og:title" content="APARTMENTS ELVIRA - BRELA" />
    <meta property="og:description" content="Spend your holiday in Brela, the most beautiful place of Makarska Riviera and one of the most beautiful places on the Adriatic pearl of Croatian tourism. Brela is the perfect place for a quiet family holiday. They offer crystal clear sea, numerous sandy beaches and walking trails along the coast up to the very tops of the nearby Biokovo mountain." />
    <meta property="og:url" content="http://www.apartmentselvira.com" />
    <meta property="og:image" content="img/home/01.jpg" />
   
   <title>Apartments Elvira - private accommodation in Brela</title>
  
    <link href="css/Style.css" rel="stylesheet" />
    <link href="css/Responsive.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
    <!-- JsSocial -->
    <script type="text/javascript" src="https://cdn.jsdelivr.net/jquery.jssocials/1.2.1/jssocials.min.js"></script>
    <link type="text/css" rel="stylesheet" href="https://cdn.jsdelivr.net/jquery.jssocials/1.2.1/jssocials.css" />
    <link type="text/css" rel="stylesheet" href="https://cdn.jsdelivr.net/jquery.jssocials/1.2.1/jssocials-theme-flat.css" />
   <%-- <link type="text/css" rel="stylesheet" href="https://cdn.jsdelivr.net/jquery.jssocials/1.2.1/jssocials-theme-classic.css" />--%>
   <%-- <link type="text/css" rel="stylesheet" href="https://cdn.jsdelivr.net/jquery.jssocials/1.2.1/jssocials-theme-minima.css" />--%>
   <%-- <link type="text/css" rel="stylesheet" href="https://cdn.jsdelivr.net/jquery.jssocials/1.2.1/jssocials-theme-plain.css" />--%>
    <!-- end JsSocial -->
   

</head>
<body>
       <form id="form1" runat="server">
      


    <style>
  
        .navbar-wrapper {
            position: absolute;
            top: 20px;
            left: 0;
            width: 100%;
            height: 51px;
        }
        .navbar-wrapper > .container {
            padding: 0;
        }

        @media all and (max-width: 768px ){
            .navbar-wrapper {
                position: relative;
                top: 0px;
            }
        }
    </style>
    <div class="navbar-wrapper">

        <div class="container">
            <nav class="navbar navbar-inverse navbar-static-top" role="navigation" style="margin-bottom: 0px; filter: alpha(opacity=70); opacity: 0.7; background-color: #cc2900">
            <div class="container" style="padding-left:0px">
                <div class="navbar-header" style="background-color:#333333">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="Index.aspx"><h1 id="siteTitle" runat="server" style="font-size: 1em; color:White; font-weight: bold; padding: 0px 0px 0px 15px; margin: 0"></h1></a>
                </div>
               <asp:DropDownList ID="ddlLanguageSelector" CssClass="ddlLanguageSelector" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlLanguageSelector_SelectedIndexChanged">
                    </asp:DropDownList>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav" style="font-size:0.9em">
                        <asp:Literal ID="litTopNav" runat="server"></asp:Literal>
                    </ul>
                </div>
            </div>
        </nav>
        </div>
    </div>

    
    <div id="divBannerSlider" runat="server" style="min-height: 50px;">
     
        <div id="slider1_container" style="visibility: hidden; position: relative; margin: 0 auto;
        top: 0px; left: 0px; width: 1300px; height: 500px; overflow: hidden;">
    
            <div u="loading" style="position: absolute; top: 0px; left: 0px;">
                <div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block;
                top: 0px; left: 0px; width: 100%; height: 100%;">
                </div>
                <div style="position: absolute; display: block; background: url(img/loading.gif) no-repeat center center;
                top: 0px; left: 0px; width: 100%; height: 100%;">
                </div>
            </div>
     
            <div u="slides" style="cursor: move; position: absolute; left: 0px; top: 0px; width: 1300px; height: 500px; overflow: hidden;">
                <div>
                    <img u="image" src2="img/home/01.jpg" />
                </div>
                <div>
                    <img u="image" src2="img/home/02.jpg" />
                </div>
                <div>
                    <img u="image" src2="img/home/03.jpg" />
                </div>
                <div>
                    <img u="image" src2="img/home/04.jpg" />
                </div>
		        <div>
                    <img u="image" src2="img/home/05.jpg" />
                </div>
                <div>
                    <img u="image" src2="img/home/06.jpg" />
                </div>
                 <div>
                    <img u="image" src2="img/home/07.jpg" />
                </div>
                <div>
                    <img u="image" src2="img/home/08.jpg" />
                </div>
                <div>
                    <img u="image" src2="img/home/09.jpg" />
                </div>
                 <div>
                    <img u="image" src2="img/home/10.jpg" />
                </div>
            </div>
            
         
           
            <style>

                .jssorb21 {
                    position: absolute;
                }
                .jssorb21 div, .jssorb21 div:hover, .jssorb21 .av {
                    position: absolute;
                
                    width: 19px;
                    height: 19px;
                    text-align: center;
                    line-height: 19px;
                    color: white;
                    font-size: 12px;
                    background: url(img/b21.png) no-repeat;
                    overflow: hidden;
                    cursor: pointer;
                }
                .jssorb21 div { background-position: -5px -5px; }
                .jssorb21 div:hover, .jssorb21 .av:hover { background-position: -35px -5px; }
                .jssorb21 .av { background-position: -65px -5px; }
                .jssorb21 .dn, .jssorb21 .dn:hover { background-position: -95px -5px; }
            </style>
         
            <div u="navigator" class="jssorb21" style="bottom: 26px; right: 6px;">
            
                <div u="prototype"></div>
            </div>
          
            
            <style>
             
                .jssora21l, .jssora21r {
                    display: block;
                    position: absolute;
                
                    width: 55px;
                    height: 55px;
                    cursor: pointer;
                    background: url(img/a21.png) center center no-repeat;
                    overflow: hidden;
                }
                .jssora21l { background-position: -3px -33px; }
                .jssora21r { background-position: -63px -33px; }
                .jssora21l:hover { background-position: -123px -33px; }
                .jssora21r:hover { background-position: -183px -33px; }
                .jssora21l.jssora21ldn { background-position: -243px -33px; }
                .jssora21r.jssora21rdn { background-position: -303px -33px; }
            </style>
           
            <span u="arrowleft" class="jssora21l" style="top: 123px; left: 8px;">
            </span>
         
            <span u="arrowright" class="jssora21r" style="top: 123px; right: 8px;">
            </span>
           
        </div>
     
    </div>
   
 





   <div class="container marketing lead">
        <hr class="featurette-divider">
        <div class="row featurette">
            <div class="col-md-12">
                <img class="img-floatRight" alt="image" src="imgGallery/04.jpg">
                <asp:Literal ID="litMainDescription" runat="server"></asp:Literal>
            </div>
        </div>
        <hr class="featurette-divider">
        <div class="row featurette">
            <div class="col-md-12">
                <img class="img-floatLeft" data-src="holder.js/500x500/auto" alt="Generic placeholder image"
                    src="imgGallery/03.jpg">
                <asp:Literal ID="litHomeDescription" runat="server"></asp:Literal>
            </div>
        </div>
        <hr class="featurette-divider">
        <div class="row featurette">
            <div class="col-md-12">
                <img class="img-floatRight" data-src="holder.js/500x500/auto" alt="Generic placeholder image"
                    src="imgGallery/11.jpg">
                <asp:Literal ID="litApartmentsDescription" runat="server"></asp:Literal>
            </div>
        </div>
        <hr class="featurette-divider">
        <asp:Literal ID="litDistances" runat="server"></asp:Literal>
    </div>





   <%-- <div>
        <asp:ContentPlaceHolder id="ContentPlaceHolder1" runat="server">

        </asp:ContentPlaceHolder>
    </div>--%>

    <div id="divFooterLinks" runat="server">
    <asp:Literal ID="litFooterLinks" runat="server"></asp:Literal>
    </div>

    
 
        <footer>
        <div id="share"></div>

    <script>
        $("#share").jsSocials({
            shares: ["email", "twitter", "facebook", "googleplus", "linkedin", "pinterest", "stumbleupon", "whatsapp"]
        });
    </script>
            <div style="padding-top: 10px">
                <p class="pull-right"><a href="Administration" target="_blank"><i class="fa fa-user"></i> Admin</a></p>
                <p>&copy; IG PROG 2016. &middot; <a href="http://www.igprog.hr">www.igprog.hr</a> &middot; </p>
            </div>
        </footer>


         <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/jquery-1.9.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="docs.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="ie10-viewport-bug-workaround.js"></script>

    <!-- jssor slider scripts-->
    <!-- use jssor.slider.debug.js for debug -->
    <script type="text/javascript" src="js/jssor.slider.mini.js"></script>
    <script>
        jQuery(document).ready(function ($) {

            var options = {
                $FillMode: 2,                                       //[Optional] The way to fill image in slide, 0 stretch, 1 contain (keep aspect ratio and put all inside slide), 2 cover (keep aspect ratio and cover whole slide), 4 actual size, 5 contain for large image, actual size for small image, default value is 0
                $AutoPlay: true,                                    //[Optional] Whether to auto play, to enable slideshow, this option must be set to true, default value is false
                $Idle: 4000,                            //[Optional] Interval (in milliseconds) to go for next slide since the previous stopped if the slider is auto playing, default value is 3000
                $PauseOnHover: 1,                                   //[Optional] Whether to pause when mouse over if a slider is auto playing, 0 no pause, 1 pause for desktop, 2 pause for touch device, 3 pause for desktop and touch device, 4 freeze for desktop, 8 freeze for touch device, 12 freeze for desktop and touch device, default value is 1

                $ArrowKeyNavigation: true,   			            //[Optional] Allows keyboard (arrow key) navigation or not, default value is false
                $SlideEasing: $JssorEasing$.$EaseOutQuint,          //[Optional] Specifies easing for right to left animation, default value is $JssorEasing$.$EaseOutQuad
                $SlideDuration: 800,                               //[Optional] Specifies default duration (swipe) for slide in milliseconds, default value is 500
                $MinDragOffsetToSlide: 20,                          //[Optional] Minimum drag offset to trigger slide , default value is 20
                //$SlideWidth: 600,                                 //[Optional] Width of every slide in pixels, default value is width of 'slides' container
                //$SlideHeight: 300,                                //[Optional] Height of every slide in pixels, default value is height of 'slides' container
                $SlideSpacing: 0, 					                //[Optional] Space between each slide in pixels, default value is 0
                $Cols: 1,                                  //[Optional] Number of pieces to display (the slideshow would be disabled if the value is set to greater than 1), the default value is 1
                $ParkingPosition: 0,                                //[Optional] The offset position to park slide (this options applys only when slideshow disabled), default value is 0.
                $UISearchMode: 1,                                   //[Optional] The way (0 parellel, 1 recursive, default value is 1) to search UI components (slides container, loading screen, navigator container, arrow navigator container, thumbnail navigator container etc).
                $PlayOrientation: 1,                                //[Optional] Orientation to play slide (for auto play, navigation), 1 horizental, 2 vertical, 5 horizental reverse, 6 vertical reverse, default value is 1
                $DragOrientation: 1,                                //[Optional] Orientation to drag slide, 0 no drag, 1 horizental, 2 vertical, 3 either, default value is 1 (Note that the $DragOrientation should be the same as $PlayOrientation when $Cols is greater than 1, or parking position is not 0)

                $BulletNavigatorOptions: {                          //[Optional] Options to specify and enable navigator or not
                    $Class: $JssorBulletNavigator$,                 //[Required] Class to create navigator instance
                    $ChanceToShow: 2,                               //[Required] 0 Never, 1 Mouse Over, 2 Always
                    $AutoCenter: 1,                                 //[Optional] Auto center navigator in parent container, 0 None, 1 Horizontal, 2 Vertical, 3 Both, default value is 0
                    $Steps: 1,                                      //[Optional] Steps to go for each navigation request, default value is 1
                    $Rows: 1,                                      //[Optional] Specify lanes to arrange items, default value is 1
                    $SpacingX: 8,                                   //[Optional] Horizontal space between each item in pixel, default value is 0
                    $SpacingY: 8,                                   //[Optional] Vertical space between each item in pixel, default value is 0
                    $Orientation: 1,                                //[Optional] The orientation of the navigator, 1 horizontal, 2 vertical, default value is 1
                    $Scale: false                                   //Scales bullets navigator or not while slider scale
                },

                $ArrowNavigatorOptions: {                           //[Optional] Options to specify and enable arrow navigator or not
                    $Class: $JssorArrowNavigator$,                  //[Requried] Class to create arrow navigator instance
                    $ChanceToShow: 1,                               //[Required] 0 Never, 1 Mouse Over, 2 Always
                    $AutoCenter: 2,                                 //[Optional] Auto center arrows in parent container, 0 No, 1 Horizontal, 2 Vertical, 3 Both, default value is 0
                    $Steps: 1                                       //[Optional] Steps to go for each navigation request, default value is 1
                }
            };

            var jssor_slider1 = new $JssorSlider$("slider1_container", options);

            //responsive code begin
            //you can remove responsive code if you don't want the slider scales while window resizing
            function ScaleSlider() {
                var bodyWidth = document.body.clientWidth;
                if (bodyWidth)
                    jssor_slider1.$ScaleWidth(Math.min(bodyWidth, 1920));
                else
                    window.setTimeout(ScaleSlider, 30);
            }
            ScaleSlider();

            $(window).bind("load", ScaleSlider);
            $(window).bind("resize", ScaleSlider);
            $(window).bind("orientationchange", ScaleSlider);
            //responsive code end
        });
    </script>





    </form>
</body>
</html>
