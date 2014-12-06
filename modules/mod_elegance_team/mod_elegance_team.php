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
$cHeader = $params->get('header');
$cSubHeader = $params->get('sub_header');

$cPhotoFirst = $params->get('photo_first');
$cNameFirst = $params->get('name_first');
$cDescFirst = $params->get('desc_first');

$cPhotoSecond = $params->get('photo_second');
$cNameSecond = $params->get('name_second');
$cDescSecond = $params->get('desc_second');

$cPhotoThird = $params->get('photo_third');
$cNameThird = $params->get('name_third');
$cDescThird = $params->get('desc_third');

require JModuleHelper::getLayoutPath('mod_elegance_team', $params->get('layout', 'default'));
