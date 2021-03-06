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
		<a class="item" data-tab="views-<?php echo $n; ?>-permissions"><?php el('Permissions'); ?></a>
	</div>
	
	<div class="ui bottom attached tab segment active" data-tab="views-<?php echo $n; ?>-general">
		<input type="hidden" value="field_calendar" name="Connection[views][<?php echo $n; ?>][type]">
		
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
			<div class="field">
				<label><?php el('Label'); ?></label>
				<input type="text" value="Calendar" name="Connection[views][<?php echo $n; ?>][label]">
			</div>
			<div class="field">
				<label><?php el('Placeholder'); ?></label>
				<input type="text" value="" name="Connection[views][<?php echo $n; ?>][params][placeholder]">
			</div>
		</div>

		<div class="two fields">
			<div class="field">
				<label><?php el('Name'); ?></label>
				<input type="text" value="calendar<?php echo $n; ?>" name="Connection[views][<?php echo $n; ?>][params][name]">
				<small><?php el('No spaces or special characters should be used here.'); ?></small>
			</div>
			<div class="field">
				<label><?php el('ID'); ?></label>
				<input type="text" value="calendar<?php echo $n; ?>" name="Connection[views][<?php echo $n; ?>][params][id]">
			</div>
		</div>

		<div class="two fields">
			<div class="field">
				<label><?php el('Value'); ?></label>
				<input type="text" value="" name="Connection[views][<?php echo $n; ?>][params][value]">
			</div>
			
			<div class="field">
				<label><?php el('Start day'); ?></label>
				<select name="Connection[views][<?php echo $n; ?>][calendar][firstday]" class="ui fluid dropdown">
					<option value="0"><?php el('Sunday'); ?></option>
					<option value="1"><?php el('Monday'); ?></option>
					<option value="2"><?php el('Tuesday'); ?></option>
					<option value="3"><?php el('Wednesday'); ?></option>
					<option value="4"><?php el('Thursday'); ?></option>
					<option value="5"><?php el('Friday'); ?></option>
					<option value="6"><?php el('Saturday'); ?></option>
				</select>
			</div>
		</div>

		<div class="three fields">
			
			<div class="field">
				<label><?php el('Start mode'); ?></label>
				<select name="Connection[views][<?php echo $n; ?>][calendar][startmode]" class="ui fluid dropdown">
					<option value="day"><?php el('Day'); ?></option>
					<option value="month"><?php el('Month'); ?></option>
					<option value="year"><?php el('Year'); ?></option>
					<option value="hour"><?php el('Hour'); ?></option>
					<option value="minute"><?php el('Minute'); ?></option>
				</select>
			</div>
			
			<div class="field">
				<label><?php el('Type'); ?></label>
				<select name="Connection[views][<?php echo $n; ?>][calendar][type]" class="ui fluid dropdown">
					<option value="date"><?php el('Date'); ?></option>
					<option value="time"><?php el('Time'); ?></option>
					<option value="datetime"><?php el('DateTime'); ?></option>
					<option value="month"><?php el('Month'); ?></option>
					<option value="year"><?php el('Year'); ?></option>
				</select>
			</div>
			
			<div class="field">
				<label><?php el('Format'); ?></label>
				<input type="text" value="y-m-d" name="Connection[views][<?php echo $n; ?>][calendar][format]">
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
		<div class="two fields">
			<div class="field">
				<label><?php el('Earliest date/time'); ?></label>
				<input type="text" placeholder="y-m-d" value="" name="Connection[views][<?php echo $n; ?>][calendar][mindate]">
			</div>
			<div class="field">
				<label><?php el('Latest date/time'); ?></label>
				<input type="text" placeholder="y-m-d" value="" name="Connection[views][<?php echo $n; ?>][calendar][maxdate]">
			</div>
		</div>
		
		<div class="two fields">
			<div class="field">
				<label><?php el('Start calendar'); ?></label>
				<input type="text" placeholder="<?php echo '#calendar_id'; ?>" value="" name="Connection[views][<?php echo $n; ?>][calendar][startcalendar]">
			</div>
			<div class="field">
				<label><?php el('End calendar'); ?></label>
				<input type="text" placeholder="<?php echo '#calendar_id'; ?>" value="" name="Connection[views][<?php echo $n; ?>][calendar][endcalendar]">
			</div>
		</div>
		
		<div class="two fields">
			<div class="field">
				<label><?php el('Position'); ?></label>
				<input type="text" value="top center" name="Connection[views][<?php echo $n; ?>][calendar][popuppos]">
				<small><?php el('The position of the calendar relative to the field.'); ?></small>
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

		<div class="two fields">
			<div class="field">
				<label><?php el('Container class'); ?></label>
				<input type="text" value="field" name="Connection[views][<?php echo $n; ?>][container][class]">
			</div>
			
			<div class="field">
				<label><?php el('Width'); ?></label>
				<select name="Connection[views][<?php echo $n; ?>][container][width]" class="ui fluid dropdown">
					<option value=""><?php el('Fluid'); ?></option>
					<option value="three wide">20%</option>
					<option value="four wide">25%</option>
					<option value="six wide">38%</option>
					<option value="eight wide">50%</option>
					<option value="twelve wide">75%</option>
				</select>
			</div>
		</div>
		
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