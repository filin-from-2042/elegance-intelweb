<?php
/**
 * @package     Joomla.Site
 * @subpackage  mod_menu
 *
 * @copyright   Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

// Note. It is important to remove spaces between elements.
?>

<!--
<nav class="w-nav-menu nav-menu" role="navigation">

                    <a class="w-nav-link menu-li" href="#home">HOME</a>
                    <a class="w-nav-link menu-li" href="#about">ABOUT</a>
                    <a class="w-nav-link menu-li" href="#service">SERVICES</a>
                    <a class="w-nav-link menu-li" href="#portfolio">PORTFOLIO</a>
                    <a class="w-nav-link menu-li"href="#team">TEAM</a>
                    <a class="w-nav-link menu-li" href="#contact">CONTACT</a>
                  </nav>-->

<?php // The menu class is deprecated. Use nav instead. ?>
<nav class="w-nav-menu nav-menu menu<?php echo $class_sfx;?>"<?php
$tag = '';

if ($params->get('tag_id') != null)
{
    $tag = $params->get('tag_id') . '';
    echo ' id="' . $tag . '"';
}
?> role="navigation">



<?php
foreach ($list as $i => &$item)
{
	$class = 'item-' . $item->id;

	if ($item->id == $active_id)
	{
		$class .= ' current';
	}

	if (in_array($item->id, $path))
	{
		$class .= ' active';
	}
	elseif ($item->type == 'alias')
	{
		$aliasToId = $item->params->get('aliasoptions');

		if (count($path) > 0 && $aliasToId == $path[count($path) - 1])
		{
			$class .= ' active';
		}
		elseif (in_array($aliasToId, $path))
		{
			$class .= ' alias-parent-active';
		}
	}

	if ($item->type == 'separator')
	{
		$class .= ' divider';
	}

	if ($item->deeper)
	{
		$class .= ' deeper';
	}

	if ($item->parent)
	{
		$class .= ' parent';
	}

	if (!empty($class))
	{
		$class = ' class="' . trim($class) . '"';
	}

//	echo '<li' . $class . '>';

	// Render the menu item.
	switch ($item->type) :
		case 'separator':
		case 'url':
		case 'component':
		case 'heading':
			require JModuleHelper::getLayoutPath('mod_menu', 'default_' . $item->type);
			break;

		default:
			require JModuleHelper::getLayoutPath('mod_menu', 'default_url');
			break;
	endswitch;

	// The next item is deeper.
	if ($item->deeper)
	{
		echo '<ul class="nav-child unstyled small">';
	}
	elseif ($item->shallower)
	{
		// The next item is shallower.
		echo '</li>';
		echo str_repeat('</ul></li>', $item->level_diff);
	}
	else
	{
		// The next item is on the same level.
		echo '</li>';
	}
}
?></nav>
