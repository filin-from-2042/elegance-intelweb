<?php
/**
 * @version		$Id: mod_skype_status.php 2012-03-31 s2software $
 * @package		Skype Status
 * @subpackage	mod_skype_status
 * @copyright	Copyright (C) 2012 - S2 Software, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */

// no direct access
defined('_JEXEC') or die('Restricted access');

// Include the syndicate functions only once
require_once dirname(__FILE__).'/helper.php';

// Module directory
$module_dir = JURI::root(true).'/modules/mod_skype_status';

// Use module ID in view to make it unique in page (include module in the same page more than once)
$modid = $module->id;

// Skype username
$username =  $params->get('username');

// Refresh every (sec)
$interval = $params->get('refreshInterval', 60);

// Text to show
$text = $params->get('text', '');
$text_after = $params->get('textAfter', '');

// Command
$command = $params->get('command', 'add');

// Images
$images_folder = JURI::root(true).'/'.$params->get('imagesFolder', 'modules/skype_status/assets/images');
if (substr($images_folder, -1) == '/')
	$images_folder = substr($images_folder, 0, strlen($images_folder) - 1);
$img_loading = $images_folder.'/'.$params->get('loadingImage', 'loading.gif');
$img_online = $images_folder.'/'.$params->get('onlineImage', 'online_button.png');
$img_offline = $images_folder.'/'.$params->get('offlineImage', 'offline_button.png');
$img_away = $images_folder.'/'.$params->get('awayImage', 'away_button.png');
$img_busy = $images_folder.'/'.$params->get('busyImage', 'busy_button.png');

// CSS and JS
$css_style = $module_dir.'/assets/css/style.css';
$js_cookies = $module_dir.'/assets/js/jquery.cookie.js';

// Add CDN jQuery library
$document = JFactory::getDocument();

// Consider include jQuery option only in Joomla 2.5 and below
JLoader::import( 'joomla.version' );
$version = new JVersion();
if ($params->get('includejQuery', TRUE))
{
	if (version_compare($version->RELEASE, '2.5', '<='))
	{
		$document->addScript('http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js');
		$document->addScriptDeclaration('jQuery.noConflict()');
	}
	else
	{
		JHtml::_('jquery.framework');
	}
}

// jQuery Cookie
$document->addScript($js_cookies);

// CSS
$document->addStyleSheet($css_style);

require JModuleHelper::getLayoutPath('mod_skype_status', $params->get('layout', 'default'));
