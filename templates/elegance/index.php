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



<!--///////////////////////////////////////////////////////
       // About section 
       //////////////////////////////////////////////////////////-->


  <jdoc:include type="modules" name="position-about" />

<!--///////////////////////////////////////////////////////
       // End about section 
       //////////////////////////////////////////////////////////-->


  
<!--///////////////////////////////////////////////////////
       // Who We Are Section
       //////////////////////////////////////////////////////////-->


  <div class="exp service-parlex">
    <div class="exp-back">
      <div class="w-container">
        <div id="who-v-animation">
        <div class="wrap">
          <div class="w-row exp-des">
            <div class="w-col w-col-6 exp-col1">
              <div class="col1-div">
                <div class="experinc-box">
                <h3 class="experinc-box-h3">Who We Are</h3>
                <p>At Elegance, we have highly skilled and professional team of dedicated web professionals to take care of your projects. 
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse varius enim in eros elementum tristique. Duis cursus, mi quis viverra ornare, eros dolor interdum nulla, ut commodo diam libero vitae erat. </br> Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                <div class="buttons">
                <div class="btn-ex-one">
                  <a class="ex-btn" href="#">Read More</a>
                </div>
                <div class="btn-ex-two">
                  <a class="ex-btn-two" href="#">Buy Now!</a>
                </div>
              </div>
              </div>
              </div>
            </div>
            <div class="w-col w-col-6 exp-col2">
              <div class="col2-div">
                <img src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/images/who-we-are.png">
              </div>
            </div>
          </div>
        </div>
      </div>
      </div>
    </div>
  </div>



<!--///////////////////////////////////////////////////////
       // End Who We Are section 
       //////////////////////////////////////////////////////////-->



<!--///////////////////////////////////////////////////////
       // Call to action section 
       //////////////////////////////////////////////////////////--> 


  <div class="call-to-action">
    <div class="call-to-back">
      <div class="w-container">
        <div class="wrap">
          <div class="w-row call-row">
            <div class="w-col w-col-9 cal-col-1">
              <h3 class="call-to-h3">Elegance | Responsive Onepage HTML Tempalte</h3>
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse varius enim in eros elementum tristique.&nbsp;</p>
            </div>
            <div class="w-col w-col-3"><a class="call-to-butn" href="#">Buy Now!</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>


<!--///////////////////////////////////////////////////////
       // End call to action section 
       //////////////////////////////////////////////////////////-->


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

  <div class="process-parlex">
    <div class="parlex2-back">
      <div class="w-container">
        <div class="wrap">
          <div class="process">
            <h1 class="our-process-heading">OUR PROCESS</h1>
            <div class="sepreater"></div>
          </div>
          <div class="process-text">
            <div class="process-text">Our process is straight forward, simple, &amp; successful.</div>
            <div class="w-row">
              <div class="w-col w-col-3">
                <div class="hi-icon-wrap hi-icon-effect-5 hi-icon-effect-5a">
                   <a href="#set-1" class="hi-icon hi-icon-locked">Security</a>
                </div>
                <h4 class="our-process-sys">BRAINSTORM</h4>
                <p class="process-paragraph">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse varius enim in eros elementum tristique. Duis cursus, mi quis viverra ornare, eros dolor interdum nulla, ut commodo diam libero vitae erat. Aenean faucibus nibh et justo
                  cursus id rutrum lorem imperdiet. Nunc ut sem vitae risus tristique posuere.</p>
              </div>
              <div class="w-col w-col-3">
                <div class="hi-icon-wrap hi-icon-effect-5 hi-icon-effect-5a">
          <a href="#set-1" class="hi-icon hi-icon-mobile">Mobile</a>
        </div>
                <h4 class="our-process-sys">PLAN</h4>
                <p class="process-paragraph">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse varius enim in eros elementum tristique. Duis cursus, mi quis viverra ornare, eros dolor interdum nulla, ut commodo diam libero vitae erat. Aenean faucibus nibh et justo
                  cursus id rutrum lorem imperdiet. Nunc ut sem vitae risus tristique posuere.</p>
              </div>
              <div class="w-col w-col-3">
                <div class="hi-icon-wrap hi-icon-effect-5 hi-icon-effect-5a">
          <a href="#set-1" class="hi-icon hi-icon-screen">Desktop</a>
        </div>
                <h4 class="our-process-sys">DESIGN</h4>
                <p class="process-paragraph">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse varius enim in eros elementum tristique. Duis cursus, mi quis viverra ornare, eros dolor interdum nulla, ut commodo diam libero vitae erat. Aenean faucibus nibh et justo
                  cursus id rutrum lorem imperdiet. Nunc ut sem vitae risus tristique posuere.</p>
              </div>
              <div class="w-col w-col-3">
                <div class="hi-icon-wrap hi-icon-effect-5 hi-icon-effect-5a">
          <a href="#set-1" class="hi-icon hi-icon-earth">Partners</a>
        </div>
                <h4 class="our-process-sys">DEVELOP</h4>
                <p class="process-paragraph">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse varius enim in eros elementum tristique. Duis cursus, mi quis viverra ornare, eros dolor interdum nulla, ut commodo diam libero vitae erat. Aenean faucibus nibh et justo
                  cursus id rutrum lorem imperdiet. Nunc ut sem vitae risus tristique posuere.</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

