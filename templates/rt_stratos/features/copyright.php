<?php
/**
 * @version   $Id: copyright.php 11733 2013-06-26 12:39:42Z arifin $
 * @author    RocketTheme http://www.rockettheme.com
 * @copyright Copyright (C) 2007 - 2013 RocketTheme, LLC
 * @license   http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
 *
 * Gantry uses the Joomla Framework (http://www.joomla.org), a GNU/GPLv2 content management system
 *
 */

defined('JPATH_BASE') or die();

gantry_import('core.gantryfeature');
/**
 * @package     gantry
 * @subpackage  features
 */
class GantryFeatureCopyright extends GantryFeature
{
	var $_feature_name = 'copyright';

	function render($position)
	{
		ob_start();
		?>
	<div class="clear"></div>
	<div class="rt-copyright-text rt-block">
		<a href="http://www.intelweb-nsk.ru/" title="IntelWeb-Nsk.ru" id="IntelWeb"></a>
		<?php echo $this->get('text'); ?>
	</div>
	<?php
		return ob_get_clean();
	}
}