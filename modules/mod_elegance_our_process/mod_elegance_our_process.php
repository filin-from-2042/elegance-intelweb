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

$cConceptHeader = $params->get('concept_header');
$cConceptText = $params->get('concept_text');

$cSpecificationHeader = $params->get('specification_header');
$cSpecificationText = $params->get('specification_text');

$cLayoutHeader = $params->get('layout_header');
$cLayoutText = $params->get('layout_text');

$cProgrammingHeader = $params->get('programming_header');
$cProgrammingText = $params->get('programming_text');


require JModuleHelper::getLayoutPath('mod_elegance_our_process', $params->get('layout', 'default'));
