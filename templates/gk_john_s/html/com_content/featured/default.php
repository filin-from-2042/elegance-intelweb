<?php

// no direct access
defined('_JEXEC') or die;

JHtml::addIncludePath(JPATH_COMPONENT . '/helpers');

?>
<section class="blog-featured<?php echo $this->pageclass_sfx;?> no-bg itemList">
	<?php if( $this->params->get('show_page_heading') != 0 ) : ?>
	<header>
		<h1><?php echo $this->escape($this->params->get('page_heading')); ?></h1>
	</header>
	<?php endif; ?>

	<?php $leadingcount=0 ; ?>
	<?php if (!empty($this->lead_items)) : ?>
	<div class="items-leading">
		<?php foreach ($this->lead_items as &$item) : ?>
			<div class="leading-<?php echo $leadingcount; ?><?php echo $item->state == 0 ? ' system-unpublished' : null; ?>">
				<?php
					$this->item = &$item;
					echo $this->loadTemplate('item');
				?>
			</div>
			<?php $leadingcount++; ?>
		<?php endforeach; ?>
	</div>
	<?php endif; ?>
	
	<?php
		$introcount=(count($this->intro_items));
		$counter=0;
	?>
	<?php if (!empty($this->intro_items)) : ?>
		<div class="items-row cols-<?php echo (int) $this->columns;?>">
		<?php for($i = 0; $i < $this->columns; $i++) : ?>
			<div class="column-<?php echo $i+1;?><?php echo $item->state == 0 ? ' system-unpublished' : null; ?>">
			<?php foreach ($this->intro_items as $key => &$item) : ?>
				<?php if($key % $this->columns == $i) : ?>	
					<?php
						$this->item = &$item;
						echo $this->loadTemplate('item');
					?>
				<?php endif; ?>
			<?php endforeach; ?>
			</div>
		<?php endfor; ?>
		</div>
	<?php endif; ?>

	<?php if (!empty($this->link_items)) : ?>
	<div class="items-more">
		<?php echo $this->loadTemplate('links'); ?>
	</div>
	<?php endif; ?>

	<?php if ($this->params->def('show_pagination', 2) == 1  || ($this->params->get('show_pagination') == 2 && $this->pagination->get('pages.total') > 1)) : ?>
	<?php echo str_replace('</ul>', '<li class="counter">'.$this->pagination->getPagesCounter().'</li>', $this->pagination->getPagesLinks()); ?>
	<?php endif; ?>
</section>
