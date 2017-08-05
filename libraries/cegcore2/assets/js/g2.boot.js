(function($){
	if($.G2 == undefined){
		$.G2 = {};
	}
	$.G2.boot = {};
	
	$.G2.boot.autocompleter = function(){
		$('[data-autocomplete]').each(function(i, dropfield){
			/*
			if($(dropfield).data('provider')){
				$($(dropfield).data('provider')).on('change', function(){
					$(dropfield).api('query');
				});
			}
			*/
			$(dropfield).closest('.ui.search.dropdown').dropdown({
				apiSettings : {
					url: $(dropfield).data('url') + '&' + $(dropfield).attr('name') + '={query}',
					cache : false,
					/*beforeSend: function(settings) {
						if($(dropfield).data('provider')){
							settings.data[$($(dropfield).data('provider')).attr('name')] = $($(dropfield).data('provider')).val();
						}
						return settings;
					},*/
					onResponse : function(Response){
						if(!Response.hasOwnProperty('results')){
							var results = [];
							results['success'] = true;
							results['results'] = [];
							
							var count = 0;
							$.each(Response, function(key, obj){
								results['results'][count] = {};
								results['results'][count]['value'] = key;
								results['results'][count]['name'] = obj;
								count = count + 1;
							});
							
							return results;
						}
					}
				},
				minCharacters: $(dropfield).data('mincharacters') ? $(dropfield).data('mincharacters') : 0,
				message : {noResults : $(dropfield).data('noresults') ? $(dropfield).data('noresults') : 'No results found'},
				//saveRemoteData:false
			});
		});
	};
	
	$.G2.boot.calendar = function(){
		//calendar
		$('[data-calendar]').each(function(i, calfield){
			var mindate = null;
			if($(calfield).data('mindate')){
				var parts = $(calfield).data('mindate').split('-');
				var mindate = new Date(parts[0], parts[1]-1, parts[2]); 
			}
			var maxdate = null;
			if($(calfield).data('maxdate')){
				var parts = $(calfield).data('maxdate').split('-');
				var maxdate = new Date(parts[0], parts[1]-1, parts[2]); 
			}
			if(jQuery.fn.calendar != undefined){
			$(calfield).closest('.field').calendar({
				startMode : $(calfield).data('startmode'),
				type : $(calfield).data('type'),
				minDate : mindate,
				maxDate : maxdate,
				startCalendar: $(calfield).data('startcalendar') ? $($(calfield).data('startcalendar')).closest('.field') : null,
				endCalendar: $(calfield).data('endcalendar') ? $($(calfield).data('endcalendar')).closest('.field') : null,
				firstDayOfWeek: $(calfield).data('firstday') ? $(calfield).data('firstday') : 0,
				
				formatter:{
					date: function (date, settings) {
						if (!date) return '';
						var day = date.getDate();
						day = ("0" + day).slice(-2);
						var month = date.getMonth() + 1;
						month = ("0" + month).slice(-2);
						
						var year = date.getFullYear();
						var hour = date.getHours();
						var minute = date.getMinutes();
						
						var value = $(calfield).data('format') ? $(calfield).data('format') : 'y-m-d';
						value = value.replace('y', year).replace('m', month).replace('d', day).replace('h', hour).replace('i', minute);
						
						return value;
					}
				},
				popupOptions:{
					position: $(calfield).data('popuppos') ? $(calfield).data('popuppos') : 'top center'
				},

				text:{
					days: $(calfield).data('days') ? $(calfield).data('days').split(',') : ['S', 'M', 'T', 'W', 'T', 'F', 'S'],
					months: $(calfield).data('months') ? $(calfield).data('months').split(',') : ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
					monthsShort: $(calfield).data('monthsshort') ? $(calfield).data('monthsshort').split(',') : ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
					today: $(calfield).data('today') ? $(calfield).data('today').split(',') : 'Today',
					now: $(calfield).data('now') ? $(calfield).data('now').split(',') : 'Now',
					am: $(calfield).data('am') ? $(calfield).data('am').split(',') : 'AM',
					pm: $(calfield).data('pm') ? $(calfield).data('pm').split(',') : 'PM'
				}
			});
			}
		});
	};
	
	$.G2.boot.ready = function(){
		$('body').on('contentChange', function(){
			if(jQuery.fn.tab != undefined){
				$('.ui.menu.G2-tabs .item, .ui.steps.G2-tabs .step').tab();
			}
			if(jQuery.fn.dropdown != undefined){
				$('.ui.dropdown').dropdown({'forceSelection' : false, 'placeholder' : ''});
				$.G2.boot.autocompleter();
			}
			if(jQuery.fn.checkbox != undefined){
				$('.ui.checkbox').checkbox('refresh');
			}
			if(jQuery.fn.accordion != undefined){
				$('.ui.accordion').accordion();
				$('.ui.accordion').accordion('refresh');
			}
			
			if(jQuery.fn.tooltipster != undefined){
				$('[data-hint]').each(function(i, element){
					$(element).tooltipster({
						content: $(element).data('hint'),
						maxWidth: 300,
						delay: 50,
						debug: false
					});
				});
			}
			
			//G2 actions
			if($.G2.actions != undefined){
				$.G2.actions.ready();
			}
			
			$.G2.boot.calendar();
		});
		$('body').trigger('contentChange');
		
		//toolbar
		$('.ui.toolbar-button[data-url]').on('click', function(e){
			if($(this).attr('data-form')){
				var toolbar_form = $($(this).attr('data-form'));
			}else{
				var toolbar_form = $(this).closest('form');
			}
			
			toolbar_form.attr('action', $(this).data('url'));
			
			if($(this).attr('name')){
				toolbar_form.append($('<input />').attr('type', 'hidden').attr('name', $(this).attr('name')).val(1));
			}
			
			if($(this).data('selections') == '1' && toolbar_form.find('.ui.selector.checkbox.checked').length == 0){
				alert($(this).data('message'));
				return false;
			}
			
			if($(this).attr('data-fn')){
				var fn = $(this).attr('data-fn');
				window[$(this).attr('data-fn')]($(this));
			}else{
				toolbar_form.submit();
			}
		});
		
		//list selectors
		if(jQuery.fn.checkbox != undefined){
			$('.ui.selector.checkbox').checkbox({
				onChecked: function(){
					$(this).closest('tr').addClass('warning');
				},
				onUnchecked: function(){
					$(this).closest('tr').removeClass('warning');
				}
			});
			$('.ui.selector.checkbox').checkbox('attach events', '.ui.select_all.checkbox');
		}
		
		//errors
		$(':input[data-error]').closest('.field').addClass('error');
		
	};
	
}(jQuery));
/*jQuery(document).ready(function($){
	//default modules
	$.G2.boot.ready();
});*/