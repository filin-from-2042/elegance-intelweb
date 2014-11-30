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
$cContent = $params->get('text');

$cElTitle = $params->get('elektrika_title');
$cElDescription = $params->get('elektrika_description');
$cElPreviewImage = $params->get('elektrika_preview_image');
$cElAltImage = $params->get('elektrika_alt_image');
$cElLink = $params->get('elektrika_link');


require JModuleHelper::getLayoutPath('mod_elegance_portfolio', $params->get('layout', 'default'));
