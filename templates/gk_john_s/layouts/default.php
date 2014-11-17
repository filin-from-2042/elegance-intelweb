<?php

/**
 *
 * Default view
 *
 * @version             1.0.0
 * @package             Gavern Framework
 * @copyright			Copyright (C) 2010 - 2011 GavickPro. All rights reserved.
 *               
 */
 
// No direct access.
defined('_JEXEC') or die;
//
$app = JFactory::getApplication();
$user = JFactory::getUser();
// getting User ID
$userID = $user->get('id');
// getting params
$option = JRequest::getCmd('option', '');
$view = JRequest::getCmd('view', '');
// defines if com_users
define('GK_COM_USERS', $option == 'com_users' && ($view == 'login' || $view == 'registration'));
// other variables
$btn_login_text = ($userID == 0) ? JText::_('TPL_GK_LANG_LOGIN') : JText::_('TPL_GK_LANG_LOGOUT');

if($this->browser->get('browser') == 'ie8') {
	$this->page_suffix .= ' ie8mode';
}
// get the cookie pattern settings
if($this->API->get('template_pattern', 'none') >= 1) {
	$this->page_suffix .= ' pattern' . $this->API->get('template_pattern', 'none');
} else {
	$this->page_suffix .= ' ' . $this->API->get('template_pattern', 'none');
}

$current_style = ' style'.$this->API->get('template_style', 1);

if(isset($_COOKIE['gk_john_s_j25_style']) && is_numeric($_COOKIE['gk_john_s_j25_style'])) {
	$current_style = ' style' . $_COOKIE['gk_john_s_j25_style'];
}

$this->page_suffix .= $current_style;

$tpl_page_suffix = $this->page_suffix != '' ? ' class="'.$this->page_suffix.'"' : '';
// make sure that the modal will be loaded
JHTML::_('behavior.modal');

$menu_is_active = true;

if(in_array('frontpage', explode(' ', $this->page_suffix))) {
	$menu_is_active = false;
}

?>
<!DOCTYPE html>
<html lang="<?php echo $this->APITPL->language; ?>">
<head>
<?php $this->layout->addTouchIcon(); ?>
<?php if(
			$this->browser->get('browser') == 'ie6' || 
			$this->browser->get('browser') == 'ie7' || 
			$this->browser->get('browser') == 'ie8' || 
			$this->browser->get('browser') == 'ie9'
		) : ?>
