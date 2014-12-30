<?php

// No direct access.
defined('_JEXEC') or die;

JLoader::import('joomla.filesystem.file');
?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Elegance</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/css/jquery-ui.min.css">
  <link rel="stylesheet" type="text/css" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/css/normal.css">
  <link rel="stylesheet" type="text/css" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/css/style.css">
  <link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/css/animation.css">
  <script src="https://ajax.googleapis.com/ajax/libs/webfont/1.4.7/webfont.js"></script>
  <script>
    if (/mobile/i.test(navigator.userAgent)) document.documentElement.className += ' w-mobile';
  </script>
  <link rel="shortcut icon" type="image/x-icon" href="favicon.ico">
  <!--[if lt IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7/html5shiv.min.js"></script><![endif]-->
</head>
<body>
  <div class="fix-header" id="home">
    <div class="w-container">
      <div class="w-nav" data-collapse="medium" data-animation="default" data-duration="400"></div>
    </div>
  </div>
  <div class="fixed-header">
    <div class="w-container container">
      <div class="w-row">

       <!--///////////////////////////////////////////////////////
       // Logo section 
       //////////////////////////////////////////////////////////-->


        <div class="w-col w-col-3 logo">
          <a href="/"><img class="logo" src="images/logo.png" alt="Elegance"></a>
        </div>

        <!--///////////////////////////////////////////////////////
       // End Logo section 
       //////////////////////////////////////////////////////////-->

        <div class="w-col w-col-9">

       <!--///////////////////////////////////////////////////////
       // Menu section 
       //////////////////////////////////////////////////////////-->


          <div class="w-nav navbar" data-collapse="medium" data-animation="default" data-duration="400" data-contain="1">
            <div class="w-container nav">
                <jdoc:include type="modules" name="position-menu" />
              <div class="w-nav-button">
                <div class="w-icon-nav-menu"></div>
              </div>
            </div>
          </div>


          <!--///////////////////////////////////////////////////////
       // End Menu section 
       //////////////////////////////////////////////////////////-->


        </div>
      </div>
    </div>
  </div>

  <!--///////////////////////////////////////////////////////
       //  Slider section 
       //////////////////////////////////////////////////////////-->


  <div class="slidersection">
    <div class="sp-slideshow">
      
        <input id="button-1" type="radio" name="radio-set" class="sp-selector-1" checked="checked" />
        <label for="button-1" class="button-label-1"></label>
        
        <input id="button-2" type="radio" name="radio-set" class="sp-selector-2" />
        <label for="button-2" class="button-label-2"></label>
        
        <input id="button-3" type="radio" name="radio-set" class="sp-selector-3" />
        <label for="button-3" class="button-label-3"></label>
        
        <input id="button-4" type="radio" name="radio-set" class="sp-selector-4" />
        <label for="button-4" class="button-label-4"></label>
        
        <input id="button-5" type="radio" name="radio-set" class="sp-selector-5" />
        <label for="button-5" class="button-label-5"></label>
        
        <label for="button-1" class="sp-arrow sp-a1"></label>
        <label for="button-2" class="sp-arrow sp-a2"></label>
        <label for="button-3" class="sp-arrow sp-a3"></label>
        <label for="button-4" class="sp-arrow sp-a4"></label>
        <label for="button-5" class="sp-arrow sp-a5"></label>
        
        <div class="sp-content">
          <div class="sp-parallax-bg"></div>
          <ul class="sp-slider clearfix">
            <li><img src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/images/slider/slider1.png" alt="image01" /></li>
            <li><img src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/images/slider/slider2.png" alt="image02" /></li>
            <li><img src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/images/slider/slider3.png" alt="image03" /></li>
            <li><img src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/images/slider/slider4.png" alt="image04" /></li>
            <li><img src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/images/slider/slider5.png" alt="image05" /></li>
          </ul>
        </div><!-- sp-content -->
        
      </div><!-- sp-slideshow -->
  </div>


<!--///////////////////////////////////////////////////////
       // End slider section 
       //////////////////////////////////////////////////////////-->


  <jdoc:include type="modules" name="position-about" />


<!--///////////////////////////////////////////////////////
       // Service section 
       //////////////////////////////////////////////////////////-->

  <jdoc:include type="modules" name="position-services" />

<!--///////////////////////////////////////////////////////
       // End Service section 
       //////////////////////////////////////////////////////////-->


<!--///////////////////////////////////////////////////////
       // Process section 
       //////////////////////////////////////////////////////////-->

  <jdoc:include type="modules" name="position-our-process" />

<!--///////////////////////////////////////////////////////
       // End Process section 
       //////////////////////////////////////////////////////////-->

<!--///////////////////////////////////////////////////////
       // Porfolio section 
       //////////////////////////////////////////////////////////-->

  <jdoc:include type="modules" name="position-portfolio" />

<!--///////////////////////////////////////////////////////
       // End Porfolio section 
       //////////////////////////////////////////////////////////-->

<!--///////////////////////////////////////////////////////
       // Our-plan section 
       //////////////////////////////////////////////////////////-->

  <jdoc:include type="modules" name="position-develop" />

<!--///////////////////////////////////////////////////////
       // End Our-Plan section 
       //////////////////////////////////////////////////////////-->

<!--///////////////////////////////////////////////////////
       // Team section 
       //////////////////////////////////////////////////////////-->

  <jdoc:include type="modules" name="position-team" />

<!--///////////////////////////////////////////////////////
       // End Team section 
       //////////////////////////////////////////////////////////-->

<!--///////////////////////////////////////////////////////
       // Clients section 
       //////////////////////////////////////////////////////////-->

  <div class="clients-parlex">
    <div class="parlex6-back">
      <div class="w-container">
        <div class="wrap-client">
          <div class="clients-sub">
            <div id="clients">
        <div class="clients-wrap">
          <ul id="clients-list" class="clearfix">
            <li><img src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/images/clients/client-logo1.png" alt="logo"></li>
            <li><img src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/images/clients/client-logo2.png" alt="logo"></li>
            <li><img src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/images/clients/client-logo3.png" alt="logo"></li>
            <li><img src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/images/clients/client-logo4.png" alt="logo"></li>
            <li><img src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/images/clients/client-logo5.png" alt="logo"></li>
            <li><img src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/images/clients/client-logo6.png" alt="logo"></li>
          </ul>
        </div><!-- @end .clients-wrap -->
      </div><!-- @end #clients -->
          </div>
        </div>
      </div>
    </div>
  </div>

<!--///////////////////////////////////////////////////////
       // End Clients section 
       //////////////////////////////////////////////////////////-->

<!--///////////////////////////////////////////////////////
       // Contact section 
       //////////////////////////////////////////////////////////-->

  <jdoc:include type="modules" name="position-contact" />

<!--///////////////////////////////////////////////////////
       // End Contact section 
       //////////////////////////////////////////////////////////-->

<!--///////////////////////////////////////////////////////
       // Footer section 
       //////////////////////////////////////////////////////////-->  

  <div class="footer-parlex">
    <div class="parlex9-back">
      <div class="w-container">
        <div class="wrap">
          <img class="footer-logo" src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/images/footer-logo.png" alt="Elegance">
          <div class="footer-social">
            <div class="fotter-social-wrap">
              <a href="https://www.facebook.com/"><img class="fotter-social" src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/images/social/Facebook.png" alt="52dd249c929b601f5400054c_Facebook.png"></a>
              <a href="https://www.twitter.com/"><img class="fotter-social" src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/images/social/Twitter.png" alt="52dd24f2929b601f54000551_Twitter.png"></a>
              <a href="https://plus.google.com/"><img class="fotter-social" src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/images/social/Google-plus.png" alt="52dd26a55b54031d540005af_Google-plus.png"></a>
              <a href="https://www.blogger.com/"><img class="fotter-social" src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/images/social/Blogger.png" alt="52de52e7b6d2171f78000414_Blogger.png"></a>
              <a href="https://www.digg.com/"><img class="fotter-social" src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/images/social/Digg.png" alt="52de53174702a71e780003c3_Digg.png"></a>
              <a href="https://www.pinterest.com/"><img class="fotter-social" src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/images/social/Pinterest.png" alt="52de533c5d3566c1430003e9_Pinterest.png"></a>
              <a href="https://www.flicker.com/"><img class="fotter-social" src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/images/social/Flickr.png" alt="52de535f1b42bfc24300049e_Flickr.png"></a>
              <a href="https://www.vimeo.com/"><img class="fotter-social" src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/images/social/Vimeo.png" alt="52de537cb6d2171f7800041c_Vimeo.png"></a>
              <a href="https://www.myspace.com/"><img class="fotter-social" src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/images/social/Myspace.png" alt="52de53954702a71e780003c5_Myspace.png"></a>
              <a href="https://www.stumbleupon.com/"><img class="fotter-social" src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/images/social/Stumbleupn.png" alt="52de53c0b6d2171f7800041e_Stumbleupn.png"></a>
              <a href="https://www.tumblr.com/"><img class="fotter-social" src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/images/social/Tumblr.png" alt="52de54021b42bfc2430004a3_Tumblr.png"></a>
              <a href="https://www.youtube.com/"><img class="fotter-social" src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/images/social/Youtube.png" alt="52de54495d3566c14300040a_Youtube.png"></a>
            </div>
          </div>
          <div>
            <div class="fotter-text"><p class="fotter-quote">� THE LIGHT WITHIN US BOWS TO THE LIGHT WITHIN YOU. �</p>
              <p class="copyright-area">�2014 ELEGANCE. ALL RIGHTS RESERVED,TEMPLATE BY&nbsp;<a href="https://carinotech.com" title="Carino Technologies" target="_blank">CARINO TECHNOLOGIES</a></p></div>
          </div>
        </div>
      </div>
    </div>
  </div>

       <!--///////////////////////////////////////////////////////
       // End Footer section 
       //////////////////////////////////////////////////////////-->

  <script type="text/javascript" src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/js/jquery.js"></script>
  <script type="text/javascript" src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/js/normal.js"></script>
  <script type="text/javascript" src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/js/jquery-1.10.2.min.js"></script>
  <script type="text/javascript" src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/js/jquery-ui.min.js"></script>
  <script type="text/javascript" src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/js/carousels.js"></script>
  <script type="text/javascript" src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/js/slider-modernizr.js"></script>
  <script src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/js/classie.js"></script>
  <script src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/js/portfolio-effects.js"></script>
  <script src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/js/toucheffects.js"></script>
  <script src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/js/modernizr.js"></script>
  <script src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/js/animation.js"></script>
  <script src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/js/contact-form.js"></script>
  <script src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/js/develop.js"></script>

</body>
</html>