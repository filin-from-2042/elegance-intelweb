<?php

// Joomla Framework
define('_JEXEC', 1);
define('DS', DIRECTORY_SEPARATOR );
// JPATH_BASE should point to Joomla!'s root directory
define('JPATH_BASE', realpath(dirname(__FILE__).DS.'..'.DS.'..'));

require_once ( JPATH_BASE .DS.'includes'.DS.'defines.php');
require_once ( JPATH_BASE .DS.'includes'.DS.'framework.php');
//$app = &JFactory::getApplication('site');
//$app->initialise();

// Module helper
jimport('joomla.application.module.helper');

// Include the syndicate functions only once
require_once dirname(__FILE__).'/helper.php';

/*
// Get module params
$module = JModuleHelper::getModule('skype_status');
$params = new JRegistry();
$params->loadString($module->params);
*/

// Get skype status icon
//$username = $params->get('username');
$username = $_GET['username'];
echo modSkypeStatusHelper::getSkypeStatus($username);
