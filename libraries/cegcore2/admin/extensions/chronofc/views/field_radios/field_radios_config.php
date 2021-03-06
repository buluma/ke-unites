<?php
/* @copyright:ChronoEngine.com @license:GPLv2 */defined('_JEXEC') or die('Restricted access');
defined("GCORE_SITE") or die;
?>
<div class="ui segment tab views-tab active" data-tab="views-<?php echo $n; ?>">
	
	<div class="ui top attached tabular menu small G2-tabs">
		<a class="item active" data-tab="views-<?php echo $n; ?>-general"><?php el('General'); ?></a>
		<a class="item" data-tab="views-<?php echo $n; ?>-validation"><?php el('Validation'); ?></a>
		<a class="item" data-tab="views-<?php echo $n; ?>-info"><?php el('Info'); ?></a>
		<a class="item" data-tab="views-<?php echo $n; ?>-advanced"><?php el('Advanced'); ?></a>
		<a class="item" data-tab="views-<?php echo $n; ?>-events"><?php el('Events'); ?></a>
		<a class="item" data-tab="views-<?php echo $n; ?>-permissions"><?php el('Permissions'); ?></a>
	</div>
	
	<div class="ui bottom attached tab segment active" data-tab="views-<?php echo $n; ?>-general">
		<input type="hidden" value="field_radios" name="Connection[views][<?php echo $n; ?>][type]">
		
		<div class="two fields advanced_conf">
			<div class="field">
				<label><?php el('Name'); ?></label>
				<input type="text" value="" name="Connection[views][<?php echo $n; ?>][name]">
			</div>
			<div class="field">
				<label><?php el('Category'); ?></label>
				<input type="text" value="" name="Connection[views][<?php echo $n; ?>][category]">
			</div>
		</div>
		
		<div class="two fields">
			<div class="twelve wide field">
				<label><?php el('Label'); ?></label>
				<input type="text" value="Radios group" name="Connection[views][<?php echo $n; ?>][label]">
			</div>
			<div class="four wide field">
				<label><?php el('Layout'); ?></label>
				<select name="Connection[views][<?php echo $n; ?>][layout]" class="ui fluid dropdown">
					<option value="grouped"><?php el('Vertical'); ?></option>
					<option value="inline"><?php el('Horizontal'); ?></option>
				</select>
			</div>
		</div>

		<div class="two fields">
			<div class="field">
				<label><?php el('Name'); ?></label>
				<input type="text" value="radio<?php echo $n; ?>" name="Connection[views][<?php echo $n; ?>][params][name]">
				<small><?php el('No spaces or special characters should be used here.'); ?></small>
			</div>
			<div class="field">
				<label><?php el('ID'); ?></label>
				<input type="text" value="radio<?php echo $n; ?>" name="Connection[views][<?php echo $n; ?>][params][id]">
			</div>
		</div>

		<div class="two fields">
			<div class="ten wide field">
				<label><?php el('Options'); ?></label>
				<textarea name="Connection[views][<?php echo $n; ?>][options]" rows="7" placeholder="<?php el('Multiline name=value pairs'); ?>"><?php echo "y=Yes\nn=No"; ?></textarea>
				<small><?php el('Multi line list of value=Label pairs, the values will be sent.'); ?></small>
			</div>
			<div class="six wide field">
				<label><?php el('Selected value'); ?></label>
				<input type="text" value="" name="Connection[views][<?php echo $n; ?>][selected]">
				<small><?php el('A value to be checked by default.'); ?></small>
			</div>
		</div>
		
		<div class="ui header dividing small"><?php el('Data settings'); ?></div>
		<div class="two fields">
			<div class="field">
				<div class="ui checkbox toggle">
					<input type="hidden" name="Connection[views][<?php echo $n; ?>][dynamics][email][enabled]" data-ghost="1" value="">
					<input type="checkbox" checked="checked" class="hidden" name="Connection[views][<?php echo $n; ?>][dynamics][email][enabled]" value="1">
					<label><?php el('Include value in email'); ?></label>
					<small><?php el('The auto add fields setting must be enabled in the email function.'); ?></small>
				</div>
			</div>
			
			<div class="field">
				<div class="ui checkbox toggle">
					<input type="hidden" name="Connection[views][<?php echo $n; ?>][dynamics][save][enabled]" data-ghost="1" value="">
					<input type="checkbox" checked="checked" class="hidden" name="Connection[views][<?php echo $n; ?>][dynamics][save][enabled]" value="1">
					<label><?php el('Save to database'); ?></label>
					<small><?php el('The auto save fields setting must be enabled in the save data function.'); ?></small>
				</div>
			</div>
		</div>
		
	</div>
	
	<div class="ui bottom attached tab segment" data-tab="views-<?php echo $n; ?>-validation">
		<div class="field">
			<div class="ui checkbox toggle red">
				<input type="hidden" name="Connection[views][<?php echo $n; ?>][validation][required]" data-ghost="1" value="">
				<input type="checkbox" class="hidden" name="Connection[views][<?php echo $n; ?>][validation][required]" value="true">
				<label><?php el('Required ?'); ?></label>
			</div>
		</div>
		<div class="field">
			<label><?php el('Error message'); ?></label>
			<input type="text" value="" name="Connection[views][<?php echo $n; ?>][verror]">
			<small><?php el('The error message to be displayed when the field fails the validtaion test.'); ?></small>
		</div>
		<div class="field easy_disabled">
			<label><?php el('Validation rules'); ?></label>
			<textarea name="Connection[views][<?php echo $n; ?>][validation][rules]" rows="3"></textarea>
		</div>
		
	</div>
	
	<div class="ui bottom attached tab segment" data-tab="views-<?php echo $n; ?>-info">
		<div class="field">
			<label><?php el('Description'); ?></label>
			<textarea name="Connection[views][<?php echo $n; ?>][description][text]" rows="3"></textarea>
		</div>
		
		<div class="field">
			<label><?php el('Tooltip text'); ?></label>
			<textarea name="Connection[views][<?php echo $n; ?>][tooltip][text]" rows="3"></textarea>
		</div>
		
		<div class="field easy_disabled">
			<label><?php el('Tooltip icon class'); ?></label>
			<input type="text" value="icon info circular blue inverted small" name="Connection[views][<?php echo $n; ?>][tooltip][class]">
		</div>
		
		<div class="ui header dividing small easy_disabled"><?php el('Load states'); ?></div>
		<div class="two fields easy_disabled">
			<div class="field">
				<label><?php el('Hidden'); ?></label>
				<input type="text" value="" name="Connection[views][<?php echo $n; ?>][states][hidden]">
				<small><?php el('If not empty then the field will be hidden when the form is loaded.'); ?></small>
			</div>
			<div class="field">
				<label><?php el('Disabled'); ?></label>
				<input type="text" value="" name="Connection[views][<?php echo $n; ?>][states][disabled]">
				<small><?php el('If not empty then the field will be disabled when the form is loaded.'); ?></small>
			</div>
			
		</div>
		
	</div>
	
	<div class="ui bottom attached tab segment" data-tab="views-<?php echo $n; ?>-advanced">
		<div class="fields inline">
			<div class="field">
				<div class="ui checkbox">
					<input type="hidden" name="Connection[views][<?php echo $n; ?>][ghost][enabled]" data-ghost="1" value="0">
					<input type="checkbox" checked="checked" class="hidden" name="Connection[views][<?php echo $n; ?>][ghost][enabled]" value="1">
					<label><?php el('Enable ghost'); ?></label>
				</div>
			</div>
			<div class="field">
				<input type="text" value="" name="Connection[views][<?php echo $n; ?>][ghost][value]" placeholder="<?php el('Ghost value'); ?>">
				<small><?php el('Default value to send if the no choices are made.'); ?></small>
			</div>
		</div>
		
		<div class="two fields">
			<div class="field">
				<label><?php el('Reload event'); ?></label>
				<input type="text" value="" name="Connection[views][<?php echo $n; ?>][reload][event]">
				<small><?php el('The form event name used to reload this field when another field is set to reload it.'); ?></small>
			</div>
		</div>
		
		<div class="field">
			<label><?php el('Extra attributes'); ?></label>
			<textarea name="Connection[views][<?php echo $n; ?>][attrs]" rows="3"></textarea>
		</div>
		
		<div class="field">
			<label><?php el('Data values'); ?></label>
			<textarea name="Connection[views][<?php echo $n; ?>][data-values]" rows="7"></textarea>
		</div>

		<div class="two fields">
			<div class="field">
				<label><?php el('Container class'); ?></label>
				<input type="text" value="field" name="Connection[views][<?php echo $n; ?>][container][class]">
			</div>
			
			<div class="field">
				<label><?php el('Style'); ?></label>
				<select name="Connection[views][<?php echo $n; ?>][style]" class="ui fluid dropdown">
					<option value="radio"><?php el('Default'); ?></option>
					<option value="toggle"><?php el('Toggle switch'); ?></option>
					<option value="slider"><?php el('Slider switch'); ?></option>
					<option value=""><?php el('Checkbox'); ?></option>
				</select>
			</div>
		</div>
		
	</div>
	
	<div class="ui bottom attached tab segment small fields_events_list" data-tab="views-<?php echo $n; ?>-events">
		<input type="hidden" class="fields_events_counter" value="<?php echo !empty($view['events']) ? max(array_keys($view['events'])) : 0; ?>">
		<?php
			if(empty($view['events'])){
				$view['events'] = [1];
			}
		?>
		<?php foreach($view['events'] as $ke => $field_event): ?>
		<div class="fields">
			<input type="hidden" value="1" name="Connection[views][<?php echo $n; ?>][events][<?php echo $ke; ?>][group]">
			<div class="three wide field">
				<label><?php el('On'); ?></label>
				<select name="Connection[views][<?php echo $n; ?>][events][<?php echo $ke; ?>][sign]" class="ui fluid dropdown">
					<option value="="><?php el('selecting'); ?></option>
					<option value="!="><?php el('not selecting'); ?></option>
					<option value="change"><?php el('Change'); ?></option>
				</select>
			</div>
			<div class="four wide field">
				<label><?php el('Value'); ?></label>
				<input type="text" value="" name="Connection[views][<?php echo $n; ?>][events][<?php echo $ke; ?>][value]">
			</div>
			<div class="four wide field">
				<label><?php el('Actions'); ?></label>
				<select name="Connection[views][<?php echo $n; ?>][events][<?php echo $ke; ?>][action][]" class="ui fluid dropdown" multiple>
					<option value="enable"><?php el('Enable'); ?></option>
					<option value="disable"><?php el('Disable'); ?></option>
					<option value="show"><?php el('Show'); ?></option>
					<option value="hide"><?php el('Hide'); ?></option>
					<option value="disable_validation"><?php el('Disable validation'); ?></option>
					<option value="enable_validation"><?php el('Enable validation'); ?></option>
					<option value="reload"><?php el('Reload'); ?></option>
					<option value="function"><?php el('Function'); ?></option>
					<option value="add"><?php el('Add to'); ?></option>
					<option value="sub"><?php el('Subtract from'); ?></option>
					<option value="multiply"><?php el('Multiply with'); ?></option>
				</select>
			</div>
			<div class="three wide field">
				<label><?php el('Element identifier'); ?>
				<i class="icon info circular blue inverted small" data-hint="<?php el('Enter a field name, or an element id preceded by #, or an element class preceded by .'); ?>"></i>
				</label>
				<input type="text" value="" name="Connection[views][<?php echo $n; ?>][events][<?php echo $ke; ?>][identifier]">
			</div>
			<div class="two wide field">
				<label>&nbsp;</label>
				<button type="button" class="ui button icon compact green tiny" onclick="Fields_add_field_event(this);"><i class="plus icon"></i></button>
				<button type="button" class="ui button icon compact red tiny <?php if($ke == 0): ?>hidden<?php endif; ?> delete_button" onclick="Fields_delete_field_event(this);"><i class="cancel icon"></i></button>
			</div>
		</div>
		<?php endforeach; ?>
		
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