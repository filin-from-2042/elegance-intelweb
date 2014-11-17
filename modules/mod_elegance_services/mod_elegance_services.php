<?php
/**
 * Created by PhpStorm.
 * User: Set
 * Date: 09.11.14
 * Time: 21:39
 */
defined('_JEXEC') or die('Restricted access');

$cBase = JURI::base();
$oDocument 	= JFactory::getDocument();

// Text params
$cHeader = $params->get('header');
$cSubHeader = $params->get('sub_header');
$cContent = $params->get('text');

// Content params
$cFirstImage =  $params->get('first_image');
$cFirstImageText =  $params->get('first_image_text');

$cSecondImage =  $params->get('second_image');
$cSecondImageText =  $params->get('second_image_text');

$cThirdImage =  $params->get('third_image');
$cThirdImageText =  $params->get('third_image_text');

$cFourthImage =  $params->get('fourth_image');
$cFourthImageText =  $params->get('fourth_image_text');

// Layout rendering
require JModuleHelper::getLayoutPath('mod_elegance_services', $params->get('layout', 'default'));
