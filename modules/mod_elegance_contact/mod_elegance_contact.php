<?php
/**
 * Created by PhpStorm.
 * User: Set
 * Date: 09.11.14
 * Time: 21:39
 */
defined('_JEXEC') or die('Restricted access');
require_once __DIR__ . '/helper.php';

$cBase = JURI::base();
$oDocument 	= JFactory::getDocument();
$cHeader = $params->get('header');
$cSubHeader = $params->get('sub_header');
$cMailUs = $params->get('mail_us');
$cCallUs = $params->get('call_us');


require JModuleHelper::getLayoutPath('mod_elegance_contact', $params->get('layout', 'default'));
