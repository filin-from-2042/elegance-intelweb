<?php

// No direct access.
defined('_JEXEC') or die;

?>

<footer id="gkFooter">
          <?php if($this->API->modules('footer_nav')) : ?>
          <div id="gkFooterNav">
                    <jdoc:include type="modules" name="footer_nav" style="<?php echo $this->module_styles['footer_nav']; ?>" modnum="<?php echo $this->API->modules('footer_nav'); ?>" />
          </div>
          <?php endif; ?>
          <?php if($this->API->get('copyrights', '') !== '') : ?>
          <div id="gkCopyrights"><?php echo $this->API->get('copyrights', ''); ?></div>
          <?php else : ?>
          <div id="gkCopyrights">Template Design &copy; <a href="//www.gavick.com" title="Joomla Templates">Joomla Templates</a> GavickPro. All rights reserved.</div>
          <?php endif; ?>
          
         
		<?php if($this->API->get('stylearea', '0') == '1') : ?>
		<div id="gkStyleArea">
			<a href="?color1" id="gkColor1"><?php echo JText::_('TPL_GK_LANG_COLOR_1'); ?></a>
			<a href="?color2" id="gkColor2"><?php echo JText::_('TPL_GK_LANG_COLOR_2'); ?></a>
			<a href="?color3" id="gkColor3"><?php echo JText::_('TPL_GK_LANG_COLOR_3'); ?></a>
			<a href="?color4" id="gkColor4"><?php echo JText::_('TPL_GK_LANG_COLOR_4'); ?></a>
			<a href="?color5" id="gkColor5"><?php echo JText::_('TPL_GK_LANG_COLOR_5'); ?></a>
			<a href="?color6" id="gkColor6"><?php echo JText::_('TPL_GK_LANG_COLOR_6'); ?></a>
		</div>
		<?php endif; ?>
	          
          <?php if($this->API->get('framework_logo', '0') == '1') : ?>
          <a href="//gavick.com" id="gkFrameworkLogo" title="Gavern Framework">Gavern Framework</a>
          <?php endif; ?>
</footer>
