<?php

/**
 * @version   $Id: Filter31.php 19426 2014-03-03 23:43:44Z btowles $
 * @author    RocketTheme http://www.rockettheme.com
 * @copyright Copyright (C) 2007 - 2014 RocketTheme, LLC
 * @license   http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
 */
class RokSprocket_Provider_Joomla_Filter31 extends RokSprocket_Provider_Joomla_Filter
{
	protected function setBaseQuery()
	{
		parent::setBaseQuery(); // TODO: Change the autogenerated stub
		$this->query->select('CONCAT_WS(",", t.id) AS tag_ids, CONCAT_WS(",", t.title) AS tags');
		$this->query->join('LEFT', '#__contentitem_tag_map AS ct ON ct.content_item_id = a.id');
		$this->query->join('LEFT', '#__tags AS t ON t.id = ct.tag_id');
	}

	/**
	 * @param $data
	 *
	 * @return void
	 */
	protected function tag($data)
	{
		$wheres = array();
		if (!empty($data)) {

			foreach ($data as $match) {
				$wheres[] = $match . ' IN (CONCAT_WS(",", t.id))';
			}
			$this->filter_where[] = '(' . implode(' OR ', $wheres) . ')';

		}
	}
}