<!--///////////////////////////////////////////////////////
       // End Process section 
       //////////////////////////////////////////////////////////-->

<!--///////////////////////////////////////////////////////
       // Porfolio section 
       //////////////////////////////////////////////////////////-->

  <div class="portfolio-parlex" id="portfolio">
    <div class="parlex3-back">
      <div class="w-container">
        <div class="wrap">
          <div class="portfolio">
            <h1 class="portfolio-heading">PORTFOLIO</h1>
            <div class="portfolio-text">OUR WORK</div>
            <div class="sepreater"></div>
          </div>
          <p class="porfolio-paragraph">THE BEST RESULTS ARE OBTAINED BY TASKING THE RIGHT PEOPLE TO THE RIGHT PROJECT
            <br>We do what we love. Our clients love what we do.</p>
            <div class="container demo-1">
      <ul class="grid cs-style-1">
        <li>
          <figure>
            <img class="portfolio-images" src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/images/portfolio/1.jpg" alt="img01">
            <figcaption>
              <h3>Camera</h3>
              <span>Jacob Cummings</span>
              <a href="#">Take a look</a>
            </figcaption>
          </figure>
        </li>
        <li>
          <figure>
            <img class="portfolio-images" src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/images/portfolio/2.jpg" alt="img02">
            <figcaption>
              <h3>Music</h3>
              <span>Jacob Cummings</span>
              <a href="#">Take a look</a>
            </figcaption>
          </figure>
        </li>
        <li>
          <figure>
            <img class="portfolio-images" src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/images/portfolio/4.jpg" alt="img04">
            <figcaption>
              <h3>Settings</h3>
              <span>Jacob Cummings</span>
              <a href="#">Take a look</a>
            </figcaption>
          </figure>
        </li>
        <li>
          <figure>
            <img class="portfolio-images" src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/images/portfolio/5.jpg" alt="img05">
            <figcaption>
              <h3>Safari</h3>
              <span>Jacob Cummings</span>
              <a href="#">Take a look</a>
            </figcaption>
          </figure>
        </li>
        <li>
          <figure>
            <img class="portfolio-images" src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/images/portfolio/3.jpg" alt="img03">
            <figcaption>
              <h3>Phone</h3>
              <span>Jacob Cummings</span>
              <a href="#">Take a look</a>
            </figcaption>
          </figure>
        </li>
        <li>
          <figure>
            <img class="portfolio-images" src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/images/portfolio/6.jpg" alt="img06">
            <figcaption>
              <h3>Game Center</h3>
              <span>Jacob Cummings</span>
              <a href="#">Take a look</a>
            </figcaption>
          </figure>
        </li>
        <li>
          <figure>
            <img class="portfolio-images" src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/images/portfolio/7.jpg" alt="img06">
            <figcaption>
              <h3>Game Center</h3>
              <span>Jacob Cummings</span>
              <a href="#">Take a look</a>
            </figcaption>
          </figure>
        </li>
        <li>
          <figure>
            <img class="portfolio-images" src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/images/portfolio/8.jpg" alt="img06">
            <figcaption>
              <h3>Game Center</h3>
              <span>Jacob Cummings</span>
              <a href="#">Take a look</a>
            </figcaption>
          </figure>
        </li>
        <li>
          <figure>
            <img class="portfolio-images" src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/images/portfolio/9.jpg" alt="img06">
            <figcaption>
              <h3>Game Center</h3>
              <span>Jacob Cummings</span>
              <a href="#">Take a look</a>
            </figcaption>
          </figure>
        </li>
      </ul>
    </div><!-- /container -->
        </div>
      </div>
    </div>
  </div>

