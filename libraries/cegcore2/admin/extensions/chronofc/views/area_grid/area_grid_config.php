<?php
/* @copyright:ChronoEngine.com @license:GPLv2 */defined('_JEXEC') or die('Restricted access');
defined("GCORE_SITE") or die;
?>
<script>
	function area_grid_add_columns(add_link, n){
		var columns_list = jQuery(add_link).closest('.config_area').find('.sections_list').first().val().split("\n");
		var view_name = jQuery(add_link).closest('.config_area').find('.view_name').first().val();
		
		var exists = [];
		jQuery(add_link).closest('.dragged_item').find('.view_section').each(function(i, section){
			if(jQuery.inArray(jQuery(section).data('title'), columns_list) == -1){
				jQuery(section).remove();
			}else{
				exists.push(jQuery(section).data('title'));
			}
		});
		
		//jQuery(add_link).closest('.dragged_item').find('.view_section').remove();
		jQuery.each(columns_list, function(i, section_name){
			section_name = jQuery.trim(section_name);
			var eve = jQuery('<div class="ui segment view_section draggable-receiver orange" data-name="'+view_name+'/'+section_name+'"><div class="ui label orange">'+section_name+'</div></div>');
			if(jQuery.inArray(section_name, exists) == -1){
				jQuery(add_link).closest('.dragged_item').append(eve);
			}
		});
		jQuery('body').trigger('contentChange');
	}
</script>
<div class="ui segment tab views-tab active" data-tab="views-<?php echo $n; ?>">
	
	<div class="ui top attached tabular menu small G2-tabs">
		<a class="item active" data-tab="views-<?php echo $n; ?>-general"><?php el('General'); ?></a>
		<a class="item" data-tab="views-<?php echo $n; ?>-permissions"><?php el('Permissions'); ?></a>
	</div>
	
	<div class="ui bottom attached tab segment active" data-tab="views-<?php echo $n; ?>-general">
		<input type="hidden" value="area_grid" name="Connection[views][<?php echo $n; ?>][type]">
		
		<div class="two fields advanced_conf">
			<div class="field">
				<label><?php el('Name'); ?></label>
				<input type="text" value="" name="Connection[views][<?php echo $n; ?>][name]" class="view_name">
			</div>
			<div class="field">
				<label><?php el('Category'); ?></label>
				<input type="text" value="" name="Connection[views][<?php echo $n; ?>][category]">
			</div>
		</div>
		
		<div class="field">
			<label><?php el('Class'); ?></label>
			<input type="text" value="ui two column grid" name="Connection[views][<?php echo $n; ?>][class]">
			<small><?php el('The number written here is the maximum number of columns per row.'); ?></small>
		</div>
		
		<div class="field">
			<label><?php el('Columns list'); ?></label>
			<textarea name="Connection[views][<?php echo $n; ?>][sections]" class="sections_list"><?php echo "column1\ncolumn2"; ?></textarea>
		</div>
		
		<button type="button" class="ui button small" onclick="area_grid_add_columns(this, <?php echo $n; ?>);"><?php el('Update columns'); ?></button>
		
		
	</div>
	
	<div class="ui bottom attached tab segment" data-tab="views-<?php echo $n; ?>-permissions">
		<div class="two fields">
			<div class="field">
				<label><?php el('Owner id value'); ?></label>
				<input type="text" value="" name="Connection[views][<?php echo $n; ?>][owner_id]">
				<small><?php el('The value of the owner id with which the owner permission will be checked.'); ?></small>
			</div>
			
			<div class="field">
				<label><?php el('Toggle switch'); ?></label>
				<input type="text" value="" name="Connection[views][<?php echo $n; ?>][toggler]">
				<small><?php el('If provided and is an empty value then the view will not be rendered.'); ?></small>
			</div>
		</div>
		
		<?php $this->view('views.permissions_manager', ['model' => 'Connection[views]['.$n.']', 'perms' => ['access' => rl('Access')], 'groups' => $this->get('groups')]); ?>
	</div>
	
	<button type="button" class="ui button compact red tiny close_config"><?php el('Close'); ?></button>
</div>