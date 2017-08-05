/* checkbox11828-dropdown48256-form19260-g2.boot6500-g2.forms16883-g2663-transition13242 */
/*!
 * # Semantic UI 2.2.6 - Transition
 * http://github.com/semantic-org/semantic-ui/
 *
 *
 * Released under the MIT license
 * http://opensource.org/licenses/MIT
 *
 */
!function(n,e,i,t){"use strict";e="undefined"!=typeof e&&e.Math==Math?e:"undefined"!=typeof self&&self.Math==Math?self:Function("return this")(),n.fn.transition=function(){var a,o=n(this),r=o.selector||"",s=(new Date).getTime(),l=[],u=arguments,d=u[0],c=[].slice.call(arguments,1),m="string"==typeof d;e.requestAnimationFrame||e.mozRequestAnimationFrame||e.webkitRequestAnimationFrame||e.msRequestAnimationFrame||function(n){setTimeout(n,0)};return o.each(function(e){var f,p,g,v,b,y,h,w,C,A=n(this),S=this;C={initialize:function(){f=C.get.settings.apply(S,u),v=f.className,g=f.error,b=f.metadata,w="."+f.namespace,h="module-"+f.namespace,p=A.data(h)||C,y=C.get.animationEndEvent(),m&&(m=C.invoke(d)),m===!1&&(C.verbose("Converted arguments into settings object",f),f.interval?C.delay(f.animate):C.animate(),C.instantiate())},instantiate:function(){C.verbose("Storing instance of module",C),p=C,A.data(h,p)},destroy:function(){C.verbose("Destroying previous module for",S),A.removeData(h)},refresh:function(){C.verbose("Refreshing display type on next animation"),delete C.displayType},forceRepaint:function(){C.verbose("Forcing element repaint");var n=A.parent(),e=A.next();0===e.length?A.detach().appendTo(n):A.detach().insertBefore(e)},repaint:function(){C.verbose("Repainting element");S.offsetWidth},delay:function(n){var i,a,r=C.get.animationDirection();r||(r=C.can.transition()?C.get.direction():"static"),n=n!==t?n:f.interval,i="auto"==f.reverse&&r==v.outward,a=i||1==f.reverse?(o.length-e)*f.interval:e*f.interval,C.debug("Delaying animation by",a),setTimeout(C.animate,a)},animate:function(n){if(f=n||f,!C.is.supported())return C.error(g.support),!1;if(C.debug("Preparing animation",f.animation),C.is.animating()){if(f.queue)return!f.allowRepeats&&C.has.direction()&&C.is.occurring()&&C.queuing!==!0?C.debug("Animation is currently occurring, preventing queueing same animation",f.animation):C.queue(f.animation),!1;if(!f.allowRepeats&&C.is.occurring())return C.debug("Animation is already occurring, will not execute repeated animation",f.animation),!1;C.debug("New animation started, completing previous early",f.animation),p.complete()}C.can.animate()?C.set.animating(f.animation):C.error(g.noAnimation,f.animation,S)},reset:function(){C.debug("Resetting animation to beginning conditions"),C.remove.animationCallbacks(),C.restore.conditions(),C.remove.animating()},queue:function(n){C.debug("Queueing animation of",n),C.queuing=!0,A.one(y+".queue"+w,function(){C.queuing=!1,C.repaint(),C.animate.apply(this,f)})},complete:function(n){C.debug("Animation complete",f.animation),C.remove.completeCallback(),C.remove.failSafe(),C.is.looping()||(C.is.outward()?(C.verbose("Animation is outward, hiding element"),C.restore.conditions(),C.hide()):C.is.inward()?(C.verbose("Animation is outward, showing element"),C.restore.conditions(),C.show()):(C.verbose("Static animation completed"),C.restore.conditions(),f.onComplete.call(S)))},force:{visible:function(){var n=A.attr("style"),e=C.get.userStyle(),i=C.get.displayType(),a=e+"display: "+i+" !important;",o=A.css("display"),r=n===t||""===n;o!==i?(C.verbose("Overriding default display to show element",i),A.attr("style",a)):r&&A.removeAttr("style")},hidden:function(){var n=A.attr("style"),e=A.css("display"),i=n===t||""===n;"none"===e||C.is.hidden()?i&&A.removeAttr("style"):(C.verbose("Overriding default display to hide element"),A.css("display","none"))}},has:{direction:function(e){var i=!1;return e=e||f.animation,"string"==typeof e&&(e=e.split(" "),n.each(e,function(n,e){e!==v.inward&&e!==v.outward||(i=!0)})),i},inlineDisplay:function(){var e=A.attr("style")||"";return n.isArray(e.match(/display.*?;/,""))}},set:{animating:function(n){var e;C.remove.completeCallback(),n=n||f.animation,e=C.get.animationClass(n),C.save.animation(e),C.force.visible(),C.remove.hidden(),C.remove.direction(),C.start.animation(e)},duration:function(n,e){e=e||f.duration,e="number"==typeof e?e+"ms":e,(e||0===e)&&(C.verbose("Setting animation duration",e),A.css({"animation-duration":e}))},direction:function(n){n=n||C.get.direction(),n==v.inward?C.set.inward():C.set.outward()},looping:function(){C.debug("Transition set to loop"),A.addClass(v.looping)},hidden:function(){A.addClass(v.transition).addClass(v.hidden)},inward:function(){C.debug("Setting direction to inward"),A.removeClass(v.outward).addClass(v.inward)},outward:function(){C.debug("Setting direction to outward"),A.removeClass(v.inward).addClass(v.outward)},visible:function(){A.addClass(v.transition).addClass(v.visible)}},start:{animation:function(n){n=n||C.get.animationClass(),C.debug("Starting tween",n),A.addClass(n).one(y+".complete"+w,C.complete),f.useFailSafe&&C.add.failSafe(),C.set.duration(f.duration),f.onStart.call(S)}},save:{animation:function(n){C.cache||(C.cache={}),C.cache.animation=n},displayType:function(n){"none"!==n&&A.data(b.displayType,n)},transitionExists:function(e,i){n.fn.transition.exists[e]=i,C.verbose("Saving existence of transition",e,i)}},restore:{conditions:function(){var n=C.get.currentAnimation();n&&(A.removeClass(n),C.verbose("Removing animation class",C.cache)),C.remove.duration()}},add:{failSafe:function(){var n=C.get.duration();C.timer=setTimeout(function(){A.triggerHandler(y)},n+f.failSafeDelay),C.verbose("Adding fail safe timer",C.timer)}},remove:{animating:function(){A.removeClass(v.animating)},animationCallbacks:function(){C.remove.queueCallback(),C.remove.completeCallback()},queueCallback:function(){A.off(".queue"+w)},completeCallback:function(){A.off(".complete"+w)},display:function(){A.css("display","")},direction:function(){A.removeClass(v.inward).removeClass(v.outward)},duration:function(){A.css("animation-duration","")},failSafe:function(){C.verbose("Removing fail safe timer",C.timer),C.timer&&clearTimeout(C.timer)},hidden:function(){A.removeClass(v.hidden)},visible:function(){A.removeClass(v.visible)},looping:function(){C.debug("Transitions are no longer looping"),C.is.looping()&&(C.reset(),A.removeClass(v.looping))},transition:function(){A.removeClass(v.visible).removeClass(v.hidden)}},get:{settings:function(e,i,t){return"object"==typeof e?n.extend(!0,{},n.fn.transition.settings,e):"function"==typeof t?n.extend({},n.fn.transition.settings,{animation:e,onComplete:t,duration:i}):"string"==typeof i||"number"==typeof i?n.extend({},n.fn.transition.settings,{animation:e,duration:i}):"object"==typeof i?n.extend({},n.fn.transition.settings,i,{animation:e}):"function"==typeof i?n.extend({},n.fn.transition.settings,{animation:e,onComplete:i}):n.extend({},n.fn.transition.settings,{animation:e})},animationClass:function(n){var e=n||f.animation,i=C.can.transition()&&!C.has.direction()?C.get.direction()+" ":"";return v.animating+" "+v.transition+" "+i+e},currentAnimation:function(){return!(!C.cache||C.cache.animation===t)&&C.cache.animation},currentDirection:function(){return C.is.inward()?v.inward:v.outward},direction:function(){return C.is.hidden()||!C.is.visible()?v.inward:v.outward},animationDirection:function(e){var i;return e=e||f.animation,"string"==typeof e&&(e=e.split(" "),n.each(e,function(n,e){e===v.inward?i=v.inward:e===v.outward&&(i=v.outward)})),!!i&&i},duration:function(n){return n=n||f.duration,n===!1&&(n=A.css("animation-duration")||0),"string"==typeof n?n.indexOf("ms")>-1?parseFloat(n):1e3*parseFloat(n):n},displayType:function(n){return n=n===t||n,f.displayType?f.displayType:(n&&A.data(b.displayType)===t&&C.can.transition(!0),A.data(b.displayType))},userStyle:function(n){return n=n||A.attr("style")||"",n.replace(/display.*?;/,"")},transitionExists:function(e){return n.fn.transition.exists[e]},animationStartEvent:function(){var n,e=i.createElement("div"),a={animation:"animationstart",OAnimation:"oAnimationStart",MozAnimation:"mozAnimationStart",WebkitAnimation:"webkitAnimationStart"};for(n in a)if(e.style[n]!==t)return a[n];return!1},animationEndEvent:function(){var n,e=i.createElement("div"),a={animation:"animationend",OAnimation:"oAnimationEnd",MozAnimation:"mozAnimationEnd",WebkitAnimation:"webkitAnimationEnd"};for(n in a)if(e.style[n]!==t)return a[n];return!1}},can:{transition:function(e){var i,a,o,r,s,l,u=f.animation,d=C.get.transitionExists(u),c=C.get.displayType(!1);if(d===t||e){if(C.verbose("Determining whether animation exists"),i=A.attr("class"),a=A.prop("tagName"),o=n("<"+a+" />").addClass(i).insertAfter(A),r=o.addClass(u).removeClass(v.inward).removeClass(v.outward).addClass(v.animating).addClass(v.transition).css("animationName"),s=o.addClass(v.inward).css("animationName"),c||(c=o.attr("class",i).removeAttr("style").removeClass(v.hidden).removeClass(v.visible).show().css("display"),C.verbose("Determining final display state",c),C.save.displayType(c)),o.remove(),r!=s)C.debug("Direction exists for animation",u),l=!0;else{if("none"==r||!r)return void C.debug("No animation defined in css",u);C.debug("Static animation found",u,c),l=!1}C.save.transitionExists(u,l)}return d!==t?d:l},animate:function(){return C.can.transition()!==t}},is:{animating:function(){return A.hasClass(v.animating)},inward:function(){return A.hasClass(v.inward)},outward:function(){return A.hasClass(v.outward)},looping:function(){return A.hasClass(v.looping)},occurring:function(n){return n=n||f.animation,n="."+n.replace(" ","."),A.filter(n).length>0},visible:function(){return A.is(":visible")},hidden:function(){return"hidden"===A.css("visibility")},supported:function(){return y!==!1}},hide:function(){C.verbose("Hiding element"),C.is.animating()&&C.reset(),S.blur(),C.remove.display(),C.remove.visible(),C.set.hidden(),C.force.hidden(),f.onHide.call(S),f.onComplete.call(S)},show:function(n){C.verbose("Showing element",n),C.remove.hidden(),C.set.visible(),C.force.visible(),f.onShow.call(S),f.onComplete.call(S)},toggle:function(){C.is.visible()?C.hide():C.show()},stop:function(){C.debug("Stopping current animation"),A.triggerHandler(y)},stopAll:function(){C.debug("Stopping all animation"),C.remove.queueCallback(),A.triggerHandler(y)},clear:{queue:function(){C.debug("Clearing animation queue"),C.remove.queueCallback()}},enable:function(){C.verbose("Starting animation"),A.removeClass(v.disabled)},disable:function(){C.debug("Stopping animation"),A.addClass(v.disabled)},setting:function(e,i){if(C.debug("Changing setting",e,i),n.isPlainObject(e))n.extend(!0,f,e);else{if(i===t)return f[e];n.isPlainObject(f[e])?n.extend(!0,f[e],i):f[e]=i}},internal:function(e,i){if(n.isPlainObject(e))n.extend(!0,C,e);else{if(i===t)return C[e];C[e]=i}},debug:function(){!f.silent&&f.debug&&(f.performance?C.performance.log(arguments):(C.debug=Function.prototype.bind.call(console.info,console,f.name+":"),C.debug.apply(console,arguments)))},verbose:function(){!f.silent&&f.verbose&&f.debug&&(f.performance?C.performance.log(arguments):(C.verbose=Function.prototype.bind.call(console.info,console,f.name+":"),C.verbose.apply(console,arguments)))},error:function(){f.silent||(C.error=Function.prototype.bind.call(console.error,console,f.name+":"),C.error.apply(console,arguments))},performance:{log:function(n){var e,i,t;f.performance&&(e=(new Date).getTime(),t=s||e,i=e-t,s=e,l.push({Name:n[0],Arguments:[].slice.call(n,1)||"",Element:S,"Execution Time":i})),clearTimeout(C.performance.timer),C.performance.timer=setTimeout(C.performance.display,500)},display:function(){var e=f.name+":",i=0;s=!1,clearTimeout(C.performance.timer),n.each(l,function(n,e){i+=e["Execution Time"]}),e+=" "+i+"ms",r&&(e+=" '"+r+"'"),o.length>1&&(e+=" ("+o.length+")"),(console.group!==t||console.table!==t)&&l.length>0&&(console.groupCollapsed(e),console.table?console.table(l):n.each(l,function(n,e){console.log(e.Name+": "+e["Execution Time"]+"ms")}),console.groupEnd()),l=[]}},invoke:function(e,i,o){var r,s,l,u=p;return i=i||c,o=S||o,"string"==typeof e&&u!==t&&(e=e.split(/[\. ]/),r=e.length-1,n.each(e,function(i,a){var o=i!=r?a+e[i+1].charAt(0).toUpperCase()+e[i+1].slice(1):e;if(n.isPlainObject(u[o])&&i!=r)u=u[o];else{if(u[o]!==t)return s=u[o],!1;if(!n.isPlainObject(u[a])||i==r)return u[a]!==t&&(s=u[a],!1);u=u[a]}})),n.isFunction(s)?l=s.apply(o,i):s!==t&&(l=s),n.isArray(a)?a.push(l):a!==t?a=[a,l]:l!==t&&(a=l),s!==t&&s}},C.initialize()}),a!==t?a:this},n.fn.transition.exists={},n.fn.transition.settings={name:"Transition",silent:!1,debug:!1,verbose:!1,performance:!0,namespace:"transition",interval:0,reverse:"auto",onStart:function(){},onComplete:function(){},onShow:function(){},onHide:function(){},useFailSafe:!0,failSafeDelay:100,allowRepeats:!1,displayType:!1,animation:"fade",duration:!1,queue:!0,metadata:{displayType:"display"},className:{animating:"animating",disabled:"disabled",hidden:"hidden",inward:"in",loading:"loading",looping:"looping",outward:"out",transition:"transition",visible:"visible"},error:{noAnimation:"Element is no longer attached to DOM. Unable to animate.  Use silent setting to surpress this warning in production.",repeated:"That animation is already occurring, cancelling repeated animation",method:"The method you called is not defined",support:"This browser does not support CSS animations"}}}(jQuery,window,document);
/*!
 * # Semantic UI 2.2.6 - Form Validation
 * http://github.com/semantic-org/semantic-ui/
 *
 *
 * Released under the MIT license
 * http://opensource.org/licenses/MIT
 *
 */