<!--///////////////////////////////////////////////////////
       // End Porfolio section 
       //////////////////////////////////////////////////////////-->

<!--///////////////////////////////////////////////////////
       // Our-plan section 
       //////////////////////////////////////////////////////////-->

  <div class="our-plan-parlex">
    <div class="parlex4-back">
      <div class="w-container">
        <div class="wrap">
          <div class="our-plans">
            <h1 class="ourplan-heading">OUR PLANS</h1>
            <div class="our-plan-text">SELECT YOUR BEST PLAN</div>
          </div>
          <div class="sepreater"></div>
          <p class="our-plan-paragraph">As a creative studio we believe no client is too big nor too small to work with us. We love what we do. And that shows.
            <br>We like to create things with fun, like-minded people.</p>
          <div class="w-row">
            <div class="w-col w-col-3">
              <div class="plan1">
                <div class="plan1-ser1">
                  <h4>PERSONAL SITE</h4>
                  <div class="price">$15 / Month</div>
                </div>
                <p class="plan1-ser1-para">
                  <br>Unlimited&nbsp;Email-Addresses
                  <br>
                  <br>50GB&nbsp;Disk&nbsp;Space
                  <br>
                  <br>Unlimited&nbsp;MySQL-Databases
                  <br>
                  <br>Unlimited&nbsp;Domains
                  <br>
                  <br>Free&nbsp;Billing Systems</p><a class="plan-1-butn" href="#">Sign Up!</a>
              </div>
            </div>
            <div class="w-col w-col-3">
              <div class="plan1 plan2">
                <div class="plan2-ser2">
                  <h4>SMALL BUSINESS</h4>
                  <div class="price">$25 / Month</div>
                </div>
                <p class="plan1-ser1-para">
                  <br>Unlimited&nbsp;Email-Addresses
                  <br>
                  <br>80GB&nbsp;Disk&nbsp;Space
                  <br>
                  <br>Unlimited&nbsp;MySQL-Databases
                  <br>
                  <br>Unlimited&nbsp;Domains
                  <br>
                  <br>Free&nbsp;Billing Systems</p><a class="plan-1-butn2 plan-1-butn" href="#">Sign Up!</a>
              </div>
            </div>
            <div class="w-col w-col-3">
              <div class="plan1 plan3">
                <div class="plan1-ser1 plan3-ser3">
                  <h4>CORPORATE SITE</h4>
                  <div class="price">$50 / Month</div>
                </div>
                <p class="plan1-ser1-para">
                  <br>Unlimited&nbsp;Email-Addresses
                  <br>
                  <br>120GB&nbsp;Disk&nbsp;Space
                  <br>
                  <br>Unlimited&nbsp;MySQL-Databases
                  <br>
                  <br>Unlimited&nbsp;Domains
                  <br>
                  <br>Free&nbsp;Billing Systems</p><a class="plan-1-butn plan-1-butn3" href="#">Sign Up!</a>
              </div>
            </div>
            <div class="w-col w-col-3">
              <div class="plan1 plan4">
                <div class="plan1-ser1 plan4-ser4">
                  <h4>E-COMMERCE SITE</h4>
                  <div class="price">$90&nbsp;/ Month</div>
                </div>
                <p class="plan1-ser1-para">
                  <br>Unlimited&nbsp;Email-Addresses
                  <br>
                  <br>120GB&nbsp;Disk&nbsp;Space
                  <br>
                  <br>Unlimited&nbsp;MySQL-Databases
                  <br>
                  <br>Unlimited&nbsp;Domains
                  <br>
                  <br>Free&nbsp;Billing Systems</p><a class="plan-1-butn plan-4-butn4" href="#">Sign Up!</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

