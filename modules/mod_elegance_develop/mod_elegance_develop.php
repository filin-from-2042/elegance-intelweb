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

$cFirstHeader = $params->get('plan_1_header');
$cFirstPrice = $params->get('plan_1_price');
$cFirstText = $params->get('plan_1_text');

$cSecondHeader = $params->get('plan_2_header');
$cSecondPrice = $params->get('plan_2_price');
$cSecondText = $params->get('plan_2_text');

$cThirdHeader = $params->get('plan_3_header');
$cThirdPrice = $params->get('plan_3_price');
$cThirdText = $params->get('plan_3_text');

$cFourthHeader = $params->get('plan_4_header');
$cFourthPrice = $params->get('plan_4_price');
$cFourthText = $params->get('plan_4_text');



require JModuleHelper::getLayoutPath('mod_elegance_develop', $params->get('layout', 'default'));
