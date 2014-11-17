<?php
/**
 * @version		$Id: mod_skype_status.php 2012-03-31 s2software $
 * @package		Skype Status
 * @subpackage	mod_skype_status
 * @copyright	Copyright (C) 2012 - S2 Software, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */

// no direct access
defined('_JEXEC') or die;

class modSkypeStatusHelper
{
	public static function getSkypeStatus($username)
	{
		$remote_status = fopen ('http://mystatus.skype.com/'.$username.'.num', 'r');
		if (!$remote_status) {
			return '0';
			exit;
		}
		while (!feof ($remote_status)) {
			$value = fgets ($remote_status, 1024);
			fclose($remote_status);
			return trim($value);
		}
	}
}