<!--///////////////////////////////////////////////////////
       // End Our-Plan section 
       //////////////////////////////////////////////////////////-->

<!--///////////////////////////////////////////////////////
       // Team section 
       //////////////////////////////////////////////////////////-->

  <div class="team-parlex" id="team">
    <div class="parlex5-back">
      <div class="w-container">
        <div class="wrap">
          <div class="team">
            <h1 class="team">TEAM</h1>
            <div class="sepreater team-sep"></div>
          </div>
          <div class="team-text">
            <p class="team-text-para">We are Elegance. We offer creative solutions for every web-based project you can think of.&nbsp;
              <br>We take pride in our work and everything we create is executed with precision and love.</p>
          </div>
          <div class="w-row team-member">
            <div class="w-col w-col-4">
              <div class="team-section">
                <div class="team-image">
                  <img class="team-img" src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/images/team/image1.png" alt="52dd1e57e64ce6cb200004f3_image1.png">
                </div>
                <div class="team-des">
                  <h4 class="team-name">JANE ANISTON</h4>
                  <div class="team-name-des">Creative Director</div>
                </div>
                <div class="team-social">
                  <div class="w-clearfix social-section">
                    <a href="https://www.facebook.com/"><img class="social" src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/images/social/Facebook.png" alt="52dd249c929b601f5400054c_Facebook.png"></a>
                    <a href="https://www.twitter.com/"><img class="social" src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/images/social/Twitter.png" alt="52dd24f2929b601f54000551_Twitter.png"></a>
                    <a href="https://www.linkedin.com/"><img class="social" src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/images/social/Linkedin.png" alt="52dd2672e64ce6cb2000053a_Linkedin.png"></a>
                    <a href="https://plus.google.com/"><img class="social" src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/images/social/Google-plus.png" alt="52dd26a55b54031d540005af_Google-plus.png"></a>
                    <a href="https://www.rss.com/"><img class="social" src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/images/social/RSS.png" alt="52dd26d25b54031d540005b4_RSS.png"></a>
                  </div>
                </div>
              </div>
            </div>
            <div class="w-col w-col-4">
              <div class="team-section">
                <div class="team-image">
                  <img class="team-img" src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/images/team/image2.png" alt="52dd1edfe64ce6cb200004fb_image2.png">
                </div>
                <div class="team-des">
                  <h4 class="team-name">JOHN DOE</h4>
                  <div class="team-name-des">Lead Developer</div>
                </div>
                <div class="team-social">
                  <div class="w-clearfix social-section">
                    <a href="https://www.facebook.com/"><img class="social" src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/images/social/Facebook.png" alt="52dd249c929b601f5400054c_Facebook.png"></a>
                    <a href="https://www.twitter.com/"><img class="social" src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/images/social/Twitter.png" alt="52dd24f2929b601f54000551_Twitter.png"></a>
                    <a href="https://www.linkedin.com/"><img class="social" src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/images/social/Linkedin.png" alt="52dd2672e64ce6cb2000053a_Linkedin.png"></a>
                    <a href="https://plus.google.com/"><img class="social" src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/images/social/Google-plus.png" alt="52dd26a55b54031d540005af_Google-plus.png"></a>
                    <a href="https://www.rss.com/"><img class="social" src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/images/social/RSS.png" alt="52dd26d25b54031d540005b4_RSS.png"></a>
                  </div>
                </div>
              </div>
            </div>
            <div class="w-col w-col-4">
              <div class="team-section">
                <div class="team-image">
                  <img class="team-img" src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/images/team/image3.png" alt="52dd1efcad165eca20000539_image3.png">
                </div>
                <div class="team-des">
                  <h4 class="team-name">TANE NISTON</h4>
                  <div class="team-name-des">Graphic Designer</div>
                </div>
                <div class="team-social">
                  <div class="w-clearfix social-section">
                    <a href="https://www.facebook.com/"><img class="social" src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/images/social/Facebook.png" alt="52dd249c929b601f5400054c_Facebook.png"></a>
                    <a href="https://www.twitter.com/"><img class="social" src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/images/social/Twitter.png" alt="52dd24f2929b601f54000551_Twitter.png"></a>
                    <a href="https://www.linkedin.com/"><img class="social" src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/images/social/Linkedin.png" alt="52dd2672e64ce6cb2000053a_Linkedin.png"></a>
                    <a href="https://plus.google.com/"><img class="social" src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/images/social/Google-plus.png" alt="52dd26a55b54031d540005af_Google-plus.png"></a>
                    <a href="https://www.rss.com/"><img class="social" src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/images/social/RSS.png" alt="52dd26d25b54031d540005b4_RSS.png"></a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

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

  <div class="contact-parlex" id="contact">
    <div class="parlex8-back">
      <div class="w-container">
        <div class="wrap">
          <div class="contact-div">
            <h1 class="contact-heading">CONTACT</h1>
            <div class="sepreater"></div>
          </div>
          <p class="contact-para">Thanks for taking the time to contact us!
            <br>We do our best to respond to quickly, it could take us 1-2 business days to get back to you. Feel free to say hello!</p>
          <div class="w-form">
            <form action="contact.php" method="post">
            <label for="name">Name:</label>
             <input class="w-input" type="text" placeholder="Enter your name" name="cf_name">
           <label for="email">Email Address:</label>
             <input class="w-input" placeholder="Enter your email address" type="text" name="cf_email" required="required">
           <label for="email">Your Message:</label>
             <textarea class="w-input message" placeholder="Enter your Message Here" name="cf_message"></textarea><br>
           <input class="w-button" type="submit" value="Send">
         </form>
          <div class="w-form-done">
              <p>Thank you! Your submission has been received!</p>
            </div>
            <div class="w-form-fail">
              <p>Oops! Something went wrong while submitting the form :(</p>
            </div>
          </div>
        </div>
      </div>
      <div class="w-widget w-widget-map contac-map" data-widget-latlng="37.782163,-122.400591" data-widget-style="roadmap" data-widget-zoom="10" data-widget-tooltip="Carino Headquater"></div>
      <div class="w-container">
        <div class="w-row contact-col">
          <div class="w-col w-col-4 contact-col1">
            <div>
                      <div class="hi-icon-wrap hi-icon-effect-5 hi-icon-effect-5a">
                       <a href="#set-5" class="hi-icon hi-icon-earth">Partners</a>
                    </div>
              <h4 class="contact-col-head">Visit Us</h4>
            </div>
            <div>
              <div class="contact-col-text">795 Folsom St., Suite 600
                <br>San Francisco, CA 94107</div>
            </div>
          </div>
          <div class="w-col w-col-4 contact-col2">
            <div>
               <div class="hi-icon-wrap hi-icon-effect-5 hi-icon-effect-5a">
                       <a href="#set-5" class="hi-icon hi-icon-mail">Partners</a>
                    </div>
              <h4 class="contact-col-head">Mail us</h4>
            </div>
            <div>
              <div class="contact-col-text">general: office@elegance.com
                <br>support: support@elegance.com</div>
            </div>
          </div>
          <div class="w-col w-col-4 contact-col3">
            <div>
              <div class="hi-icon-wrap hi-icon-effect-5 hi-icon-effect-5a">
                       <a href="#set-5" class="hi-icon hi-icon-mobile">Partners</a>
                    </div>
              <h4 class="contact-col-head">Call Us</h4>
            </div>
            <div>
              <div class="contact-col-text-bar-last">P: (452) 123-8970
                <br>F: (452) 123-8971</div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

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
  <script type="text/javascript" src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/js/carousels.js"></script>
  <script type="text/javascript" src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/js/slider-modernizr.js"></script>
  <script src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/js/classie.js"></script>
  <script src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/js/portfolio-effects.js"></script>
  <script src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/js/toucheffects.js"></script>
  <script src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/js/modernizr.js"></script>
  <script src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/   js/animation.js"></script>

</body>
</html>