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
?>

<div class="skype-status-module">

<?php
	if ($text != '') {
		echo '<p>'.$text.'</p>';
	}
?>

<a id="skypeStatus_<?php echo $modid ?>" class="skype-status" href="skype:<?php echo $username ?>?<?php echo $command ?>"></a>

<?php
	if ($text_after != '') {
		echo '<p class="after">'.$text_after.'</p>';
	}
?>

<script type="text/javascript">
var module<?php echo $modid ?> = (function module<?php echo $modid ?>() {	// module namespace
	// to wait till ajax call end before querying new status
	var wait = false;
	
	// avoid showing loading animation every page change
	var savedStatus = jQuery.cookie('skype_status_<?php echo $modid ?>');
	showStatus(savedStatus);

	getStatus();
	
	<?php if ($interval > 0) {	// refresh intereval ?>
		setInterval(getStatus, <?php echo $interval * 1000 /* seconds to milliseconds */ ?>);
	<?php } ?>
	
	function getStatus() {
		if (wait) return;	// wait last ajax call
		
		wait = true;
		//console.log("<?php echo $modid ?>: <?php echo $username ?>");
		jQuery.get('<?php echo $module_dir.'/ajax.php?username='.$username ?>', function(status) {
			showStatus(status);
			// expire in 15 minutes
			/*var date = new Date();
			date.setTime(date.getTime() + (15 * 60 * 1000));*/
			jQuery.cookie('skype_status_<?php echo $modid ?>', status/*, {expires: date}*/);
			// (no expire date: expires when the browser is closed)
		}).always(function () {
			wait = false;
		});
	}
	
	function showStatus(status) {
		var img = '<?php echo $img_loading ?>';
		var alt = '';
		if (status !== null) {
			switch (status)
			{
				case '0':
				case '1':
					img = '<?php echo $img_offline ?>';
					alt = 'offline';
					break;
				case '2':
					img = '<?php echo $img_online ?>';
					alt = 'online';
					break;
				case '3':
					img = '<?php echo $img_away ?>';
					alt = 'away';
					break;
				case '5':
					img = '<?php echo $img_busy ?>';
					alt = 'busy';
					break;
				default:
					img = '<?php echo $img_offline ?>';
					alt = 'offline';
					break;
			}
		}
		
		jQuery('#skypeStatus_<?php echo $modid ?>').html('<img src="'+img+'" alt="'+alt+'" />');
	}
	
})();	// module namespace end
</script>

</div>