!function(e,t,n,r){"use strict";t="undefined"!=typeof t&&t.Math==Math?t:"undefined"!=typeof self&&self.Math==Math?self:Function("return this")(),e.fn.form=function(t){var i,a=e(this),o=a.selector||"",l=(new Date).getTime(),s=[],u=arguments[0],c=arguments[1],f="string"==typeof u,d=[].slice.call(arguments,1);return a.each(function(){var p,m,g,h,v,b,y,x,k,E,w,C,V,R,S,F,A,T,j=e(this),D=this,O=[],z=!1;T={initialize:function(){T.get.settings(),f?(A===r&&T.instantiate(),T.invoke(u)):(A!==r&&A.invoke("destroy"),T.verbose("Initializing form validation",j,x),T.bindEvents(),T.set.defaults(),T.instantiate())},instantiate:function(){T.verbose("Storing instance of module",T),A=T,j.data(S,T)},destroy:function(){T.verbose("Destroying previous module",A),T.removeEvents(),j.removeData(S)},refresh:function(){T.verbose("Refreshing selector cache"),p=j.find(w.field),m=j.find(w.group),g=j.find(w.message),h=j.find(w.prompt),v=j.find(w.submit),b=j.find(w.clear),y=j.find(w.reset)},submit:function(){T.verbose("Submitting form",j),j.submit()},attachEvents:function(t,n){n=n||"submit",e(t).on("click"+F,function(e){T[n](),e.preventDefault()})},bindEvents:function(){T.verbose("Attaching form events"),j.on("submit"+F,T.validate.form).on("blur"+F,w.field,T.event.field.blur).on("click"+F,w.submit,T.submit).on("click"+F,w.reset,T.reset).on("click"+F,w.clear,T.clear),x.keyboardShortcuts&&j.on("keydown"+F,w.field,T.event.field.keydown),p.each(function(){var t=e(this),n=t.prop("type"),r=T.get.changeEvent(n,t);e(this).on(r+F,T.event.field.change)})},clear:function(){p.each(function(){var t=e(this),n=t.parent(),r=t.closest(m),i=r.find(w.prompt),a=t.data(E.defaultValue)||"",o=n.is(w.uiCheckbox),l=n.is(w.uiDropdown),s=r.hasClass(C.error);s&&(T.verbose("Resetting error on field",r),r.removeClass(C.error),i.remove()),l?(T.verbose("Resetting dropdown value",n,a),n.dropdown("clear")):o?t.prop("checked",!1):(T.verbose("Resetting field value",t,a),t.val(""))})},reset:function(){p.each(function(){var t=e(this),n=t.parent(),i=t.closest(m),a=i.find(w.prompt),o=t.data(E.defaultValue),l=n.is(w.uiCheckbox),s=n.is(w.uiDropdown),u=i.hasClass(C.error);o!==r&&(u&&(T.verbose("Resetting error on field",i),i.removeClass(C.error),a.remove()),s?(T.verbose("Resetting dropdown value",n,o),n.dropdown("restore defaults")):l?(T.verbose("Resetting checkbox value",n,o),t.prop("checked",o)):(T.verbose("Resetting field value",t,o),t.val(o)))})},is:{bracketedRule:function(e){return e.type&&e.type.match(x.regExp.bracket)},empty:function(e){return!e||0===e.length||(e.is('input[type="checkbox"]')?!e.is(":checked"):T.is.blank(e))},blank:function(t){return""===e.trim(t.val())},valid:function(){var t=!0;return T.verbose("Checking if form is valid"),e.each(k,function(e,n){T.validate.field(n,e)||(t=!1)}),t}},removeEvents:function(){j.off(F),p.off(F),v.off(F),p.off(F)},event:{field:{keydown:function(t){var n=e(this),r=t.which,i=n.is(w.input),a=n.is(w.checkbox),o=n.closest(w.uiDropdown).length>0,l={enter:13,escape:27};r==l.escape&&(T.verbose("Escape key pressed blurring field"),n.blur()),t.ctrlKey||r!=l.enter||!i||o||a||(z||(n.one("keyup"+F,T.event.field.keyup),T.submit(),T.debug("Enter pressed on input submitting form")),z=!0)},keyup:function(){z=!1},blur:function(t){var n=e(this),r=n.closest(m),i=T.get.validation(n);r.hasClass(C.error)?(T.debug("Revalidating field",n,i),i&&T.validate.field(i)):"blur"!=x.on&&"change"!=x.on||i&&T.validate.field(i)},change:function(t){var n=e(this),r=n.closest(m),i=T.get.validation(n);("change"==x.on||r.hasClass(C.error)&&x.revalidate)&&(clearTimeout(T.timer),T.timer=setTimeout(function(){T.debug("Revalidating field",n,T.get.validation(n)),T.validate.field(i)},x.delay))}}},get:{ancillaryValue:function(e){return!(!e.type||!e.value&&!T.is.bracketedRule(e))&&(e.value!==r?e.value:e.type.match(x.regExp.bracket)[1]+"")},ruleName:function(e){return T.is.bracketedRule(e)?e.type.replace(e.type.match(x.regExp.bracket)[0],""):e.type},changeEvent:function(e,t){return"checkbox"==e||"radio"==e||"hidden"==e||t.is("select")?"change":T.get.inputEvent()},inputEvent:function(){return n.createElement("input").oninput!==r?"input":n.createElement("input").onpropertychange!==r?"propertychange":"keyup"},prompt:function(e,t){var n,r,i,a=T.get.ruleName(e),o=T.get.ancillaryValue(e),l=e.prompt||x.prompt[a]||x.text.unspecifiedRule,s=l.search("{value}")!==-1,u=l.search("{name}")!==-1;return(u||s)&&(r=T.get.field(t.identifier)),s&&(l=l.replace("{value}",r.val())),u&&(n=r.closest(w.group).find("label").eq(0),i=1==n.length?n.text():r.prop("placeholder")||x.text.unspecifiedField,l=l.replace("{name}",i)),l=l.replace("{identifier}",t.identifier),l=l.replace("{ruleValue}",o),e.prompt||T.verbose("Using default validation prompt for type",l,a),l},settings:function(){if(e.isPlainObject(t)){var n,i=Object.keys(t),a=i.length>0&&(t[i[0]].identifier!==r&&t[i[0]].rules!==r);a?(x=e.extend(!0,{},e.fn.form.settings,c),k=e.extend({},e.fn.form.settings.defaults,t),T.error(x.error.oldSyntax,D),T.verbose("Extending settings from legacy parameters",k,x)):(t.fields&&(n=Object.keys(t.fields),("string"==typeof t.fields[n[0]]||e.isArray(t.fields[n[0]]))&&e.each(t.fields,function(n,r){"string"==typeof r&&(r=[r]),t.fields[n]={rules:[]},e.each(r,function(e,r){t.fields[n].rules.push({type:r})})})),x=e.extend(!0,{},e.fn.form.settings,t),k=e.extend({},e.fn.form.settings.defaults,x.fields),T.verbose("Extending settings",k,x))}else x=e.fn.form.settings,k=e.fn.form.settings.defaults,T.verbose("Using default form validation",k,x);R=x.namespace,E=x.metadata,w=x.selector,C=x.className,V=x.error,S="module-"+R,F="."+R,A=j.data(S),T.refresh()},field:function(t){return T.verbose("Finding field with identifier",t),p.filter("#"+t).length>0?p.filter("#"+t):p.filter('[name="'+t+'"]').length>0?p.filter('[name="'+t+'"]'):p.filter('[name="'+t+'[]"]').length>0?p.filter('[name="'+t+'[]"]'):p.filter("[data-"+E.validate+'="'+t+'"]').length>0?p.filter("[data-"+E.validate+'="'+t+'"]'):e("<input/>")},fields:function(t){var n=e();return e.each(t,function(e,t){n=n.add(T.get.field(t))}),n},validation:function(t){var n,r;return!!k&&(e.each(k,function(e,i){r=i.identifier||e,T.get.field(r)[0]==t[0]&&(i.identifier=r,n=i)}),n||!1)},value:function(e){var t,n=[];return n.push(e),t=T.get.values.call(D,n),t[e]},values:function(t){var n=e.isArray(t)?T.get.fields(t):p,r={};return n.each(function(t,n){var i=e(n),a=(i.prop("type"),i.prop("name")),o=i.val(),l=i.is(w.checkbox),s=i.is(w.radio),u=a.indexOf("[]")!==-1,c=!!l&&i.is(":checked");a&&(u?(a=a.replace("[]",""),r[a]||(r[a]=[]),l?c?r[a].push(o||!0):r[a].push(!1):r[a].push(o)):s?c&&(r[a]=o):l?c?r[a]=o||!0:r[a]=!1:r[a]=o)}),r}},has:{field:function(e){return T.verbose("Checking for existence of a field with identifier",e),"string"!=typeof e&&T.error(V.identifier,e),p.filter("#"+e).length>0||(p.filter('[name="'+e+'"]').length>0||p.filter("[data-"+E.validate+'="'+e+'"]').length>0)}},add:{prompt:function(t,n){var i=T.get.field(t),a=i.closest(m),o=a.children(w.prompt),l=0!==o.length;n="string"==typeof n?[n]:n,T.verbose("Adding field error state",t),a.addClass(C.error),x.inline&&(l||(o=x.templates.prompt(n),o.appendTo(a)),o.html(n[0]),l?T.verbose("Inline errors are disabled, no inline error added",t):x.transition&&e.fn.transition!==r&&j.transition("is supported")?(T.verbose("Displaying error with css transition",x.transition),o.transition(x.transition+" in",x.duration)):(T.verbose("Displaying error with fallback javascript animation"),o.fadeIn(x.duration)))},errors:function(e){T.debug("Adding form error messages",e),T.set.error(),g.html(x.templates.error(e))}},remove:{prompt:function(t){var n=T.get.field(t),i=n.closest(m),a=i.children(w.prompt);i.removeClass(C.error),x.inline&&a.is(":visible")&&(T.verbose("Removing prompt for field",t),x.transition&&e.fn.transition!==r&&j.transition("is supported")?a.transition(x.transition+" out",x.duration,function(){a.remove()}):a.fadeOut(x.duration,function(){a.remove()}))}},set:{success:function(){j.removeClass(C.error).addClass(C.success)},defaults:function(){p.each(function(){var t=e(this),n=t.filter(w.checkbox).length>0,r=n?t.is(":checked"):t.val();t.data(E.defaultValue,r)})},error:function(){j.removeClass(C.success).addClass(C.error)},value:function(e,t){var n={};return n[e]=t,T.set.values.call(D,n)},values:function(t){e.isEmptyObject(t)||e.each(t,function(t,n){var r,i=T.get.field(t),a=i.parent(),o=e.isArray(n),l=a.is(w.uiCheckbox),s=a.is(w.uiDropdown),u=i.is(w.radio)&&l,c=i.length>0;c&&(o&&l?(T.verbose("Selecting multiple",n,i),a.checkbox("uncheck"),e.each(n,function(e,t){r=i.filter('[value="'+t+'"]'),a=r.parent(),r.length>0&&a.checkbox("check")})):u?(T.verbose("Selecting radio value",n,i),i.filter('[value="'+n+'"]').parent(w.uiCheckbox).checkbox("check")):l?(T.verbose("Setting checkbox value",n,a),n===!0?a.checkbox("check"):a.checkbox("uncheck")):s?(T.verbose("Setting dropdown value",n,a),a.dropdown("set selected",n)):(T.verbose("Setting field value",n,i),i.val(n)))})}},validate:{form:function(e,t){var n=T.get.values();if(z)return!1;if(O=[],T.is.valid()){if(T.debug("Form has no validation errors, submitting"),T.set.success(),t!==!0)return x.onSuccess.call(D,e,n)}else if(T.debug("Form has errors"),T.set.error(),x.inline||T.add.errors(O),j.data("moduleApi")!==r&&e.stopImmediatePropagation(),t!==!0)return x.onFailure.call(D,O,n)},field:function(t,n){var i=t.identifier||n,a=T.get.field(i),o=!!t.depends&&T.get.field(t.depends),l=!0,s=[];return t.identifier||(T.debug("Using field name as identifier",i),t.identifier=i),a.prop("disabled")?(T.debug("Field is disabled. Skipping",i),l=!0):t.optional&&T.is.blank(a)?(T.debug("Field is optional and blank. Skipping",i),l=!0):t.depends&&T.is.empty(o)?(T.debug("Field depends on another value that is not present or empty. Skipping",o),l=!0):t.rules!==r&&e.each(t.rules,function(e,n){T.has.field(i)&&!T.validate.rule(t,n)&&(T.debug("Field is invalid",i,n.type),s.push(T.get.prompt(n,t)),l=!1)}),l?(T.remove.prompt(i,s),x.onValid.call(a),!0):(O=O.concat(s),T.add.prompt(i,s),x.onInvalid.call(a,s),!1)},rule:function(t,n){var i=T.get.field(t.identifier),a=(n.type,i.val()),o=T.get.ancillaryValue(n),l=T.get.ruleName(n),s=x.rules[l];return e.isFunction(s)?(a=a===r||""===a||null===a?"":e.trim(a+""),s.call(i,a,o)):void T.error(V.noRule,l)}},setting:function(t,n){if(e.isPlainObject(t))e.extend(!0,x,t);else{if(n===r)return x[t];x[t]=n}},internal:function(t,n){if(e.isPlainObject(t))e.extend(!0,T,t);else{if(n===r)return T[t];T[t]=n}},debug:function(){!x.silent&&x.debug&&(x.performance?T.performance.log(arguments):(T.debug=Function.prototype.bind.call(console.info,console,x.name+":"),T.debug.apply(console,arguments)))},verbose:function(){!x.silent&&x.verbose&&x.debug&&(x.performance?T.performance.log(arguments):(T.verbose=Function.prototype.bind.call(console.info,console,x.name+":"),T.verbose.apply(console,arguments)))},error:function(){x.silent||(T.error=Function.prototype.bind.call(console.error,console,x.name+":"),T.error.apply(console,arguments))},performance:{log:function(e){var t,n,r;x.performance&&(t=(new Date).getTime(),r=l||t,n=t-r,l=t,s.push({Name:e[0],Arguments:[].slice.call(e,1)||"",Element:D,"Execution Time":n})),clearTimeout(T.performance.timer),T.performance.timer=setTimeout(T.performance.display,500)},display:function(){var t=x.name+":",n=0;l=!1,clearTimeout(T.performance.timer),e.each(s,function(e,t){n+=t["Execution Time"]}),t+=" "+n+"ms",o&&(t+=" '"+o+"'"),a.length>1&&(t+=" ("+a.length+")"),(console.group!==r||console.table!==r)&&s.length>0&&(console.groupCollapsed(t),console.table?console.table(s):e.each(s,function(e,t){console.log(t.Name+": "+t["Execution Time"]+"ms")}),console.groupEnd()),s=[]}},invoke:function(t,n,a){var o,l,s,u=A;return n=n||d,a=D||a,"string"==typeof t&&u!==r&&(t=t.split(/[\. ]/),o=t.length-1,e.each(t,function(n,i){var a=n!=o?i+t[n+1].charAt(0).toUpperCase()+t[n+1].slice(1):t;if(e.isPlainObject(u[a])&&n!=o)u=u[a];else{if(u[a]!==r)return l=u[a],!1;if(!e.isPlainObject(u[i])||n==o)return u[i]!==r&&(l=u[i],!1);u=u[i]}})),e.isFunction(l)?s=l.apply(a,n):l!==r&&(s=l),e.isArray(i)?i.push(s):i!==r?i=[i,s]:s!==r&&(i=s),l}},T.initialize()}),i!==r?i:this},e.fn.form.settings={name:"Form",namespace:"form",debug:!1,verbose:!1,performance:!0,fields:!1,keyboardShortcuts:!0,on:"submit",inline:!1,delay:200,revalidate:!0,transition:"scale",duration:200,onValid:function(){},onInvalid:function(){},onSuccess:function(){return!0},onFailure:function(){return!1},metadata:{defaultValue:"default",validate:"validate"},regExp:{bracket:/\[(.*)\]/i,decimal:/^\d*(\.)\d+/,email:/^[a-z0-9!#$%&'*+\/=?^_`{|}~.-]+@[a-z0-9]([a-z0-9-]*[a-z0-9])?(\.[a-z0-9]([a-z0-9-]*[a-z0-9])?)*$/i,escape:/[\-\[\]\/\{\}\(\)\*\+\?\.\\\^\$\|]/g,flags:/^\/(.*)\/(.*)?/,integer:/^\-?\d+$/,number:/^\-?\d*(\.\d+)?$/,url:/(https?:\/\/(?:www\.|(?!www))[^\s\.]+\.[^\s]{2,}|www\.[^\s]+\.[^\s]{2,})/i},text:{unspecifiedRule:"Please enter a valid value",unspecifiedField:"This field"},prompt:{empty:"{name} must have a value",checked:"{name} must be checked",email:"{name} must be a valid e-mail",url:"{name} must be a valid url",regExp:"{name} is not formatted correctly",integer:"{name} must be an integer",decimal:"{name} must be a decimal number",number:"{name} must be set to a number",is:'{name} must be "{ruleValue}"',isExactly:'{name} must be exactly "{ruleValue}"',not:'{name} cannot be set to "{ruleValue}"',notExactly:'{name} cannot be set to exactly "{ruleValue}"',contain:'{name} cannot contain "{ruleValue}"',containExactly:'{name} cannot contain exactly "{ruleValue}"',doesntContain:'{name} must contain  "{ruleValue}"',doesntContainExactly:'{name} must contain exactly "{ruleValue}"',minLength:"{name} must be at least {ruleValue} characters",length:"{name} must be at least {ruleValue} characters",exactLength:"{name} must be exactly {ruleValue} characters",maxLength:"{name} cannot be longer than {ruleValue} characters",match:"{name} must match {ruleValue} field",different:"{name} must have a different value than {ruleValue} field",creditCard:"{name} must be a valid credit card number",minCount:"{name} must have at least {ruleValue} choices",exactCount:"{name} must have exactly {ruleValue} choices",maxCount:"{name} must have {ruleValue} or less choices"},selector:{checkbox:'input[type="checkbox"], input[type="radio"]',clear:".clear",field:"input, textarea, select",group:".field",input:"input",message:".error.message",prompt:".prompt.label",radio:'input[type="radio"]',reset:'.reset:not([type="reset"])',submit:'.submit:not([type="submit"])',uiCheckbox:".ui.checkbox",uiDropdown:".ui.dropdown"},className:{error:"error",label:"ui prompt label",pressed:"down",success:"success"},error:{identifier:"You must specify a string identifier for each field",method:"The method you called is not defined.",noRule:"There is no rule matching the one you specified",oldSyntax:"Starting in 2.0 forms now only take a single settings object. Validation settings converted to new syntax automatically."},templates:{error:function(t){var n='<ul class="list">';return e.each(t,function(e,t){n+="<li>"+t+"</li>"}),n+="</ul>",e(n)},prompt:function(t){return e("<div/>").addClass("ui basic red pointing prompt label").html(t[0])}},rules:{empty:function(t){return!(t===r||""===t||e.isArray(t)&&0===t.length)},checked:function(){return e(this).filter(":checked").length>0},email:function(t){return e.fn.form.settings.regExp.email.test(t)},url:function(t){return e.fn.form.settings.regExp.url.test(t)},regExp:function(t,n){if(n instanceof RegExp)return t.match(n);var r,i=n.match(e.fn.form.settings.regExp.flags);return i&&(n=i.length>=2?i[1]:n,r=i.length>=3?i[2]:""),t.match(new RegExp(n,r))},integer:function(t,n){var i,a,o,l=e.fn.form.settings.regExp.integer;return n&&["",".."].indexOf(n)===-1&&(n.indexOf("..")==-1?l.test(n)&&(i=a=n-0):(o=n.split("..",2),l.test(o[0])&&(i=o[0]-0),l.test(o[1])&&(a=o[1]-0))),l.test(t)&&(i===r||t>=i)&&(a===r||t<=a)},decimal:function(t){return e.fn.form.settings.regExp.decimal.test(t)},number:function(t){return e.fn.form.settings.regExp.number.test(t)},is:function(e,t){return t="string"==typeof t?t.toLowerCase():t,e="string"==typeof e?e.toLowerCase():e,e==t},isExactly:function(e,t){return e==t},not:function(e,t){return e="string"==typeof e?e.toLowerCase():e,t="string"==typeof t?t.toLowerCase():t,e!=t},notExactly:function(e,t){return e!=t},contains:function(t,n){return n=n.replace(e.fn.form.settings.regExp.escape,"\\$&"),t.search(new RegExp(n,"i"))!==-1},containsExactly:function(t,n){return n=n.replace(e.fn.form.settings.regExp.escape,"\\$&"),t.search(new RegExp(n))!==-1},doesntContain:function(t,n){return n=n.replace(e.fn.form.settings.regExp.escape,"\\$&"),t.search(new RegExp(n,"i"))===-1},doesntContainExactly:function(t,n){return n=n.replace(e.fn.form.settings.regExp.escape,"\\$&"),t.search(new RegExp(n))===-1},minLength:function(e,t){return e!==r&&e.length>=t},length:function(e,t){return e!==r&&e.length>=t},exactLength:function(e,t){return e!==r&&e.length==t},maxLength:function(e,t){return e!==r&&e.length<=t},match:function(t,n){var i;e(this);return e('[data-validate="'+n+'"]').length>0?i=e('[data-validate="'+n+'"]').val():e("#"+n).length>0?i=e("#"+n).val():e('[name="'+n+'"]').length>0?i=e('[name="'+n+'"]').val():e('[name="'+n+'[]"]').length>0&&(i=e('[name="'+n+'[]"]')),i!==r&&t.toString()==i.toString()},different:function(t,n){var i;e(this);return e('[data-validate="'+n+'"]').length>0?i=e('[data-validate="'+n+'"]').val():e("#"+n).length>0?i=e("#"+n).val():e('[name="'+n+'"]').length>0?i=e('[name="'+n+'"]').val():e('[name="'+n+'[]"]').length>0&&(i=e('[name="'+n+'[]"]')),i!==r&&t.toString()!==i.toString()},creditCard:function(t,n){var r,i,a={visa:{pattern:/^4/,length:[16]},amex:{pattern:/^3[47]/,length:[15]},mastercard:{pattern:/^5[1-5]/,length:[16]},discover:{pattern:/^(6011|622(12[6-9]|1[3-9][0-9]|[2-8][0-9]{2}|9[0-1][0-9]|92[0-5]|64[4-9])|65)/,length:[16]},unionPay:{pattern:/^(62|88)/,length:[16,17,18,19]},jcb:{pattern:/^35(2[89]|[3-8][0-9])/,length:[16]},maestro:{pattern:/^(5018|5020|5038|6304|6759|676[1-3])/,length:[12,13,14,15,16,17,18,19]},dinersClub:{pattern:/^(30[0-5]|^36)/,length:[14]},laser:{pattern:/^(6304|670[69]|6771)/,length:[16,17,18,19]},visaElectron:{pattern:/^(4026|417500|4508|4844|491(3|7))/,length:[16]}},o={},l=!1,s="string"==typeof n&&n.split(",");if("string"==typeof t&&0!==t.length){if(s&&(e.each(s,function(n,r){i=a[r],i&&(o={length:e.inArray(t.length,i.length)!==-1,pattern:t.search(i.pattern)!==-1},o.length&&o.pattern&&(l=!0))}),!l))return!1;if(r={number:e.inArray(t.length,a.unionPay.length)!==-1,pattern:t.search(a.unionPay.pattern)!==-1},r.number&&r.pattern)return!0;for(var u=t.length,c=0,f=[[0,1,2,3,4,5,6,7,8,9],[0,2,4,6,8,1,3,5,7,9]],d=0;u--;)d+=f[c][parseInt(t.charAt(u),10)],c^=1;return d%10===0&&d>0}},minCount:function(e,t){return 0==t||(1==t?""!==e:e.split(",").length>=t)},exactCount:function(e,t){return 0==t?""===e:1==t?""!==e&&e.search(",")===-1:e.split(",").length==t},maxCount:function(e,t){return 0!=t&&(1==t?e.search(",")===-1:e.split(",").length<=t)}}}}(jQuery,window,document);
/*!
 * # Semantic UI 2.2.6 - Dropdown
 * http://github.com/semantic-org/semantic-ui/
 *
 *
 * Released under the MIT license
 * http://opensource.org/licenses/MIT
 *
 */
!function(e,t,n,i){"use strict";t="undefined"!=typeof t&&t.Math==Math?t:"undefined"!=typeof self&&self.Math==Math?self:Function("return this")(),e.fn.dropdown=function(a){var o,s=e(this),r=e(n),l=s.selector||"",c="ontouchstart"in n.documentElement,u=(new Date).getTime(),d=[],v=arguments[0],m="string"==typeof v,f=[].slice.call(arguments,1);return s.each(function(h){var g,p,b,w,x,C,S,y,A=e.isPlainObject(a)?e.extend(!0,{},e.fn.dropdown.settings,a):e.extend({},e.fn.dropdown.settings),T=A.className,k=A.message,L=A.fields,I=A.keys,D=A.metadata,q=A.namespace,R=A.regExp,O=A.selector,V=A.error,E=A.templates,F="."+q,M="module-"+q,z=e(this),P=e(A.context),H=z.find(O.text),j=z.find(O.search),U=z.find(O.sizer),N=z.find(O.input),K=z.find(O.icon),B=z.prev().find(O.text).length>0?z.prev().find(O.text):z.prev(),W=z.children(O.menu),$=W.find(O.item),Q=!1,Y=!1,G=!1,J=this,X=z.data(M);y={initialize:function(){y.debug("Initializing dropdown",A),y.is.alreadySetup()?y.setup.reference():(y.setup.layout(),y.refreshData(),y.save.defaults(),y.restore.selected(),y.create.id(),y.bind.events(),y.observeChanges(),y.instantiate())},instantiate:function(){y.verbose("Storing instance of dropdown",y),X=y,z.data(M,y)},destroy:function(){y.verbose("Destroying previous dropdown",z),y.remove.tabbable(),z.off(F).removeData(M),W.off(F),r.off(w),y.disconnect.menuObserver(),y.disconnect.selectObserver()},observeChanges:function(){"MutationObserver"in t&&(C=new MutationObserver(y.event.select.mutation),S=new MutationObserver(y.event.menu.mutation),y.debug("Setting up mutation observer",C,S),y.observe.select(),y.observe.menu())},disconnect:{menuObserver:function(){S&&S.disconnect()},selectObserver:function(){C&&C.disconnect()}},observe:{select:function(){y.has.input()&&C.observe(N[0],{childList:!0,subtree:!0})},menu:function(){y.has.menu()&&S.observe(W[0],{childList:!0,subtree:!0})}},create:{id:function(){x=(Math.random().toString(16)+"000000000").substr(2,8),w="."+x,y.verbose("Creating unique id for element",x)},userChoice:function(t){var n,a,o;return!!(t=t||y.get.userValues())&&(t=e.isArray(t)?t:[t],e.each(t,function(t,s){y.get.item(s)===!1&&(o=A.templates.addition(y.add.variables(k.addResult,s)),a=e("<div />").html(o).attr("data-"+D.value,s).attr("data-"+D.text,s).addClass(T.addition).addClass(T.item),A.hideAdditions&&a.addClass(T.hidden),n=n===i?a:n.add(a),y.verbose("Creating user choices for value",s,a))}),n)},userLabels:function(t){var n=y.get.userValues();n&&(y.debug("Adding user labels",n),e.each(n,function(e,t){y.verbose("Adding custom user value"),y.add.label(t,t)}))},menu:function(){W=e("<div />").addClass(T.menu).appendTo(z)},sizer:function(){U=e("<span />").addClass(T.sizer).insertAfter(j)}},search:function(e){e=e!==i?e:y.get.query(),y.verbose("Searching for query",e),y.has.minCharacters(e)?y.filter(e):y.hide()},select:{firstUnfiltered:function(){y.verbose("Selecting first non-filtered element"),y.remove.selectedItem(),$.not(O.unselectable).not(O.addition+O.hidden).eq(0).addClass(T.selected)},nextAvailable:function(e){e=e.eq(0);var t=e.nextAll(O.item).not(O.unselectable).eq(0),n=e.prevAll(O.item).not(O.unselectable).eq(0),i=t.length>0;i?(y.verbose("Moving selection to",t),t.addClass(T.selected)):(y.verbose("Moving selection to",n),n.addClass(T.selected))}},setup:{api:function(){var e={debug:A.debug,urlData:{value:y.get.value(),query:y.get.query()},on:!1};y.verbose("First request, initializing API"),z.api(e)},layout:function(){z.is("select")&&(y.setup.select(),y.setup.returnedObject()),y.has.menu()||y.create.menu(),y.is.search()&&!y.has.search()&&(y.verbose("Adding search input"),j=e("<input />").addClass(T.search).prop("autocomplete","off").insertBefore(H)),y.is.multiple()&&y.is.searchSelection()&&!y.has.sizer()&&y.create.sizer(),A.allowTab&&y.set.tabbable()},select:function(){var t=y.get.selectValues();y.debug("Dropdown initialized on a select",t),z.is("select")&&(N=z),N.parent(O.dropdown).length>0?(y.debug("UI dropdown already exists. Creating dropdown menu only"),z=N.closest(O.dropdown),y.has.menu()||y.create.menu(),W=z.children(O.menu),y.setup.menu(t)):(y.debug("Creating entire dropdown from select"),z=e("<div />").attr("class",N.attr("class")).addClass(T.selection).addClass(T.dropdown).html(E.dropdown(t)).insertBefore(N),N.hasClass(T.multiple)&&N.prop("multiple")===!1&&(y.error(V.missingMultiple),N.prop("multiple",!0)),N.is("[multiple]")&&y.set.multiple(),N.prop("disabled")&&(y.debug("Disabling dropdown"),z.addClass(T.disabled)),N.removeAttr("class").detach().prependTo(z)),y.refresh()},menu:function(e){W.html(E.menu(e,L)),$=W.find(O.item)},reference:function(){y.debug("Dropdown behavior was called on select, replacing with closest dropdown"),z=z.parent(O.dropdown),y.refresh(),y.setup.returnedObject(),m&&(X=y,y.invoke(v))},returnedObject:function(){var e=s.slice(0,h),t=s.slice(h+1);s=e.add(z).add(t)}},refresh:function(){y.refreshSelectors(),y.refreshData()},refreshItems:function(){$=W.find(O.item)},refreshSelectors:function(){y.verbose("Refreshing selector cache"),H=z.find(O.text),j=z.find(O.search),N=z.find(O.input),K=z.find(O.icon),B=z.prev().find(O.text).length>0?z.prev().find(O.text):z.prev(),W=z.children(O.menu),$=W.find(O.item)},refreshData:function(){y.verbose("Refreshing cached metadata"),$.removeData(D.text).removeData(D.value)},clearData:function(){y.verbose("Clearing metadata"),$.removeData(D.text).removeData(D.value),z.removeData(D.defaultText).removeData(D.defaultValue).removeData(D.placeholderText)},toggle:function(){y.verbose("Toggling menu visibility"),y.is.active()?y.hide():y.show()},show:function(t){if(t=e.isFunction(t)?t:function(){},y.can.show()&&!y.is.active()){if(y.debug("Showing dropdown"),!y.has.message()||y.has.maxSelections()||y.has.allResultsFiltered()||y.remove.message(),y.is.allFiltered())return!0;A.onShow.call(J)!==!1&&y.animate.show(function(){y.can.click()&&y.bind.intent(),y.has.menuSearch()&&y.focusSearch(),y.set.visible(),t.call(J)})}},hide:function(t){t=e.isFunction(t)?t:function(){},y.is.active()&&(y.debug("Hiding dropdown"),A.onHide.call(J)!==!1&&y.animate.hide(function(){y.remove.visible(),t.call(J)}))},hideOthers:function(){y.verbose("Finding other dropdowns to hide"),s.not(z).has(O.menu+"."+T.visible).dropdown("hide")},hideMenu:function(){y.verbose("Hiding menu  instantaneously"),y.remove.active(),y.remove.visible(),W.transition("hide")},hideSubMenus:function(){var e=W.children(O.item).find(O.menu);y.verbose("Hiding sub menus",e),e.transition("hide")},bind:{events:function(){c&&y.bind.touchEvents(),y.bind.keyboardEvents(),y.bind.inputEvents(),y.bind.mouseEvents()},touchEvents:function(){y.debug("Touch device detected binding additional touch events"),y.is.searchSelection()||y.is.single()&&z.on("touchstart"+F,y.event.test.toggle),W.on("touchstart"+F,O.item,y.event.item.mouseenter)},keyboardEvents:function(){y.verbose("Binding keyboard events"),z.on("keydown"+F,y.event.keydown),y.has.search()&&z.on(y.get.inputEvent()+F,O.search,y.event.input),y.is.multiple()&&r.on("keydown"+w,y.event.document.keydown)},inputEvents:function(){y.verbose("Binding input change events"),z.on("change"+F,O.input,y.event.change)},mouseEvents:function(){y.verbose("Binding mouse events"),y.is.multiple()&&z.on("click"+F,O.label,y.event.label.click).on("click"+F,O.remove,y.event.remove.click),y.is.searchSelection()?(z.on("mousedown"+F,y.event.mousedown).on("mouseup"+F,y.event.mouseup).on("mousedown"+F,O.menu,y.event.menu.mousedown).on("mouseup"+F,O.menu,y.event.menu.mouseup).on("click"+F,O.icon,y.event.icon.click).on("focus"+F,O.search,y.event.search.focus).on("click"+F,O.search,y.event.search.focus).on("blur"+F,O.search,y.event.search.blur).on("click"+F,O.text,y.event.text.focus),y.is.multiple()&&z.on("click"+F,y.event.click)):("click"==A.on?z.on("click"+F,O.icon,y.event.icon.click).on("click"+F,y.event.test.toggle):"hover"==A.on?z.on("mouseenter"+F,y.delay.show).on("mouseleave"+F,y.delay.hide):z.on(A.on+F,y.toggle),z.on("mousedown"+F,y.event.mousedown).on("mouseup"+F,y.event.mouseup).on("focus"+F,y.event.focus).on("blur"+F,y.event.blur)),W.on("mouseenter"+F,O.item,y.event.item.mouseenter).on("mouseleave"+F,O.item,y.event.item.mouseleave).on("click"+F,O.item,y.event.item.click)},intent:function(){y.verbose("Binding hide intent event to document"),c&&r.on("touchstart"+w,y.event.test.touch).on("touchmove"+w,y.event.test.touch),r.on("click"+w,y.event.test.hide)}},unbind:{intent:function(){y.verbose("Removing hide intent event from document"),c&&r.off("touchstart"+w).off("touchmove"+w),r.off("click"+w)}},filter:function(e){var t=e!==i?e:y.get.query(),n=function(){y.is.multiple()&&y.filterActive(),y.select.firstUnfiltered(),y.has.allResultsFiltered()?A.onNoResults.call(J,t)?A.allowAdditions?A.hideAdditions&&(y.verbose("User addition with no menu, setting empty style"),y.set.empty(),y.hideMenu()):(y.verbose("All items filtered, showing message",t),y.add.message(k.noResults)):(y.verbose("All items filtered, hiding dropdown",t),y.hideMenu()):(y.remove.empty(),y.remove.message()),A.allowAdditions&&y.add.userSuggestion(e),y.is.searchSelection()&&y.can.show()&&y.is.focusedOnSearch()&&y.show()};A.useLabels&&y.has.maxSelections()||(A.apiSettings?y.can.useAPI()?y.queryRemote(t,function(){n()}):y.error(V.noAPI):(y.filterItems(t),n()))},queryRemote:function(t,n){var i={errorDuration:!1,cache:"local",throttle:A.throttle,urlData:{query:t},onError:function(){y.add.message(k.serverError),n()},onFailure:function(){y.add.message(k.serverError),n()},onSuccess:function(e){y.remove.message(),y.setup.menu({values:e[L.remoteValues]}),n()}};z.api("get request")||y.setup.api(),i=e.extend(!0,{},i,A.apiSettings),z.api("setting",i).api("query")},filterItems:function(t){var n=t!==i?t:y.get.query(),a=null,o=y.escape.regExp(n),s=new RegExp("^"+o,"igm");y.has.query()&&(a=[],y.verbose("Searching for matching values",n),$.each(function(){var t,i,o=e(this);if("both"==A.match||"text"==A.match){if(t=String(y.get.choiceText(o,!1)),t.search(s)!==-1)return a.push(this),!0;if("exact"===A.fullTextSearch&&y.exactSearch(n,t))return a.push(this),!0;if(A.fullTextSearch===!0&&y.fuzzySearch(n,t))return a.push(this),!0}if("both"==A.match||"value"==A.match){if(i=String(y.get.choiceValue(o,t)),i.search(s)!==-1)return a.push(this),!0;if(A.fullTextSearch&&y.fuzzySearch(n,i))return a.push(this),!0}})),y.debug("Showing only matched items",n),y.remove.filteredItem(),a&&$.not(a).addClass(T.filtered)},fuzzySearch:function(e,t){var n=t.length,i=e.length;if(e=e.toLowerCase(),t=t.toLowerCase(),i>n)return!1;if(i===n)return e===t;e:for(var a=0,o=0;a<i;a++){for(var s=e.charCodeAt(a);o<n;)if(t.charCodeAt(o++)===s)continue e;return!1}return!0},exactSearch:function(e,t){return e=e.toLowerCase(),t=t.toLowerCase(),t.indexOf(e)>-1},filterActive:function(){A.useLabels&&$.filter("."+T.active).addClass(T.filtered)},focusSearch:function(e){y.has.search()&&!y.is.focusedOnSearch()&&(e?(z.off("focus"+F,O.search),j.focus(),z.on("focus"+F,O.search,y.event.search.focus)):j.focus())},forceSelection:function(){var e=$.not(T.filtered).filter("."+T.selected).eq(0),t=$.not(T.filtered).filter("."+T.active).eq(0),n=e.length>0?e:t,i=n.length>0;return i?(y.debug("Forcing partial selection to selected item",n),void y.event.item.click.call(n,{},!0)):void(A.allowAdditions?(y.set.selected(y.get.query()),y.remove.searchTerm()):y.remove.searchTerm())},event:{change:function(){G||(y.debug("Input changed, updating selection"),y.set.selected())},focus:function(){A.showOnFocus&&!Q&&y.is.hidden()&&!p&&y.show()},blur:function(e){p=n.activeElement===this,Q||p||(y.remove.activeLabel(),y.hide())},mousedown:function(){y.is.searchSelection()?b=!0:Q=!0},mouseup:function(){y.is.searchSelection()?b=!1:Q=!1},click:function(t){var n=e(t.target);n.is(z)&&(y.is.focusedOnSearch()?y.show():y.focusSearch())},search:{focus:function(){Q=!0,y.is.multiple()&&y.remove.activeLabel(),A.showOnFocus&&y.search()},blur:function(e){p=n.activeElement===this,b||Y||p||(A.forceSelection&&y.forceSelection(),y.hide()),b=!1}},icon:{click:function(e){y.toggle()}},text:{focus:function(e){Q=!0,y.focusSearch()}},input:function(e){(y.is.multiple()||y.is.searchSelection())&&y.set.filtered(),clearTimeout(y.timer),y.timer=setTimeout(y.search,A.delay.search)},label:{click:function(t){var n=e(this),i=z.find(O.label),a=i.filter("."+T.active),o=n.nextAll("."+T.active),s=n.prevAll("."+T.active),r=o.length>0?n.nextUntil(o).add(a).add(n):n.prevUntil(s).add(a).add(n);t.shiftKey?(a.removeClass(T.active),r.addClass(T.active)):t.ctrlKey?n.toggleClass(T.active):(a.removeClass(T.active),n.addClass(T.active)),A.onLabelSelect.apply(this,i.filter("."+T.active))}},remove:{click:function(){var t=e(this).parent();t.hasClass(T.active)?y.remove.activeLabels():y.remove.activeLabels(t)}},test:{toggle:function(e){var t=y.is.multiple()?y.show:y.toggle;y.is.bubbledLabelClick(e)||y.is.bubbledIconClick(e)||y.determine.eventOnElement(e,t)&&e.preventDefault()},touch:function(e){y.determine.eventOnElement(e,function(){"touchstart"==e.type?y.timer=setTimeout(function(){y.hide()},A.delay.touch):"touchmove"==e.type&&clearTimeout(y.timer)}),e.stopPropagation()},hide:function(e){y.determine.eventInModule(e,y.hide)}},select:{mutation:function(e){y.debug("<select> modified, recreating menu"),y.setup.select()}},menu:{mutation:function(t){var n=t[0],i=e(n.addedNodes?n.addedNodes[0]:!1),a=e(n.removedNodes?n.removedNodes[0]:!1),o=i.add(a),s=o.is(O.addition)||o.closest(O.addition).length>0,r=o.is(O.message)||o.closest(O.message).length>0;s||r?(y.debug("Updating item selector cache"),y.refreshItems()):(y.debug("Menu modified, updating selector cache"),y.refresh())},mousedown:function(){Y=!0},mouseup:function(){Y=!1}},item:{mouseenter:function(t){var n=e(t.target),i=e(this),a=i.children(O.menu),o=i.siblings(O.item).children(O.menu),s=a.length>0,r=a.find(n).length>0;!r&&s&&(clearTimeout(y.itemTimer),y.itemTimer=setTimeout(function(){y.verbose("Showing sub-menu",a),e.each(o,function(){y.animate.hide(!1,e(this))}),y.animate.show(!1,a)},A.delay.show),t.preventDefault())},mouseleave:function(t){var n=e(this).children(O.menu);n.length>0&&(clearTimeout(y.itemTimer),y.itemTimer=setTimeout(function(){y.verbose("Hiding sub-menu",n),y.animate.hide(!1,n)},A.delay.hide))},click:function(t,n){var i=e(this),a=e(t?t.target:""),o=i.find(O.menu),s=y.get.choiceText(i),r=y.get.choiceValue(i,s),l=o.length>0,c=o.find(a).length>0;c||l&&!A.allowCategorySelection||(y.is.searchSelection()&&(A.allowAdditions&&y.remove.userAddition(),y.remove.searchTerm(),y.is.focusedOnSearch()||1==n||y.focusSearch(!0)),A.useLabels||(y.remove.filteredItem(),y.set.scrollPosition(i)),y.determine.selectAction.call(this,s,r))}},document:{keydown:function(e){var t=e.which,n=y.is.inObject(t,I);if(n){var i=z.find(O.label),a=i.filter("."+T.active),o=(a.data(D.value),i.index(a)),s=i.length,r=a.length>0,l=a.length>1,c=0===o,u=o+1==s,d=y.is.searchSelection(),v=y.is.focusedOnSearch(),m=y.is.focused(),f=v&&0===y.get.caretPosition();if(d&&!r&&!v)return;t==I.leftArrow?!m&&!f||r?r&&(e.shiftKey?y.verbose("Adding previous label to selection"):(y.verbose("Selecting previous label"),i.removeClass(T.active)),c&&!l?a.addClass(T.active):a.prev(O.siblingLabel).addClass(T.active).end(),e.preventDefault()):(y.verbose("Selecting previous label"),i.last().addClass(T.active)):t==I.rightArrow?(m&&!r&&i.first().addClass(T.active),r&&(e.shiftKey?y.verbose("Adding next label to selection"):(y.verbose("Selecting next label"),i.removeClass(T.active)),u?d?v?i.removeClass(T.active):y.focusSearch():l?a.next(O.siblingLabel).addClass(T.active):a.addClass(T.active):a.next(O.siblingLabel).addClass(T.active),e.preventDefault())):t==I.deleteKey||t==I.backspace?r?(y.verbose("Removing active labels"),u&&d&&!v&&y.focusSearch(),a.last().next(O.siblingLabel).addClass(T.active),y.remove.activeLabels(a),e.preventDefault()):f&&!r&&t==I.backspace&&(y.verbose("Removing last label on input backspace"),a=i.last().addClass(T.active),y.remove.activeLabels(a)):a.removeClass(T.active)}}},keydown:function(e){var t=e.which,n=y.is.inObject(t,I);if(n){var i,a,o=$.not(O.unselectable).filter("."+T.selected).eq(0),s=W.children("."+T.active).eq(0),r=o.length>0?o:s,l=r.length>0?r.siblings(":not(."+T.filtered+")").addBack():W.children(":not(."+T.filtered+")"),c=r.children(O.menu),u=r.closest(O.menu),d=u.hasClass(T.visible)||u.hasClass(T.animating)||u.parent(O.menu).length>0,v=c.length>0,m=r.length>0,f=r.not(O.unselectable).length>0,h=t==I.delimiter&&A.allowAdditions&&y.is.multiple(),g=A.allowAdditions&&A.hideAdditions&&(t==I.enter||h)&&f;if(g&&(y.verbose("Selecting item from keyboard shortcut",r),y.event.item.click.call(r,e),y.is.searchSelection()&&y.remove.searchTerm()),y.is.visible()){if((t==I.enter||h)&&(t==I.enter&&m&&v&&!A.allowCategorySelection?(y.verbose("Pressed enter on unselectable category, opening sub menu"),t=I.rightArrow):f&&(y.verbose("Selecting item from keyboard shortcut",r),y.event.item.click.call(r,e),y.is.searchSelection()&&y.remove.searchTerm()),e.preventDefault()),m&&(t==I.leftArrow&&(a=u[0]!==W[0],a&&(y.verbose("Left key pressed, closing sub-menu"),y.animate.hide(!1,u),r.removeClass(T.selected),u.closest(O.item).addClass(T.selected),e.preventDefault())),t==I.rightArrow&&v&&(y.verbose("Right key pressed, opening sub-menu"),y.animate.show(!1,c),r.removeClass(T.selected),c.find(O.item).eq(0).addClass(T.selected),e.preventDefault())),t==I.upArrow){if(i=m&&d?r.prevAll(O.item+":not("+O.unselectable+")").eq(0):$.eq(0),l.index(i)<0)return y.verbose("Up key pressed but reached top of current menu"),void e.preventDefault();y.verbose("Up key pressed, changing active item"),r.removeClass(T.selected),i.addClass(T.selected),y.set.scrollPosition(i),A.selectOnKeydown&&y.is.single()&&y.set.selectedItem(i),e.preventDefault()}if(t==I.downArrow){if(i=m&&d?i=r.nextAll(O.item+":not("+O.unselectable+")").eq(0):$.eq(0),0===i.length)return y.verbose("Down key pressed but reached bottom of current menu"),void e.preventDefault();y.verbose("Down key pressed, changing active item"),$.removeClass(T.selected),i.addClass(T.selected),y.set.scrollPosition(i),A.selectOnKeydown&&y.is.single()&&y.set.selectedItem(i),e.preventDefault()}t==I.pageUp&&(y.scrollPage("up"),e.preventDefault()),t==I.pageDown&&(y.scrollPage("down"),e.preventDefault()),t==I.escape&&(y.verbose("Escape key pressed, closing dropdown"),y.hide())}else h&&e.preventDefault(),t!=I.downArrow||y.is.visible()||(y.verbose("Down key pressed, showing dropdown"),y.select.firstUnfiltered(),y.show(),e.preventDefault())}else y.has.search()||y.set.selectedLetter(String.fromCharCode(t))}},trigger:{change:function(){var e=n.createEvent("HTMLEvents"),t=N[0];t&&(y.verbose("Triggering native change event"),e.initEvent("change",!0,!1),t.dispatchEvent(e))}},determine:{selectAction:function(t,n){y.verbose("Determining action",A.action),e.isFunction(y.action[A.action])?(y.verbose("Triggering preset action",A.action,t,n),y.action[A.action].call(J,t,n,this)):e.isFunction(A.action)?(y.verbose("Triggering user action",A.action,t,n),A.action.call(J,t,n,this)):y.error(V.action,A.action)},eventInModule:function(t,i){var a=e(t.target),o=a.closest(n.documentElement).length>0,s=a.closest(z).length>0;return i=e.isFunction(i)?i:function(){},o&&!s?(y.verbose("Triggering event",i),i(),!0):(y.verbose("Event occurred in dropdown, canceling callback"),!1)},eventOnElement:function(t,i){var a=e(t.target),o=a.closest(O.siblingLabel),s=n.body.contains(t.target),r=0===z.find(o).length,l=0===a.closest(W).length;return i=e.isFunction(i)?i:function(){},s&&r&&l?(y.verbose("Triggering event",i),i(),!0):(y.verbose("Event occurred in dropdown menu, canceling callback"),!1)}},action:{nothing:function(){},activate:function(t,n,a){if(n=n!==i?n:t,y.can.activate(e(a))){if(y.set.selected(n,e(a)),y.is.multiple()&&!y.is.allFiltered())return;y.hideAndClear()}},select:function(t,n,a){if(n=n!==i?n:t,y.can.activate(e(a))){if(y.set.value(n,e(a)),y.is.multiple()&&!y.is.allFiltered())return;y.hideAndClear()}},combo:function(t,n,a){n=n!==i?n:t,y.set.selected(n,e(a)),y.hideAndClear()},hide:function(e,t,n){y.set.value(t,e),y.hideAndClear()}},get:{id:function(){return x},defaultText:function(){return z.data(D.defaultText)},defaultValue:function(){return z.data(D.defaultValue)},placeholderText:function(){return z.data(D.placeholderText)||""},text:function(){return H.text()},query:function(){return e.trim(j.val())},searchWidth:function(e){return e=e!==i?e:j.val(),U.text(e),Math.ceil(U.width()+1)},selectionCount:function(){var t,n=y.get.values();return t=y.is.multiple()?e.isArray(n)?n.length:0:""!==y.get.value()?1:0},transition:function(e){return"auto"==A.transition?y.is.upward(e)?"slide up":"slide down":A.transition},userValues:function(){var t=y.get.values();return!!t&&(t=e.isArray(t)?t:[t],e.grep(t,function(e){return y.get.item(e)===!1}))},uniqueArray:function(t){return e.grep(t,function(n,i){return e.inArray(n,t)===i})},caretPosition:function(){var e,t,i=j.get(0);return"selectionStart"in i?i.selectionStart:n.selection?(i.focus(),e=n.selection.createRange(),t=e.text.length,e.moveStart("character",-i.value.length),e.text.length-t):void 0},value:function(){var t=N.length>0?N.val():z.data(D.value),n=e.isArray(t)&&1===t.length&&""===t[0];return t===i||n?"":t},values:function(){var e=y.get.value();return""===e?"":!y.has.selectInput()&&y.is.multiple()?"string"==typeof e?e.split(A.delimiter):"":e},remoteValues:function(){var t=y.get.values(),n=!1;return t&&("string"==typeof t&&(t=[t]),e.each(t,function(e,t){var i=y.read.remoteData(t);y.verbose("Restoring value from session data",i,t),i&&(n||(n={}),n[t]=i)})),n},choiceText:function(t,n){if(n=n!==i?n:A.preserveHTML,t)return t.find(O.menu).length>0&&(y.verbose("Retrieving text of element with sub-menu"),t=t.clone(),t.find(O.menu).remove(),t.find(O.menuIcon).remove()),t.data(D.text)!==i?t.data(D.text):n?e.trim(t.html()):e.trim(t.text())},choiceValue:function(t,n){return n=n||y.get.choiceText(t),!!t&&(t.data(D.value)!==i?String(t.data(D.value)):"string"==typeof n?e.trim(n.toLowerCase()):String(n))},inputEvent:function(){var e=j[0];return!!e&&(e.oninput!==i?"input":e.onpropertychange!==i?"propertychange":"keyup")},selectValues:function(){var t={};return t.values=[],z.find("option").each(function(){var n=e(this),a=n.html(),o=n.attr("disabled"),s=n.attr("value")!==i?n.attr("value"):a;"auto"===A.placeholder&&""===s?t.placeholder=a:t.values.push({name:a,value:s,disabled:o})}),A.placeholder&&"auto"!==A.placeholder&&(y.debug("Setting placeholder value to",A.placeholder),t.placeholder=A.placeholder),A.sortSelect?(t.values.sort(function(e,t){return e.name>t.name?1:-1}),y.debug("Retrieved and sorted values from select",t)):y.debug("Retrieved values from select",t),t},activeItem:function(){return $.filter("."+T.active)},selectedItem:function(){var e=$.not(O.unselectable).filter("."+T.selected);return e.length>0?e:$.eq(0)},itemWithAdditions:function(e){var t=y.get.item(e),n=y.create.userChoice(e),i=n&&n.length>0;return i&&(t=t.length>0?t.add(n):n),t},item:function(t,n){var a,o,s=!1;return t=t!==i?t:y.get.values()!==i?y.get.values():y.get.text(),a=o?t.length>0:t!==i&&null!==t,o=y.is.multiple()&&e.isArray(t),n=""===t||0===t||(n||!1),a&&$.each(function(){var a=e(this),r=y.get.choiceText(a),l=y.get.choiceValue(a,r);if(null!==l&&l!==i)if(o)e.inArray(String(l),t)===-1&&e.inArray(r,t)===-1||(s=s?s.add(a):a);else if(n){if(y.verbose("Ambiguous dropdown value using strict type check",a,t),l===t||r===t)return s=a,!0}else if(String(l)==String(t)||r==t)return y.verbose("Found select item by value",l,t),s=a,!0}),s}},check:{maxSelections:function(e){return!A.maxSelections||(e=e!==i?e:y.get.selectionCount(),e>=A.maxSelections?(y.debug("Maximum selection count reached"),A.useLabels&&($.addClass(T.filtered),y.add.message(k.maxSelections)),!0):(y.verbose("No longer at maximum selection count"),y.remove.message(),y.remove.filteredItem(),y.is.searchSelection()&&y.filterItems(),!1))}},restore:{defaults:function(){y.clear(),y.restore.defaultText(),y.restore.defaultValue()},defaultText:function(){var e=y.get.defaultText(),t=y.get.placeholderText;e===t?(y.debug("Restoring default placeholder text",e),y.set.placeholderText(e)):(y.debug("Restoring default text",e),y.set.text(e))},placeholderText:function(){y.set.placeholderText()},defaultValue:function(){var e=y.get.defaultValue();e!==i&&(y.debug("Restoring default value",e),""!==e?(y.set.value(e),y.set.selected()):(y.remove.activeItem(),y.remove.selectedItem()))},labels:function(){A.allowAdditions&&(A.useLabels||(y.error(V.labels),A.useLabels=!0),y.debug("Restoring selected values"),y.create.userLabels()),y.check.maxSelections()},selected:function(){y.restore.values(),y.is.multiple()?(y.debug("Restoring previously selected values and labels"),y.restore.labels()):y.debug("Restoring previously selected values")},values:function(){y.set.initialLoad(),A.apiSettings&&A.saveRemoteData&&y.get.remoteValues()?y.restore.remoteValues():y.set.selected(),y.remove.initialLoad()},remoteValues:function(){var t=y.get.remoteValues();y.debug("Recreating selected from session data",t),t&&(y.is.single()?e.each(t,function(e,t){y.set.text(t)}):e.each(t,function(e,t){y.add.label(e,t)}))}},read:{remoteData:function(e){var n;return t.Storage===i?void y.error(V.noStorage):(n=sessionStorage.getItem(e),n!==i&&n)}},save:{defaults:function(){y.save.defaultText(),y.save.placeholderText(),y.save.defaultValue()},defaultValue:function(){var e=y.get.value();y.verbose("Saving default value as",e),z.data(D.defaultValue,e)},defaultText:function(){var e=y.get.text();y.verbose("Saving default text as",e),z.data(D.defaultText,e)},placeholderText:function(){var e;A.placeholder!==!1&&H.hasClass(T.placeholder)&&(e=y.get.text(),y.verbose("Saving placeholder text as",e),z.data(D.placeholderText,e))},remoteData:function(e,n){return t.Storage===i?void y.error(V.noStorage):(y.verbose("Saving remote data to session storage",n,e),void sessionStorage.setItem(n,e))}},clear:function(){y.is.multiple()&&A.useLabels?y.remove.labels():(y.remove.activeItem(),y.remove.selectedItem()),y.set.placeholderText(),y.clearValue()},clearValue:function(){y.set.value("")},scrollPage:function(e,t){var n,i,a,o=t||y.get.selectedItem(),s=o.closest(O.menu),r=s.outerHeight(),l=s.scrollTop(),c=$.eq(0).outerHeight(),u=Math.floor(r/c),d=(s.prop("scrollHeight"),"up"==e?l-c*u:l+c*u),v=$.not(O.unselectable);a="up"==e?v.index(o)-u:v.index(o)+u,n="up"==e?a>=0:a<v.length,i=n?v.eq(a):"up"==e?v.first():v.last(),i.length>0&&(y.debug("Scrolling page",e,i),o.removeClass(T.selected),i.addClass(T.selected),A.selectOnKeydown&&y.is.single()&&y.set.selectedItem(i),s.scrollTop(d))},set:{filtered:function(){var e=y.is.multiple(),t=y.is.searchSelection(),n=e&&t,i=t?y.get.query():"",a="string"==typeof i&&i.length>0,o=y.get.searchWidth(),s=""!==i;e&&a&&(y.verbose("Adjusting input width",o,A.glyphWidth),j.css("width",o)),a||n&&s?(y.verbose("Hiding placeholder text"),H.addClass(T.filtered)):(!e||n&&!s)&&(y.verbose("Showing placeholder text"),H.removeClass(T.filtered))},empty:function(){z.addClass(T.empty)},loading:function(){z.addClass(T.loading)},placeholderText:function(e){e=e||y.get.placeholderText(),y.debug("Setting placeholder text",e),y.set.text(e),H.addClass(T.placeholder)},tabbable:function(){y.has.search()?(y.debug("Added tabindex to searchable dropdown"),j.val("").attr("tabindex",0),W.attr("tabindex",-1)):(y.debug("Added tabindex to dropdown"),z.attr("tabindex")===i&&(z.attr("tabindex",0),W.attr("tabindex",-1)))},initialLoad:function(){y.verbose("Setting initial load"),g=!0},activeItem:function(e){A.allowAdditions&&e.filter(O.addition).length>0?e.addClass(T.filtered):e.addClass(T.active)},partialSearch:function(e){var t=y.get.query().length;j.val(e.substr(0,t))},scrollPosition:function(e,t){var n,a,o,s,r,l,c,u,d,v=5;e=e||y.get.selectedItem(),n=e.closest(O.menu),a=e&&e.length>0,t=t!==i&&t,e&&n.length>0&&a&&(s=e.position().top,n.addClass(T.loading),l=n.scrollTop(),r=n.offset().top,s=e.offset().top,o=l-r+s,t||(c=n.height(),d=l+c<o+v,u=o-v<l),y.debug("Scrolling to active item",o),(t||u||d)&&n.scrollTop(o),n.removeClass(T.loading))},text:function(e){"select"!==A.action&&("combo"==A.action?(y.debug("Changing combo button text",e,B),A.preserveHTML?B.html(e):B.text(e)):(e!==y.get.placeholderText()&&H.removeClass(T.placeholder),y.debug("Changing text",e,H),H.removeClass(T.filtered),A.preserveHTML?H.html(e):H.text(e)))},selectedItem:function(e){var t=y.get.choiceValue(e),n=y.get.choiceText(e,!1);y.debug("Setting user selection to item",e),y.remove.activeItem(),y.set.partialSearch(n),y.set.activeItem(e),y.set.selected(t,e),y.set.text(n)},selectedLetter:function(t){var n,i=$.filter("."+T.selected),a=i.length>0&&y.has.firstLetter(i,t),o=!1;a&&(n=i.nextAll($).eq(0),y.has.firstLetter(n,t)&&(o=n)),o||$.each(function(){if(y.has.firstLetter(e(this),t))return o=e(this),!1}),o&&(y.verbose("Scrolling to next value with letter",t),y.set.scrollPosition(o),i.removeClass(T.selected),o.addClass(T.selected),A.selectOnKeydown&&y.is.single()&&y.set.selectedItem(o))},direction:function(e){"auto"==A.direction?y.is.onScreen(e)?y.remove.upward(e):y.set.upward(e):"upward"==A.direction&&y.set.upward(e)},upward:function(e){var t=e||z;t.addClass(T.upward)},value:function(e,t,n){var a=y.escape.value(e),o=N.length>0,s=(!y.has.value(e),y.get.values()),r=e!==i?String(e):e;if(o){if(!A.allowReselection&&r==s&&(y.verbose("Skipping value update already same value",e,s),!y.is.initialLoad()))return;y.is.single()&&y.has.selectInput()&&y.can.extendSelect()&&(y.debug("Adding user option",e),y.add.optionValue(e)),y.debug("Updating input value",a,s),G=!0,N.val(a),A.fireOnInit===!1&&y.is.initialLoad()?y.debug("Input native change event ignored on initial load"):y.trigger.change(),G=!1}else y.verbose("Storing value in metadata",a,N),a!==s&&z.data(D.value,r);A.fireOnInit===!1&&y.is.initialLoad()?y.verbose("No callback on initial load",A.onChange):A.onChange.call(J,e,t,n)},active:function(){z.addClass(T.active)},multiple:function(){z.addClass(T.multiple)},visible:function(){z.addClass(T.visible)},exactly:function(e,t){y.debug("Setting selected to exact values"),y.clear(),y.set.selected(e,t)},selected:function(t,n){var i=y.is.multiple();n=A.allowAdditions?n||y.get.itemWithAdditions(t):n||y.get.item(t),n&&(y.debug("Setting selected menu item to",n),y.is.multiple()&&y.remove.searchWidth(),y.is.single()?(y.remove.activeItem(),y.remove.selectedItem()):A.useLabels&&y.remove.selectedItem(),n.each(function(){var t=e(this),a=y.get.choiceText(t),o=y.get.choiceValue(t,a),s=t.hasClass(T.filtered),r=t.hasClass(T.active),l=t.hasClass(T.addition),c=i&&1==n.length;i?!r||l?(A.apiSettings&&A.saveRemoteData&&y.save.remoteData(a,o),A.useLabels?(y.add.value(o,a,t),y.add.label(o,a,c),y.set.activeItem(t),y.filterActive(),y.select.nextAvailable(n)):(y.add.value(o,a,t),y.set.text(y.add.variables(k.count)),y.set.activeItem(t))):s||(y.debug("Selected active value, removing label"),y.remove.selected(o)):(A.apiSettings&&A.saveRemoteData&&y.save.remoteData(a,o),y.set.text(a),y.set.value(o,a,t),t.addClass(T.active).addClass(T.selected))}))}},add:{label:function(t,n,i){var a,o=y.is.searchSelection()?j:H,s=y.escape.value(t);return a=e("<a />").addClass(T.label).attr("data-value",s).html(E.label(s,n)),a=A.onLabelCreate.call(a,s,n),y.has.label(t)?void y.debug("Label already exists, skipping",s):(A.label.variation&&a.addClass(A.label.variation),void(i===!0?(y.debug("Animating in label",a),a.addClass(T.hidden).insertBefore(o).transition(A.label.transition,A.label.duration)):(y.debug("Adding selection label",a),a.insertBefore(o))))},message:function(t){var n=W.children(O.message),i=A.templates.message(y.add.variables(t));n.length>0?n.html(i):n=e("<div/>").html(i).addClass(T.message).appendTo(W)},optionValue:function(t){var n=y.escape.value(t),i=N.find('option[value="'+n+'"]'),a=i.length>0;a||(y.disconnect.selectObserver(),y.is.single()&&(y.verbose("Removing previous user addition"),N.find("option."+T.addition).remove()),e("<option/>").prop("value",n).addClass(T.addition).html(t).appendTo(N),
y.verbose("Adding user addition as an <option>",t),y.observe.select())},userSuggestion:function(e){var t,n=W.children(O.addition),i=y.get.item(e),a=i&&i.not(O.addition).length,o=n.length>0;if(!A.useLabels||!y.has.maxSelections()){if(""===e||a)return void n.remove();o?(n.data(D.value,e).data(D.text,e).attr("data-"+D.value,e).attr("data-"+D.text,e).removeClass(T.filtered),A.hideAdditions||(t=A.templates.addition(y.add.variables(k.addResult,e)),n.html(t)),y.verbose("Replacing user suggestion with new value",n)):(n=y.create.userChoice(e),n.prependTo(W),y.verbose("Adding item choice to menu corresponding with user choice addition",n)),A.hideAdditions&&!y.is.allFiltered()||n.addClass(T.selected).siblings().removeClass(T.selected),y.refreshItems()}},variables:function(e,t){var n,i,a=e.search("{count}")!==-1,o=e.search("{maxCount}")!==-1,s=e.search("{term}")!==-1;return y.verbose("Adding templated variables to message",e),a&&(n=y.get.selectionCount(),e=e.replace("{count}",n)),o&&(n=y.get.selectionCount(),e=e.replace("{maxCount}",A.maxSelections)),s&&(i=t||y.get.query(),e=e.replace("{term}",i)),e},value:function(t,n,i){var a,o=y.get.values();return""===t?void y.debug("Cannot select blank values from multiselect"):(e.isArray(o)?(a=o.concat([t]),a=y.get.uniqueArray(a)):a=[t],y.has.selectInput()?y.can.extendSelect()&&(y.debug("Adding value to select",t,a,N),y.add.optionValue(t)):(a=a.join(A.delimiter),y.debug("Setting hidden input to delimited value",a,N)),A.fireOnInit===!1&&y.is.initialLoad()?y.verbose("Skipping onadd callback on initial load",A.onAdd):A.onAdd.call(J,t,n,i),y.set.value(a,t,n,i),void y.check.maxSelections())}},remove:{active:function(){z.removeClass(T.active)},activeLabel:function(){z.find(O.label).removeClass(T.active)},empty:function(){z.removeClass(T.empty)},loading:function(){z.removeClass(T.loading)},initialLoad:function(){g=!1},upward:function(e){var t=e||z;t.removeClass(T.upward)},visible:function(){z.removeClass(T.visible)},activeItem:function(){$.removeClass(T.active)},filteredItem:function(){A.useLabels&&y.has.maxSelections()||(A.useLabels&&y.is.multiple()?$.not("."+T.active).removeClass(T.filtered):$.removeClass(T.filtered),y.remove.empty())},optionValue:function(e){var t=y.escape.value(e),n=N.find('option[value="'+t+'"]'),i=n.length>0;i&&n.hasClass(T.addition)&&(C&&(C.disconnect(),y.verbose("Temporarily disconnecting mutation observer")),n.remove(),y.verbose("Removing user addition as an <option>",t),C&&C.observe(N[0],{childList:!0,subtree:!0}))},message:function(){W.children(O.message).remove()},searchWidth:function(){j.css("width","")},searchTerm:function(){y.verbose("Cleared search term"),j.val(""),y.set.filtered()},userAddition:function(){$.filter(O.addition).remove()},selected:function(t,n){return!!(n=A.allowAdditions?n||y.get.itemWithAdditions(t):n||y.get.item(t))&&void n.each(function(){var t=e(this),n=y.get.choiceText(t),i=y.get.choiceValue(t,n);y.is.multiple()?A.useLabels?(y.remove.value(i,n,t),y.remove.label(i)):(y.remove.value(i,n,t),0===y.get.selectionCount()?y.set.placeholderText():y.set.text(y.add.variables(k.count))):y.remove.value(i,n,t),t.removeClass(T.filtered).removeClass(T.active),A.useLabels&&t.removeClass(T.selected)})},selectedItem:function(){$.removeClass(T.selected)},value:function(e,t,n){var i,a=y.get.values();y.has.selectInput()?(y.verbose("Input is <select> removing selected option",e),i=y.remove.arrayValue(e,a),y.remove.optionValue(e)):(y.verbose("Removing from delimited values",e),i=y.remove.arrayValue(e,a),i=i.join(A.delimiter)),A.fireOnInit===!1&&y.is.initialLoad()?y.verbose("No callback on initial load",A.onRemove):A.onRemove.call(J,e,t,n),y.set.value(i,t,n),y.check.maxSelections()},arrayValue:function(t,n){return e.isArray(n)||(n=[n]),n=e.grep(n,function(e){return t!=e}),y.verbose("Removed value from delimited string",t,n),n},label:function(e,t){var n=z.find(O.label),i=n.filter('[data-value="'+e+'"]');y.verbose("Removing label",i),i.remove()},activeLabels:function(e){e=e||z.find(O.label).filter("."+T.active),y.verbose("Removing active label selections",e),y.remove.labels(e)},labels:function(t){t=t||z.find(O.label),y.verbose("Removing labels",t),t.each(function(){var t=e(this),n=t.data(D.value),a=n!==i?String(n):n,o=y.is.userValue(a);return A.onLabelRemove.call(t,n)===!1?void y.debug("Label remove callback cancelled removal"):(y.remove.message(),void(o?(y.remove.value(a),y.remove.label(a)):y.remove.selected(a)))})},tabbable:function(){y.has.search()?(y.debug("Searchable dropdown initialized"),j.removeAttr("tabindex"),W.removeAttr("tabindex")):(y.debug("Simple selection dropdown initialized"),z.removeAttr("tabindex"),W.removeAttr("tabindex"))}},has:{menuSearch:function(){return y.has.search()&&j.closest(W).length>0},search:function(){return j.length>0},sizer:function(){return U.length>0},selectInput:function(){return N.is("select")},minCharacters:function(e){return!A.minCharacters||(e=e!==i?String(e):String(y.get.query()),e.length>=A.minCharacters)},firstLetter:function(e,t){var n,i;return!(!e||0===e.length||"string"!=typeof t)&&(n=y.get.choiceText(e,!1),t=t.toLowerCase(),i=String(n).charAt(0).toLowerCase(),t==i)},input:function(){return N.length>0},items:function(){return $.length>0},menu:function(){return W.length>0},message:function(){return 0!==W.children(O.message).length},label:function(e){var t=y.escape.value(e),n=z.find(O.label);return n.filter('[data-value="'+t+'"]').length>0},maxSelections:function(){return A.maxSelections&&y.get.selectionCount()>=A.maxSelections},allResultsFiltered:function(){var e=$.not(O.addition);return e.filter(O.unselectable).length===e.length},userSuggestion:function(){return W.children(O.addition).length>0},query:function(){return""!==y.get.query()},value:function(t){var n=y.get.values(),i=e.isArray(n)?n&&e.inArray(t,n)!==-1:n==t;return!!i}},is:{active:function(){return z.hasClass(T.active)},bubbledLabelClick:function(t){return e(t.target).is("select, input")&&z.closest("label").length>0},bubbledIconClick:function(t){return e(t.target).closest(K).length>0},alreadySetup:function(){return z.is("select")&&z.parent(O.dropdown).length>0&&0===z.prev().length},animating:function(e){return e?e.transition&&e.transition("is animating"):W.transition&&W.transition("is animating")},disabled:function(){return z.hasClass(T.disabled)},focused:function(){return n.activeElement===z[0]},focusedOnSearch:function(){return n.activeElement===j[0]},allFiltered:function(){return(y.is.multiple()||y.has.search())&&!(0==A.hideAdditions&&y.has.userSuggestion())&&!y.has.message()&&y.has.allResultsFiltered()},hidden:function(e){return!y.is.visible(e)},initialLoad:function(){return g},onScreen:function(e){var t,n=e||W,i=!0,a={};return n.addClass(T.loading),t={context:{scrollTop:P.scrollTop(),height:P.outerHeight()},menu:{offset:n.offset(),height:n.outerHeight()}},a={above:t.context.scrollTop<=t.menu.offset.top-t.menu.height,below:t.context.scrollTop+t.context.height>=t.menu.offset.top+t.menu.height},a.below?(y.verbose("Dropdown can fit in context downward",a),i=!0):a.below||a.above?(y.verbose("Dropdown cannot fit below, opening upward",a),i=!1):(y.verbose("Dropdown cannot fit in either direction, favoring downward",a),i=!0),n.removeClass(T.loading),i},inObject:function(t,n){var i=!1;return e.each(n,function(e,n){if(n==t)return i=!0,!0}),i},multiple:function(){return z.hasClass(T.multiple)},single:function(){return!y.is.multiple()},selectMutation:function(t){var n=!1;return e.each(t,function(t,i){if(i.target&&e(i.target).is("select"))return n=!0,!0}),n},search:function(){return z.hasClass(T.search)},searchSelection:function(){return y.has.search()&&1===j.parent(O.dropdown).length},selection:function(){return z.hasClass(T.selection)},userValue:function(t){return e.inArray(t,y.get.userValues())!==-1},upward:function(e){var t=e||z;return t.hasClass(T.upward)},visible:function(e){return e?e.hasClass(T.visible):W.hasClass(T.visible)}},can:{activate:function(e){return!!A.useLabels||(!y.has.maxSelections()||!(!y.has.maxSelections()||!e.hasClass(T.active)))},click:function(){return c||"click"==A.on},extendSelect:function(){return A.allowAdditions||A.apiSettings},show:function(){return!y.is.disabled()&&(y.has.items()||y.has.message())},useAPI:function(){return e.fn.api!==i}},animate:{show:function(t,n){var a,o=n||W,s=n?function(){}:function(){y.hideSubMenus(),y.hideOthers(),y.set.active()};t=e.isFunction(t)?t:function(){},y.verbose("Doing menu show animation",o),y.set.direction(n),a=y.get.transition(n),y.is.selection()&&y.set.scrollPosition(y.get.selectedItem(),!0),(y.is.hidden(o)||y.is.animating(o))&&("none"==a?(s(),o.transition("show"),t.call(J)):e.fn.transition!==i&&z.transition("is supported")?o.transition({animation:a+" in",debug:A.debug,verbose:A.verbose,duration:A.duration,queue:!0,onStart:s,onComplete:function(){t.call(J)}}):y.error(V.noTransition,a))},hide:function(t,n){var a=n||W,o=(n?.9*A.duration:A.duration,n?function(){}:function(){y.can.click()&&y.unbind.intent(),y.remove.active()}),s=y.get.transition(n);t=e.isFunction(t)?t:function(){},(y.is.visible(a)||y.is.animating(a))&&(y.verbose("Doing menu hide animation",a),"none"==s?(o(),a.transition("hide"),t.call(J)):e.fn.transition!==i&&z.transition("is supported")?a.transition({animation:s+" out",duration:A.duration,debug:A.debug,verbose:A.verbose,queue:!0,onStart:o,onComplete:function(){"auto"==A.direction&&y.remove.upward(n),t.call(J)}}):y.error(V.transition))}},hideAndClear:function(){y.remove.searchTerm(),y.has.maxSelections()||(y.has.search()?y.hide(function(){y.remove.filteredItem()}):y.hide())},delay:{show:function(){y.verbose("Delaying show event to ensure user intent"),clearTimeout(y.timer),y.timer=setTimeout(y.show,A.delay.show)},hide:function(){y.verbose("Delaying hide event to ensure user intent"),clearTimeout(y.timer),y.timer=setTimeout(y.hide,A.delay.hide)}},escape:{value:function(t){var n=e.isArray(t),i="string"==typeof t,a=!i&&!n,o=i&&t.search(R.quote)!==-1,s=[];return y.has.selectInput()&&!a&&o?(y.debug("Encoding quote values for use in select",t),n?(e.each(t,function(e,t){s.push(t.replace(R.quote,"&quot;"))}),s):t.replace(R.quote,"&quot;")):t},regExp:function(e){return e=String(e),e.replace(R.escape,"\\$&")}},setting:function(t,n){if(y.debug("Changing setting",t,n),e.isPlainObject(t))e.extend(!0,A,t);else{if(n===i)return A[t];e.isPlainObject(A[t])?e.extend(!0,A[t],n):A[t]=n}},internal:function(t,n){if(e.isPlainObject(t))e.extend(!0,y,t);else{if(n===i)return y[t];y[t]=n}},debug:function(){!A.silent&&A.debug&&(A.performance?y.performance.log(arguments):(y.debug=Function.prototype.bind.call(console.info,console,A.name+":"),y.debug.apply(console,arguments)))},verbose:function(){!A.silent&&A.verbose&&A.debug&&(A.performance?y.performance.log(arguments):(y.verbose=Function.prototype.bind.call(console.info,console,A.name+":"),y.verbose.apply(console,arguments)))},error:function(){A.silent||(y.error=Function.prototype.bind.call(console.error,console,A.name+":"),y.error.apply(console,arguments))},performance:{log:function(e){var t,n,i;A.performance&&(t=(new Date).getTime(),i=u||t,n=t-i,u=t,d.push({Name:e[0],Arguments:[].slice.call(e,1)||"",Element:J,"Execution Time":n})),clearTimeout(y.performance.timer),y.performance.timer=setTimeout(y.performance.display,500)},display:function(){var t=A.name+":",n=0;u=!1,clearTimeout(y.performance.timer),e.each(d,function(e,t){n+=t["Execution Time"]}),t+=" "+n+"ms",l&&(t+=" '"+l+"'"),(console.group!==i||console.table!==i)&&d.length>0&&(console.groupCollapsed(t),console.table?console.table(d):e.each(d,function(e,t){console.log(t.Name+": "+t["Execution Time"]+"ms")}),console.groupEnd()),d=[]}},invoke:function(t,n,a){var s,r,l,c=X;return n=n||f,a=J||a,"string"==typeof t&&c!==i&&(t=t.split(/[\. ]/),s=t.length-1,e.each(t,function(n,a){var o=n!=s?a+t[n+1].charAt(0).toUpperCase()+t[n+1].slice(1):t;if(e.isPlainObject(c[o])&&n!=s)c=c[o];else{if(c[o]!==i)return r=c[o],!1;if(!e.isPlainObject(c[a])||n==s)return c[a]!==i?(r=c[a],!1):(y.error(V.method,t),!1);c=c[a]}})),e.isFunction(r)?l=r.apply(a,n):r!==i&&(l=r),e.isArray(o)?o.push(l):o!==i?o=[o,l]:l!==i&&(o=l),r}},m?(X===i&&y.initialize(),y.invoke(v)):(X!==i&&X.invoke("destroy"),y.initialize())}),o!==i?o:s},e.fn.dropdown.settings={silent:!1,debug:!1,verbose:!1,performance:!0,on:"click",action:"activate",apiSettings:!1,selectOnKeydown:!0,minCharacters:0,saveRemoteData:!0,throttle:200,context:t,direction:"auto",keepOnScreen:!0,match:"both",fullTextSearch:!1,placeholder:"auto",preserveHTML:!0,sortSelect:!1,forceSelection:!0,allowAdditions:!1,hideAdditions:!0,maxSelections:!1,useLabels:!0,delimiter:",",showOnFocus:!0,allowReselection:!1,allowTab:!0,allowCategorySelection:!1,fireOnInit:!1,transition:"auto",duration:200,glyphWidth:1.037,label:{transition:"scale",duration:200,variation:!1},delay:{hide:300,show:200,search:20,touch:50},onChange:function(e,t,n){},onAdd:function(e,t,n){},onRemove:function(e,t,n){},onLabelSelect:function(e){},onLabelCreate:function(t,n){return e(this)},onLabelRemove:function(e){return!0},onNoResults:function(e){return!0},onShow:function(){},onHide:function(){},name:"Dropdown",namespace:"dropdown",message:{addResult:"Add <b>{term}</b>",count:"{count} selected",maxSelections:"Max {maxCount} selections",noResults:"No results found.",serverError:"There was an error contacting the server"},error:{action:"You called a dropdown action that was not defined",alreadySetup:"Once a select has been initialized behaviors must be called on the created ui dropdown",labels:"Allowing user additions currently requires the use of labels.",missingMultiple:"<select> requires multiple property to be set to correctly preserve multiple values",method:"The method you called is not defined.",noAPI:"The API module is required to load resources remotely",noStorage:"Saving remote data requires session storage",noTransition:"This module requires ui transitions <https://github.com/Semantic-Org/UI-Transition>"},regExp:{escape:/[-[\]{}()*+?.,\\^$|#\s]/g,quote:/"/g},metadata:{defaultText:"defaultText",defaultValue:"defaultValue",placeholderText:"placeholder",text:"text",value:"value"},fields:{remoteValues:"results",values:"values",disabled:"disabled",name:"name",value:"value",text:"text"},keys:{backspace:8,delimiter:188,deleteKey:46,enter:13,escape:27,pageUp:33,pageDown:34,leftArrow:37,upArrow:38,rightArrow:39,downArrow:40},selector:{addition:".addition",dropdown:".ui.dropdown",hidden:".hidden",icon:"> .dropdown.icon",input:'> input[type="hidden"], > select',item:".item",label:"> .label",remove:"> .label > .delete.icon",siblingLabel:".label",menu:".menu",message:".message",menuIcon:".dropdown.icon",search:"input.search, .menu > .search > input, .menu input.search",sizer:"> input.sizer",text:"> .text:not(.icon)",unselectable:".disabled, .filtered"},className:{active:"active",addition:"addition",animating:"animating",disabled:"disabled",empty:"empty",dropdown:"ui dropdown",filtered:"filtered",hidden:"hidden transition",item:"item",label:"ui label",loading:"loading",menu:"menu",message:"message",multiple:"multiple",placeholder:"default",sizer:"sizer",search:"search",selected:"selected",selection:"selection",upward:"upward",visible:"visible"}},e.fn.dropdown.settings.templates={dropdown:function(t){var n=t.placeholder||!1,i=(t.values||{},"");return i+='<i class="dropdown icon"></i>',i+=t.placeholder?'<div class="default text">'+n+"</div>":'<div class="text"></div>',i+='<div class="menu">',e.each(t.values,function(e,t){i+=t.disabled?'<div class="disabled item" data-value="'+t.value+'">'+t.name+"</div>":'<div class="item" data-value="'+t.value+'">'+t.name+"</div>"}),i+="</div>"},menu:function(t,n){var i=t[n.values]||{},a="";return e.each(i,function(e,t){var i=t[n.text]?'data-text="'+t[n.text]+'"':"",o=t[n.disabled]?"disabled ":"";a+='<div class="'+o+'item" data-value="'+t[n.value]+'"'+i+">",a+=t[n.name],a+="</div>"}),a},label:function(e,t){return t+'<i class="delete icon"></i>'},message:function(e){return e},addition:function(e){return e}}}(jQuery,window,document);
/*!
 * # Semantic UI 2.2.6 - Checkbox
 * http://github.com/semantic-org/semantic-ui/
 *
 *
 * Released under the MIT license
 * http://opensource.org/licenses/MIT
 *
 */
!function(e,n,t,i){"use strict";n="undefined"!=typeof n&&n.Math==Math?n:"undefined"!=typeof self&&self.Math==Math?self:Function("return this")(),e.fn.checkbox=function(o){var a,c=e(this),r=c.selector||"",d=(new Date).getTime(),l=[],s=arguments[0],u="string"==typeof s,b=[].slice.call(arguments,1);return c.each(function(){var c,h,g=e.extend(!0,{},e.fn.checkbox.settings,o),p=g.className,f=g.namespace,k=g.selector,m=g.error,v="."+f,y="module-"+f,C=e(this),x=e(this).children(k.label),w=e(this).children(k.input),I=w[0],D=!1,S=!1,E=C.data(y),O=this;h={initialize:function(){h.verbose("Initializing checkbox",g),h.create.label(),h.bind.events(),h.set.tabbable(),h.hide.input(),h.observeChanges(),h.instantiate(),h.setup()},instantiate:function(){h.verbose("Storing instance of module",h),E=h,C.data(y,h)},destroy:function(){h.verbose("Destroying module"),h.unbind.events(),h.show.input(),C.removeData(y)},fix:{reference:function(){C.is(k.input)&&(h.debug("Behavior called on <input> adjusting invoked element"),C=C.closest(k.checkbox),h.refresh())}},setup:function(){h.set.initialLoad(),h.is.indeterminate()?(h.debug("Initial value is indeterminate"),h.indeterminate()):h.is.checked()?(h.debug("Initial value is checked"),h.check()):(h.debug("Initial value is unchecked"),h.uncheck()),h.remove.initialLoad()},refresh:function(){x=C.children(k.label),w=C.children(k.input),I=w[0]},hide:{input:function(){h.verbose("Modifying <input> z-index to be unselectable"),w.addClass(p.hidden)}},show:{input:function(){h.verbose("Modifying <input> z-index to be selectable"),w.removeClass(p.hidden)}},observeChanges:function(){"MutationObserver"in n&&(c=new MutationObserver(function(e){h.debug("DOM tree modified, updating selector cache"),h.refresh()}),c.observe(O,{childList:!0,subtree:!0}),h.debug("Setting up mutation observer",c))},attachEvents:function(n,t){var i=e(n);t=e.isFunction(h[t])?h[t]:h.toggle,i.length>0?(h.debug("Attaching checkbox events to element",n,t),i.on("click"+v,t)):h.error(m.notFound)},event:{click:function(n){var t=e(n.target);return t.is(k.input)?void h.verbose("Using default check action on initialized checkbox"):t.is(k.link)?void h.debug("Clicking link inside checkbox, skipping toggle"):(h.toggle(),w.focus(),void n.preventDefault())},keydown:function(e){var n=e.which,t={enter:13,space:32,escape:27};n==t.escape?(h.verbose("Escape key pressed blurring field"),w.blur(),S=!0):e.ctrlKey||n!=t.space&&n!=t.enter?S=!1:(h.verbose("Enter/space key pressed, toggling checkbox"),h.toggle(),S=!0)},keyup:function(e){S&&e.preventDefault()}},check:function(){h.should.allowCheck()&&(h.debug("Checking checkbox",w),h.set.checked(),h.should.ignoreCallbacks()||(g.onChecked.call(I),g.onChange.call(I)))},uncheck:function(){h.should.allowUncheck()&&(h.debug("Unchecking checkbox"),h.set.unchecked(),h.should.ignoreCallbacks()||(g.onUnchecked.call(I),g.onChange.call(I)))},indeterminate:function(){return h.should.allowIndeterminate()?void h.debug("Checkbox is already indeterminate"):(h.debug("Making checkbox indeterminate"),h.set.indeterminate(),void(h.should.ignoreCallbacks()||(g.onIndeterminate.call(I),g.onChange.call(I))))},determinate:function(){return h.should.allowDeterminate()?void h.debug("Checkbox is already determinate"):(h.debug("Making checkbox determinate"),h.set.determinate(),void(h.should.ignoreCallbacks()||(g.onDeterminate.call(I),g.onChange.call(I))))},enable:function(){return h.is.enabled()?void h.debug("Checkbox is already enabled"):(h.debug("Enabling checkbox"),h.set.enabled(),g.onEnable.call(I),void g.onEnabled.call(I))},disable:function(){return h.is.disabled()?void h.debug("Checkbox is already disabled"):(h.debug("Disabling checkbox"),h.set.disabled(),g.onDisable.call(I),void g.onDisabled.call(I))},get:{radios:function(){var n=h.get.name();return e('input[name="'+n+'"]').closest(k.checkbox)},otherRadios:function(){return h.get.radios().not(C)},name:function(){return w.attr("name")}},is:{initialLoad:function(){return D},radio:function(){return w.hasClass(p.radio)||"radio"==w.attr("type")},indeterminate:function(){return w.prop("indeterminate")!==i&&w.prop("indeterminate")},checked:function(){return w.prop("checked")!==i&&w.prop("checked")},disabled:function(){return w.prop("disabled")!==i&&w.prop("disabled")},enabled:function(){return!h.is.disabled()},determinate:function(){return!h.is.indeterminate()},unchecked:function(){return!h.is.checked()}},should:{allowCheck:function(){return h.is.determinate()&&h.is.checked()&&!h.should.forceCallbacks()?(h.debug("Should not allow check, checkbox is already checked"),!1):g.beforeChecked.apply(I)!==!1||(h.debug("Should not allow check, beforeChecked cancelled"),!1)},allowUncheck:function(){return h.is.determinate()&&h.is.unchecked()&&!h.should.forceCallbacks()?(h.debug("Should not allow uncheck, checkbox is already unchecked"),!1):g.beforeUnchecked.apply(I)!==!1||(h.debug("Should not allow uncheck, beforeUnchecked cancelled"),!1)},allowIndeterminate:function(){return h.is.indeterminate()&&!h.should.forceCallbacks()?(h.debug("Should not allow indeterminate, checkbox is already indeterminate"),!1):g.beforeIndeterminate.apply(I)!==!1||(h.debug("Should not allow indeterminate, beforeIndeterminate cancelled"),!1)},allowDeterminate:function(){return h.is.determinate()&&!h.should.forceCallbacks()?(h.debug("Should not allow determinate, checkbox is already determinate"),!1):g.beforeDeterminate.apply(I)!==!1||(h.debug("Should not allow determinate, beforeDeterminate cancelled"),!1)},forceCallbacks:function(){return h.is.initialLoad()&&g.fireOnInit},ignoreCallbacks:function(){return D&&!g.fireOnInit}},can:{change:function(){return!(C.hasClass(p.disabled)||C.hasClass(p.readOnly)||w.prop("disabled")||w.prop("readonly"))},uncheck:function(){return"boolean"==typeof g.uncheckable?g.uncheckable:!h.is.radio()}},set:{initialLoad:function(){D=!0},checked:function(){return h.verbose("Setting class to checked"),C.removeClass(p.indeterminate).addClass(p.checked),h.is.radio()&&h.uncheckOthers(),!h.is.indeterminate()&&h.is.checked()?void h.debug("Input is already checked, skipping input property change"):(h.verbose("Setting state to checked",I),w.prop("indeterminate",!1).prop("checked",!0),void h.trigger.change())},unchecked:function(){return h.verbose("Removing checked class"),C.removeClass(p.indeterminate).removeClass(p.checked),!h.is.indeterminate()&&h.is.unchecked()?void h.debug("Input is already unchecked"):(h.debug("Setting state to unchecked"),w.prop("indeterminate",!1).prop("checked",!1),void h.trigger.change())},indeterminate:function(){return h.verbose("Setting class to indeterminate"),C.addClass(p.indeterminate),h.is.indeterminate()?void h.debug("Input is already indeterminate, skipping input property change"):(h.debug("Setting state to indeterminate"),w.prop("indeterminate",!0),void h.trigger.change())},determinate:function(){return h.verbose("Removing indeterminate class"),C.removeClass(p.indeterminate),h.is.determinate()?void h.debug("Input is already determinate, skipping input property change"):(h.debug("Setting state to determinate"),void w.prop("indeterminate",!1))},disabled:function(){return h.verbose("Setting class to disabled"),C.addClass(p.disabled),h.is.disabled()?void h.debug("Input is already disabled, skipping input property change"):(h.debug("Setting state to disabled"),w.prop("disabled","disabled"),void h.trigger.change())},enabled:function(){return h.verbose("Removing disabled class"),C.removeClass(p.disabled),h.is.enabled()?void h.debug("Input is already enabled, skipping input property change"):(h.debug("Setting state to enabled"),w.prop("disabled",!1),void h.trigger.change())},tabbable:function(){h.verbose("Adding tabindex to checkbox"),w.attr("tabindex")===i&&w.attr("tabindex",0)}},remove:{initialLoad:function(){D=!1}},trigger:{change:function(){var e=t.createEvent("HTMLEvents"),n=w[0];n&&(h.verbose("Triggering native change event"),e.initEvent("change",!0,!1),n.dispatchEvent(e))}},create:{label:function(){w.prevAll(k.label).length>0?(w.prev(k.label).detach().insertAfter(w),h.debug("Moving existing label",x)):h.has.label()||(x=e("<label>").insertAfter(w),h.debug("Creating label",x))}},has:{label:function(){return x.length>0}},bind:{events:function(){h.verbose("Attaching checkbox events"),C.on("click"+v,h.event.click).on("keydown"+v,k.input,h.event.keydown).on("keyup"+v,k.input,h.event.keyup)}},unbind:{events:function(){h.debug("Removing events"),C.off(v)}},uncheckOthers:function(){var e=h.get.otherRadios();h.debug("Unchecking other radios",e),e.removeClass(p.checked)},toggle:function(){return h.can.change()?void(h.is.indeterminate()||h.is.unchecked()?(h.debug("Currently unchecked"),h.check()):h.is.checked()&&h.can.uncheck()&&(h.debug("Currently checked"),h.uncheck())):void(h.is.radio()||h.debug("Checkbox is read-only or disabled, ignoring toggle"))},setting:function(n,t){if(h.debug("Changing setting",n,t),e.isPlainObject(n))e.extend(!0,g,n);else{if(t===i)return g[n];e.isPlainObject(g[n])?e.extend(!0,g[n],t):g[n]=t}},internal:function(n,t){if(e.isPlainObject(n))e.extend(!0,h,n);else{if(t===i)return h[n];h[n]=t}},debug:function(){!g.silent&&g.debug&&(g.performance?h.performance.log(arguments):(h.debug=Function.prototype.bind.call(console.info,console,g.name+":"),h.debug.apply(console,arguments)))},verbose:function(){!g.silent&&g.verbose&&g.debug&&(g.performance?h.performance.log(arguments):(h.verbose=Function.prototype.bind.call(console.info,console,g.name+":"),h.verbose.apply(console,arguments)))},error:function(){g.silent||(h.error=Function.prototype.bind.call(console.error,console,g.name+":"),h.error.apply(console,arguments))},performance:{log:function(e){var n,t,i;g.performance&&(n=(new Date).getTime(),i=d||n,t=n-i,d=n,l.push({Name:e[0],Arguments:[].slice.call(e,1)||"",Element:O,"Execution Time":t})),clearTimeout(h.performance.timer),h.performance.timer=setTimeout(h.performance.display,500)},display:function(){var n=g.name+":",t=0;d=!1,clearTimeout(h.performance.timer),e.each(l,function(e,n){t+=n["Execution Time"]}),n+=" "+t+"ms",r&&(n+=" '"+r+"'"),(console.group!==i||console.table!==i)&&l.length>0&&(console.groupCollapsed(n),console.table?console.table(l):e.each(l,function(e,n){console.log(n.Name+": "+n["Execution Time"]+"ms")}),console.groupEnd()),l=[]}},invoke:function(n,t,o){var c,r,d,l=E;return t=t||b,o=O||o,"string"==typeof n&&l!==i&&(n=n.split(/[\. ]/),c=n.length-1,e.each(n,function(t,o){var a=t!=c?o+n[t+1].charAt(0).toUpperCase()+n[t+1].slice(1):n;if(e.isPlainObject(l[a])&&t!=c)l=l[a];else{if(l[a]!==i)return r=l[a],!1;if(!e.isPlainObject(l[o])||t==c)return l[o]!==i?(r=l[o],!1):(h.error(m.method,n),!1);l=l[o]}})),e.isFunction(r)?d=r.apply(o,t):r!==i&&(d=r),e.isArray(a)?a.push(d):a!==i?a=[a,d]:d!==i&&(a=d),r}},u?(E===i&&h.initialize(),h.invoke(s)):(E!==i&&E.invoke("destroy"),h.initialize())}),a!==i?a:this},e.fn.checkbox.settings={name:"Checkbox",namespace:"checkbox",silent:!1,debug:!1,verbose:!0,performance:!0,uncheckable:"auto",fireOnInit:!1,onChange:function(){},beforeChecked:function(){},beforeUnchecked:function(){},beforeDeterminate:function(){},beforeIndeterminate:function(){},onChecked:function(){},onUnchecked:function(){},onDeterminate:function(){},onIndeterminate:function(){},onEnable:function(){},onDisable:function(){},onEnabled:function(){},onDisabled:function(){},className:{checked:"checked",indeterminate:"indeterminate",disabled:"disabled",hidden:"hidden",radio:"radio",readOnly:"read-only"},error:{method:"The method you called is not defined"},selector:{checkbox:".ui.checkbox",label:"label, .box",input:'input[type="checkbox"], input[type="radio"]',link:"a[href]"}}}(jQuery,window,document);
(function($){
	if($.G2 == undefined){
		$.G2 = {};
	}
	$.G2.composer = {};
	
	$.G2.scrollTo = function(Elem){
		if(Elem.length > 0){
			$('html, body').animate({
				scrollTop: Elem.offset().top - 50
			}, 'slow');
		}
	};
	
	$.G2.composer.init = function(){
		var section = arguments[0];
		var args = arguments[1];
		
		$.G2.composer[section] = {};
		$.G2.composer[section].params = args;
	};
	
	$.G2.composer.ready = function(){
		var section = arguments[0];
		var args = arguments[1];
		
		$.extend($.G2.composer[section].params, args);
		
		$.each($.G2.composer[section].params, function(i, arr){
			$.G2[i]['ready'].apply($.G2[i], arr);
		});
	};
}(jQuery));
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
(function($){
	if($.G2 == undefined){
		$.G2 = {};
	}
	$.G2.forms = {};
	
	$.G2.forms.initializeForm = function (thisForm){
		var validationRules = {};
		
		jQuery.fn.form.settings.rules.required = function(value){
			if(value){
				return true;
			}else{
				return false;
			}
		};
		
		jQuery.fn.form.settings.rules.email = function(value){
			if(value.match(/^([a-zA-Z0-9_\.\-\+%])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{1,11})+$/)){
				return true;
			}else{
				return false;
			}
		};
		
		jQuery.fn.form.settings.rules.minChecked = function(value, minChecked){
			jQuery(this).closest('.fields').find(':input').off('change.validation').on('change.validation', function(){
				thisForm.form('validate form');
			});
			
			if(jQuery(this).closest('.fields').find(':input:checked').length >= minChecked){
				jQuery(this).closest('.fields').removeClass('error');
				return true;
			}else{
				jQuery(this).closest('.fields').addClass('error');
				return false;
			}
		};
		
		jQuery.fn.form.settings.rules.maxChecked = function(value, maxChecked){
			jQuery(this).closest('.fields').find(':input').off('change.validation').on('change.validation', function(){
				thisForm.form('validate form');
			});
			
			if(jQuery(this).closest('.fields').find(':input:checked').length > maxChecked){
				jQuery(this).closest('.fields').addClass('error');
				return false;
			}else{
				jQuery(this).closest('.fields').removeClass('error');
				return true;
			}
		};
		
		jQuery.fn.form.settings.rules.exactChecked = function(value, exactChecked){
			jQuery(this).closest('.fields').find(':input').off('change.validation').on('change.validation', function(){
				thisForm.form('validate form');
			});
			if(jQuery(this).closest('.fields').find(':input:checked').length != exactChecked){
				jQuery(this).closest('.fields').addClass('error');
				return false;
			}else{
				jQuery(this).closest('.fields').removeClass('error');
				return true;
			}
		};
		
		thisForm.find('[data-validationrules]').each(function(i, inp){
			if(jQuery(inp).data('validationrules').disabled == undefined || jQuery(inp).data('validationrules').disabled == 0){
				validationRules['field'+i] = jQuery(inp).data('validationrules');
				
				//jQuery.each(['empty', 'required', 'checked', 'minChecked', 'maxChecked', 'exactChecked'], function(i, r){
				jQuery.each(jQuery(inp).data('validationrules')['rules'], function(i, r){
					//if(jQuery(inp).data('validationrules')['rules'][0]['type'].indexOf(r) >= 0){
					if(jQuery.inArray(r['type'], ['empty', 'required', 'checked', 'minChecked', 'maxChecked', 'exactChecked']) >= 0){
						if(jQuery(inp).parent().hasClass('checkbox')){
							if(jQuery(inp).closest('.fields').length > 0){
								jQuery(inp).closest('.fields').addClass('required');
							}else{
								jQuery(inp).closest('.field').addClass('required');
							}
						}else{
							jQuery(inp).closest('.field').addClass('required');
						}
					}
				});
			}
		});
		
		thisForm.form({
			//inline : true,
			inline : thisForm.data('valloc') ? (thisForm.data('valloc') == 'inline' ? true : false) : true,
			on : 'blur',
			fields: validationRules
		});
	}
	
	$.G2.forms.initializeEvents = function (thisForm){
		thisForm.find('[data-events]').each(function(i, inp){
			//var events = jQuery(inp).data('events');
			var events = JSON.parse(jQuery(inp).attr('data-events'));
			
			jQuery(inp).off('change.events click.events ready.events');
			jQuery.each(events, function(ei, event){
				//jQuery(inp).off('change click ready');
				jQuery(inp).on('change.events click.events ready.events', function($eve){
					
					if(event.hasOwnProperty('identifier') != true || event['identifier'] == '' || event.hasOwnProperty('action') != true || event.action.length == 0){
						return;
					}
					
					var event_condition = false;
					var inp_value = jQuery(inp).data('value') ? jQuery(inp).data('value') : jQuery(inp).val();
					
					if(jQuery(inp).attr('type') == 'checkbox'){
						inp_value = (jQuery(inp).is(':checked') ? inp_value : '');
					}
					if(jQuery(inp).prop('tagName') == 'SELECT'){
						inp_value = jQuery(inp).find(':selected').data('value') ? jQuery(inp).find(':selected').data('value') : jQuery(inp).val();
					}
					
					if(event.hasOwnProperty('value') != true){
						event.value = jQuery(inp).val();
					}
					if(event.hasOwnProperty('group') && event.group == 1){
						inp_value = [];
						jQuery.each(jQuery(inp).closest('.fields').find(':input:checked'), function(kk, checked){
							if(jQuery(checked).data('value')){
								inp_value.push(jQuery(checked).data('value'));
							}else{
								inp_value.push(jQuery(checked).val());
							}
						});
					}
					
					if(jQuery.isArray(inp_value)){
						if(event.sign == '='){
							event_condition = (jQuery.inArray(event.value, inp_value) > -1);
						}else if(event.sign == '!='){
							event_condition = (jQuery.inArray(event.value, inp_value) == -1);
						}else if(event.sign == 'change'){
							if($eve.type != 'ready'){
								event_condition = true;
							}
						}
					}else{
						if(event.sign == '='){
							event_condition = (inp_value == event.value);
						}else if(event.sign == '!='){
							event_condition = (inp_value != event.value);
						}else if(event.sign == 'change'){
							if($eve.type != 'ready'){
								event_condition = true;
							}
						}else if(event.sign == 'click' && $eve.type == 'click'){
							event_condition = true;
						}
					}
					
					if(event['identifier'].substring(0, 1) == '#' || event['identifier'].substring(0, 1) == '.' || event['identifier'].substring(0, 1) == '['){
						var event_target = jQuery(event.identifier);
					}else{
						var event_target = jQuery(':input[name="' + event.identifier + '"]');
					}
					var event_target_one = event_target;
					
					var target_element = event_target.closest('.field');
					if(jQuery.inArray(event_target.prop('tagName'), ['BUTTON', 'DIV']) > -1){
						target_element = event_target;
					}
					if(jQuery.inArray(event_target.prop('type'), ['checkbox', 'radio']) > -1){
						target_element = event_target.closest('.field.fields');
					}
					
					if(event_target.data('ghost')){
						var real_event_target = event_target.closest('.field').find(':checkbox, :radio');
						
						if(real_event_target.length > 0){
							event_target = real_event_target;
							event_target_one = real_event_target.first();
						}
					}
					
					if(jQuery.isArray(event.action) == false){
						event.action = [event.action];
					}
					if(event_condition){
						if(jQuery.inArray('hide', event.action) > -1){
							target_element.hide();
						}
						if(jQuery.inArray('show', event.action) > -1){
							//target_element.show();
							target_element.css('display', '');
							target_element.removeClass('hidden');
						}
						if(jQuery.inArray('disable', event.action) > -1){
							target_element.addClass('disabled');
							event_target.prop('disabled', true);
						}
						if(jQuery.inArray('enable', event.action) > -1){
							target_element.removeClass('disabled');
							event_target.prop('disabled', false);
						}
						if(jQuery.inArray('disable_validation', event.action) > -1){
							if(event_target_one.data('validationrules')){
								var vrules = event_target_one.data('validationrules');
								vrules['disabled'] = 1;
								event_target_one.data('validationrules', vrules);
								
								$.G2.forms.initializeForm(thisForm);
								target_element.removeClass('required error');
								target_element.find('.ui.label.red.pointing.prompt').remove();
							}
						}
						if(jQuery.inArray('enable_validation', event.action) > -1){
							if(event_target_one.data('validationrules')){
								var vrules = event_target_one.data('validationrules');
								vrules['disabled'] = 0;
								event_target_one.data('validationrules', vrules);
								
								$.G2.forms.initializeForm(thisForm);
							}
						}
						if(jQuery.inArray('reload', event.action) > -1){
							if($eve.type != 'ready' && event_target.length > 0){
								target_element.addClass('ui form loading');
								
								$.ajax({
									url: event_target.data('reloadurl'),
									data: jQuery(inp).closest('.form').serialize(),
									success: function(result){
										var newContent = $(result);
										
										target_element.replaceWith(newContent);
										
										$('body').trigger('contentChange');
									}
								});
							}
						}
						if(jQuery.inArray('function', event.action) > -1){
							if($eve.type != 'ready' && window[event.identifier] != undefined){
								window[event.identifier](jQuery(inp));
							}
						}
						//if(jQuery.inArray(event.action, ['add', 'sub', 'multiply', 'set']) > -1){
						if(jQuery(event.action).filter(['add', 'sub', 'multiply', 'set']).length){
							target_element = event_target;
							
							var current_value = parseFloat(target_element.val());
							if(isNaN(current_value)){
								current_value = 0;
							}
							
							if(jQuery.isArray(inp_value)){
								var inp_value_float = 0;
								jQuery.each(inp_value, function(iv, inp_value_v){
									if(!isNaN(parseFloat(inp_value_v))){
										inp_value_float = inp_value_float + parseFloat(inp_value_v);
									}
								});
							}else{
								var inp_value_float = parseFloat(inp_value);
								if(isNaN(inp_value_float)){
									inp_value_float = 0;
									if(event.action == 'multiply'){
										inp_value_float = 1;
									}
								}
							}
							
							var calcList = {};
							var inp_name = jQuery(inp).attr('name');
							
							if(target_element.data('calclist')){
								calcList = target_element.data('calclist');
							}
							
							var prev_inp_value = 0;
							if(calcList.hasOwnProperty(inp_name)){
								prev_inp_value = calcList[inp_name];
							}
							
							calcList[inp_name] = inp_value_float;
							target_element.data('calclist', calcList);
							
							if(jQuery.inArray('add', event.action) > -1){
								var total = current_value + inp_value_float - prev_inp_value;
							}else if(jQuery.inArray('sub', event.action) > -1){
								var total = current_value - inp_value_float + prev_inp_value;
							}else if(jQuery.inArray('multiply', event.action) > -1){
								if(prev_inp_value == 0){
									prev_inp_value = 1;
								}
								var total = (current_value/prev_inp_value) * inp_value_float;
							}else if(jQuery.inArray('set', event.action) > -1){
								var total = inp_value_float;
							}
							
							target_element.val(total);
							
							if(target_element.data('display')){
								jQuery('#'+target_element.data('display')).text(total);
							}
						}
					}
				});
				
				jQuery(inp).trigger('ready.events');
			});
		});
	}
	
	$.G2.forms.initializeFeatures = function (thisForm){
		thisForm.find('.partitioned .ui.button.next, .partitioned .ui.button.forward').off('click');
		thisForm.find('.partitioned .ui.button.next, .partitioned .ui.button.forward').on('click', function(e){
			e.preventDefault();
			var activeTab = jQuery(this).closest('.partitioned').find('.ui.segment.tab.active').first();
			activeTab.find(':input').trigger('blur');
			
			if(activeTab.next('.ui.segment.tab').length > 0 && activeTab.find('.field.error').length == 0){
				activeTab.removeClass('active');
				jQuery('[data-tab="'+activeTab.data('tab')+'"]').removeClass('active');
				activeTab.next('.ui.segment.tab').addClass('active');
				jQuery('[data-tab="'+activeTab.next('.ui.segment.tab').data('tab')+'"]').addClass('active').removeClass('disabled');
			}else{
				
			}
		});
		
		thisForm.find('.partitioned .ui.button.prev, .partitioned .ui.button.backward').off('click');
		thisForm.find('.partitioned .ui.button.prev, .partitioned .ui.button.backward').on('click', function(e){
			e.preventDefault();
			var activeTab = jQuery(this).closest('.partitioned').find('.ui.segment.tab.active').first();
			activeTab.find(':input').trigger('blur');
			
			if(activeTab.prev('.ui.segment.tab').length > 0 && activeTab.find('.field.error').length == 0){
				activeTab.removeClass('active');
				jQuery('[data-tab="'+activeTab.data('tab')+'"]').removeClass('active');
				activeTab.prev('.ui.segment.tab').addClass('active');
				jQuery('[data-tab="'+activeTab.prev('.ui.segment.tab').data('tab')+'"]').addClass('active').removeClass('disabled');
			}else{
				
			}
		});
		
		thisForm.find('.repeater .ui.source-item').hide().find(':input').prop('disabled', true);
		thisForm.find('.repeater .ui.source-item').hide().find(':input').each(function(i, inp){
			if(jQuery(inp).data('validationrules')){
				var vrules = jQuery(inp).data('validationrules');
				vrules['disabled'] = 1;
				jQuery(inp).data('validationrules', vrules);
			}
		});
		
		thisForm.find('.repeater .ui.button.multiply').off('click.repeater');
		thisForm.find('.repeater .ui.button.multiply').on('click.repeater', function(e){
			e.preventDefault();
			
			var cloned = jQuery(this).closest('.repeater').find('.ui.source-item').clone().show();
			cloned.find(':input').prop('disabled', false);
			
			var newHTML = cloned.html().replace(/-N-/g, jQuery(this).closest('.repeater').data('count'));
			if(cloned.data('name')){
				repeaterRegex = new RegExp('#'+cloned.data('name')+'.count', 'gi');
				newHTML = newHTML.replace(repeaterRegex, jQuery(this).closest('.repeater').data('count'));
			}
			
			cloned.html(newHTML);
			jQuery(this).closest('.repeater').data('count', parseInt(jQuery(this).closest('.repeater').data('count')) + 1);
			
			if(jQuery(this).closest('.repeater').data('limit')){
				if(jQuery(this).closest('.repeater').find('.clone-item').length >= parseInt(jQuery(this).closest('.repeater').data('limit'))){
					return;
				}
			}
			jQuery(this).before(cloned.removeClass('source-item').addClass('clone-item'));
			
			jQuery('body').trigger('contentChange');
		});
		
		thisForm.find('.repeater .ui.button.remove').off('click.repeater');
		thisForm.find('.repeater .ui.button.remove').on('click.repeater', function(e){
			e.preventDefault();
			
			jQuery(this).closest('.ui.clone-item').remove();
			
			jQuery('body').trigger('contentChange');
		});
		
		thisForm.find('.modaled > .ui.button.green, .modaled > .ui.button.launch').off('click');
		thisForm.find('.modaled > .ui.button.green, .modaled > .ui.button.launch').on('click', function(e){
			e.preventDefault();
			var theModal = jQuery(this).closest('.modaled').find('.ui.modal').first();
			theModal.modal({detachable : false, closable : (theModal.data('closable') ? true : false)}).modal('show');
		});
		
		thisForm.on('submit', function(e){
			if(thisForm.form('is valid') == false){
				if(thisForm.find('.field.error').first().is(':visible')){
					jQuery.G2.scrollTo(thisForm.find('.field.error').first());
				}else{
					if(thisForm.find('.field.error').first().closest('.partitioned').length > 0){
						var activeTab = thisForm.find('.field.error').first().closest('.partitioned').find('.ui.segment.tab.active').first();
			
						activeTab.removeClass('active');
						jQuery('[data-tab="'+activeTab.data('tab')+'"]').removeClass('active');
						thisForm.find('.field.error').first().closest('.ui.segment.tab').addClass('active');
						jQuery('[data-tab="'+thisForm.find('.field.error').first().closest('.ui.segment.tab').data('tab')+'"]').addClass('active');
						jQuery('[data-tab="'+thisForm.find('.field.error').first().closest('.ui.segment.tab').data('tab')+'"]').removeClass('disabled');
					}
				}
			}else{
				if(thisForm.data('subanimation')){
					thisForm.addClass('loading');
				}
				//thisForm.form('submit');
			}
		});
	}
	
	$.G2.forms.ready = function(){
		jQuery('div[data-invisible="1"]').each(function(i, invForm){
			var content = jQuery(invForm).html();
			var newForm = jQuery('<form>').html(content);
			jQuery.each(jQuery(invForm).get(0).attributes, function(i, att){
				newForm.attr(att.name, att.value);
			});
			jQuery(invForm).replaceWith(newForm);
			jQuery('body').trigger('contentChange');
		});
		
		jQuery('.G2-form').each(function(fk, Form){
			var thisForm = jQuery(Form);
			jQuery.G2.forms.initializeFeatures(thisForm);
			
			jQuery.G2.forms.initializeEvents(thisForm);
			//fields_initialize_duplicators(thisForm);
			jQuery.G2.forms.initializeForm(thisForm);
			//masks
			if(jQuery.fn.inputmask != undefined){
				thisForm.find(':input').inputmask();
			}
			//$('body').trigger('contentChange');
			if($.G2.actions != undefined){
				jQuery.G2.actions.list[thisForm.data('id')] = {
					'beforeStart' : function(element){
						if(element.form('is valid') != true){
							return false;
						}
					}
				};
			}
		});
	}
	
}(jQuery));
/*jQuery(document).ready(function($){
	$.G2.forms.ready();
	
	$('body').on('contentChange', function(){
		if($.G2.hasOwnProperty('forms')){
			$.G2.forms.ready();
		}
	});
});*/