<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1" />
<?php endif; ?>
<?php if($this->API->get('rwd', 1)) : ?>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=2.0">
<?php else : ?>
<meta name="viewport" content="width=<?php echo $this->API->get('template_width', 1020)+80; ?>">
<?php endif; ?>
<jdoc:include type="head" />
<?php $this->layout->loadBlock('head'); ?>
<?php $this->layout->loadBlock('cookielaw'); ?>
</head>
<body<?php echo $tpl_page_suffix; ?><?php if($this->browser->get("tablet") == true) echo ' data-tablet="true"'; ?><?php if($this->browser->get("mobile") == true) echo ' data-mobile="true"'; ?><?php $this->layout->generateLayoutWidths(); ?> data-section-nav-text="<?php echo JText::_('TPL_GK_LANG_SECTION_NAV_TEXT'); ?>">
	<?php
	     // put Google Analytics code
	     echo $this->social->googleAnalyticsParser();
	?>
	<div id="gkBg">	
		<?php if ($this->browser->get('browser') == 'ie7' || $this->browser->get('browser') == 'ie6'  || $this->browser->get('browser') == 'ie8') : ?>
		<!--[if lte IE 8]>
		<div id="ieToolbar"><div><?php echo JText::_('TPL_GK_LANG_IE_TOOLBAR'); ?></div></div>
		<![endif]-->
		<?php endif; ?>
	
		<div id="gkTop"<?php if($menu_is_active) : ?> class="active"<?php endif; ?>>	
		    <div class="gkPage">
			    <?php $this->layout->loadBlock('logo_small'); ?>
			    
			    <?php if($this->API->get('menu_type', 'aside') == 'classic') : ?>
			        <?php if($this->API->get('show_menu', 1)) : ?>
			        <div id="gkMobileMenu" class="gkPage"> <i id="mobile-menu-toggler" class="fa fa-bars"></i>
			            <label for="mobileMenu"><?php echo JText::_('TPL_GK_LANG_MOBILE_MENU_LABEL'); ?></label>
			            <select name="mobileMenu" id="mobileMenu" onChange="window.location.href=this.value;">
			                <?php 
			    		    	if($this->layout->isFrontpage()) {
			    		    		$this->mobilemenu->loadMenu($this->API->get('menu_name','mainmenu')); 
			    		    		$this->mobilemenu->genMenu($this->API->get('startlevel', 0), $this->API->get('endlevel',-1));
			    		    	} else {
			    		    		$this->mobilemenu->loadMenu($this->API->get('menu_name_subpages','mainmenu')); 
			    		    		$this->mobilemenu->genMenu($this->API->get('startlevel', 0), $this->API->get('endlevel',-1));
			    		    	}
			    			?>
			            </select>
			        </div>
			        <?php endif; ?>
			        
			        <?php if($this->API->get('show_menu', 1)) : ?>
			        <div id="gkMainMenu" class="gkPage">
			                <?php
			        			if($this->layout->isFrontpage()) {
			        				$this->mainmenu->loadMenu($this->API->get('menu_name','mainmenu')); 
			        				$this->mainmenu->genMenu($this->API->get('startlevel', 0), $this->API->get('endlevel',-1));
			        			} else {
			        				$this->mainmenu->loadMenu($this->API->get('menu_name_subpages','mainmenu')); 
			        				$this->mainmenu->genMenu($this->API->get('startlevel', 0), $this->API->get('endlevel',-1));
			        			}
			        		?>
			        </div>
			        <?php endif; ?>
			    <?php else : ?>
			    <i id="aside-menu-toggler" class="fa fa-bars"></i>
			    <?php endif; ?>
		    </div>
		</div>
	
		<div id="gkContentWrapper" class="gkPage">
	       	<?php if(count($app->getMessageQueue())) : ?>
	       	<div id="gkMessages" class="gkPage">
	       		<jdoc:include type="message" />
	       	</div>
	       	<?php endif; ?>
	       	
	       	<?php if($this->API->modules('header')) : ?>
	        <div id="gkHeader">
	             <?php $this->layout->loadBlock('logo'); ?>
	             
	             <?php if($this->API->modules('header')) : ?>
	             <jdoc:include type="modules" name="header" style="<?php echo $this->module_styles['header']; ?>" />
	             <?php endif; ?>
	        </div>
	        <?php endif; ?>
	        
	        <div id="gkPageContentWrap">
	            <div id="gkPageContent" class="gkPage">
	                <section id="gkContent"<?php if($this->API->get('sidebar_position', 'right') == 'left') : ?> class="gkColumnLeft"<?php endif; ?>>
	                    <?php if($this->API->modules('top1')) : ?>
	                    <div id="gkTop1" class="gkCols3<?php if($this->API->modules('top1') == 1) : ?> gkNoMargin<?php endif; ?>">
	                    	<div<?php if(isset($this->module_ids['top1'])) echo ' id="'.$this->module_ids['top1'].'"'; ?>>
	                            <jdoc:include type="modules" name="top1" style="<?php echo $this->module_styles['top1']; ?>"  modnum="<?php echo $this->API->modules('top1'); ?>" modcol="3" />
	                        </div>
	                    </div>
	                    <?php endif; ?>
	                    
	                    <?php if($this->API->modules('top2')) : ?>
	                    <div id="gkTop2" class="gkCols3<?php if($this->API->modules('top2') == 1) : ?> gkNoMargin<?php endif; ?>">
	                    	<div<?php if(isset($this->module_ids['top2'])) echo ' id="'.$this->module_ids['top2'].'"'; ?>>   
	                            <jdoc:include type="modules" name="top2" style="<?php echo $this->module_styles['top2']; ?>" modnum="<?php echo $this->API->modules('top2'); ?>" modcol="3" />
	                        </div>
	                    </div>
	                    <?php endif; ?>
	                    
	                    <?php if($this->API->modules('mainbody_top')) : ?>
	                    <div id="gkMainbodyTop">
	                    	<div<?php if(isset($this->module_ids['mainbody_top'])) echo ' id="'.$this->module_ids['mainbody_top'].'"'; ?>>
	                            <jdoc:include type="modules" name="mainbody_top" style="<?php echo $this->module_styles['mainbody_top']; ?>" />
	                        </div>
	                    </div>
	                    <?php endif; ?>
	                    
	                    <?php if($this->API->modules('breadcrumb')) : ?>
	                    <div id="gkBreadcrumb">
                             <div class="gkPage">
                                     <?php if($this->API->modules('breadcrumb')) : ?>
                                     <jdoc:include type="modules" name="breadcrumb" style="<?php echo $this->module_styles['breadcrumb']; ?>" />
                                     <?php endif; ?>
                             </div>
	                    </div>
	                    <?php endif; ?>
	                    
	                    <div id="gkMainbody">
	                        <div<?php if(isset($this->module_ids['mainbody'])) echo ' id="'.$this->module_ids['mainbody'].'"'; ?>>    
	                            <?php if(($this->layout->isFrontpage() && !$this->API->modules('mainbody')) || !$this->layout->isFrontpage()) : ?>
	                            <jdoc:include type="component" />
	                            <?php else : ?>
	                            <jdoc:include type="modules" name="mainbody" style="<?php echo $this->module_styles['mainbody']; ?>" />
	                            <?php endif; ?>
	                        </div>
	                    </div>
	                    
	                    <?php if($this->API->modules('mainbody_bottom')) : ?>
	                    <div id="gkMainbodyBottom">
	                         <div<?php if(isset($this->module_ids['mainbody_bottom'])) echo ' id="'.$this->module_ids['mainbody_bottom'].'"'; ?>>   
	                            <jdoc:include type="modules" name="mainbody_bottom" style="<?php echo $this->module_styles['mainbody_bottom']; ?>" />
	                         </div>
	                    </div>
	                    <?php endif; ?>
	                </section>
	                
	                <?php if($this->API->modules('sidebar')) : ?>
	                <aside id="gkSidebar"<?php if($this->API->modules('sidebar') == 1) : ?> class="gkOnlyOne"<?php endif; ?>>   
	                        <jdoc:include type="modules" name="sidebar" style="<?php echo $this->module_styles['sidebar']; ?>" />
	                </aside>
	                <?php endif; ?>
	            </div>
	            
	            <?php if($this->API->modules('bottom1')) : ?>
	            <div id="gkBottom1"<?php if($this->API->modules('bottom1') == 1) : ?> class="gkSingleModule"<?php endif; ?>>
                    <div class="gkCols6"<?php if(isset($this->module_ids['bottom1'])) echo ' id="'.$this->module_ids['bottom1'].'"'; ?>>
                        <jdoc:include type="modules" name="bottom1" style="<?php echo $this->module_styles['bottom1']; ?>" modnum="<?php echo $this->API->modules('bottom1'); ?>" />
                	</div>
	            </div>
	            <?php endif; ?>
	            
	            <?php if($this->API->modules('bottom2')) : ?>
	            <div id="gkBottom2"<?php if($this->API->modules('bottom2') == 1) : ?> class="gkSingleModule"<?php endif; ?>>
                    <div class="gkCols6"<?php if(isset($this->module_ids['bottom2'])) echo ' id="'.$this->module_ids['bottom2'].'"'; ?>>
                        <jdoc:include type="modules" name="bottom2" style="<?php echo $this->module_styles['bottom2']; ?>" modnum="<?php echo $this->API->modules('bottom2'); ?>" />
                    </div>
	            </div>
	            <?php endif; ?>
	            
	            <?php if($this->API->modules('bottom3')) : ?>
	            <div id="gkBottom3"<?php if($this->API->modules('bottom3') == 1) : ?> class="gkSingleModule"<?php endif; ?>>
	                <div class="gkCols6"<?php if(isset($this->module_ids['bottom3'])) echo ' id="'.$this->module_ids['bottom3'].'"'; ?>>
	                    <jdoc:include type="modules" name="bottom3" style="<?php echo $this->module_styles['bottom3']; ?>" modnum="<?php echo $this->API->modules('bottom3'); ?>" />
	                </div>
	            </div>
	            <?php endif; ?>
	            
	            <?php if($this->API->modules('bottom4')) : ?>
	            <div id="gkBottom4"<?php if($this->API->modules('bottom4') == 1) : ?> class="gkSingleModule"<?php endif; ?>>
	                <div class="gkCols6"<?php if(isset($this->module_ids['bottom4'])) echo ' id="'.$this->module_ids['bottom4'].'"'; ?>>
	                    <jdoc:include type="modules" name="bottom4" style="<?php echo $this->module_styles['bottom4']; ?>" modnum="<?php echo $this->API->modules('bottom4'); ?>" />
	                </div>
	            </div>
	            <?php endif; ?>
	            
	            <?php if($this->API->modules('bottom5')) : ?>
	            <div id="gkBottom5"<?php if($this->API->modules('bottom5') == 1) : ?> class="gkSingleModule"<?php endif; ?>>
	                <div class="gkCols6"<?php if(isset($this->module_ids['bottom5'])) echo ' id="'.$this->module_ids['bottom5'].'"'; ?>>
	                    <jdoc:include type="modules" name="bottom5" style="<?php echo $this->module_styles['bottom5']; ?>" modnum="<?php echo $this->API->modules('bottom5'); ?>" />
	                </div>
	            </div>
	            <?php endif; ?>
	            
	            <?php if($this->API->modules('bottom6')) : ?>
	            <div id="gkBottom6"<?php if($this->API->modules('bottom6') == 1) : ?> class="gkSingleModule"<?php endif; ?>>
	                <div class="gkCols6"<?php if(isset($this->module_ids['bottom6'])) echo ' id="'.$this->module_ids['bottom6'].'"'; ?>>
	                    <jdoc:include type="modules" name="bottom6" style="<?php echo $this->module_styles['bottom6']; ?>" modnum="<?php echo $this->API->modules('bottom6'); ?>" />
	                </div>
	            </div>
	            <?php endif; ?>
	        </div>
	        
	        <?php $this->layout->loadBlock('footer'); ?>
	        
	        <?php if($this->API->modules('lang')) : ?>
	        <div id="gkLang" class="gkPage">
	                <jdoc:include type="modules" name="lang" style="<?php echo $this->module_styles['lang']; ?>" />
	        </div>
	        <?php endif; ?>
		</div>
		
		<?php $this->layout->loadBlock('social'); ?>
		<jdoc:include type="modules" name="debug" />
	</div>
	
	<?php if($this->API->get('menu_type', 'aside') == 'aside') : ?>
	<i id="close-menu" class="fa fa-times"></i>
	<nav id="aside-menu">
		<div>
			<?php
				if($this->layout->isFrontpage()) {
					$this->asidemenu->loadMenu($this->API->get('menu_name','mainmenu')); 
		    		$this->asidemenu->genMenu($this->API->get('startlevel', 0), $this->API->get('endlevel',-1));
		    	} else {
		    		$this->asidemenu->loadMenu($this->API->get('menu_name_subpages','mainmenu')); 
		    		$this->asidemenu->genMenu($this->API->get('startlevel', 0), $this->API->get('endlevel',-1));
		    	}
			?>
		</div>
	</nav>
	<?php endif; ?>
	
	<script type="text/javascript">
		if(jQuery(window).width() > 600) {
			jQuery('.title-left .header').attr('data-scroll-reveal', 'enter left and move 50px over 0.45s').addClass('scroll-revealed');
			jQuery('.title-right .header').attr('data-scroll-reveal', 'enter right and move 50px over 0.45s').addClass('scroll-revealed');
			jQuery('.big-title .header').each(function(i, header) {
				header = jQuery(header);
				if(!header.hasClass('scroll-revealed') && !header.attr('data-scroll-reveal')) {
					header.attr('data-scroll-reveal', 'enter from the top and move 50px over 0.45s').addClass('scroll-revealed');
				}
			});
			jQuery(window).scrollReveal = new scrollReveal();
		}
	</script>
</body>
</html>