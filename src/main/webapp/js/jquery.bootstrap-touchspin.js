(function(a){var b=0;function c(f,e){return f+".touchspin_"+e}function d(f,e){return a.map(f,function(g){return c(g,e)})}a.fn.TouchSpin=function(g){if(g==="destroy"){this.each(function(){var h=a(this),i=h.data();a(document).off(d(["mouseup","touchend","touchcancel","mousemove","touchmove","scroll","scrollstart"],i.spinnerid).join(" "))});return}var f={min:0,max:100,initval:"",replacementval:"",step:1,decimals:0,stepinterval:100,forcestepdivisibility:"round",stepintervaldelay:500,verticalbuttons:false,verticalupclass:"fa fa-chevron-up",verticaldownclass:"fa fa-chevron-down",prefix:"",postfix:"",prefix_extraclass:"",postfix_extraclass:"",booster:true,boostat:10,maxboostedstep:false,mousewheel:true,buttondown_class:"btn btn-default",buttonup_class:"btn btn-default",buttondown_txt:"-",buttonup_txt:"+"};var e={min:"min",max:"max",initval:"init-val",replacementval:"replacement-val",step:"step",decimals:"decimals",stepinterval:"step-interval",verticalbuttons:"vertical-buttons",verticalupclass:"vertical-up-class",verticaldownclass:"vertical-down-class",forcestepdivisibility:"force-step-divisibility",stepintervaldelay:"step-interval-delay",prefix:"prefix",postfix:"postfix",prefix_extraclass:"prefix-extra-class",postfix_extraclass:"postfix-extra-class",booster:"booster",boostat:"boostat",maxboostedstep:"max-boosted-step",mousewheel:"mouse-wheel",buttondown_class:"button-down-class",buttonup_class:"button-up-class",buttondown_txt:"button-down-txt",buttonup_txt:"button-up-txt"};return this.each(function(){var E,C=a(this),D=C.data(),w,A,N,z,M,x,K,F=0,G=false;B();function B(){if(C.data("alreadyinitialized")){return}C.data("alreadyinitialized",true);b+=1;C.data("spinnerid",b);if(!C.is("input")){console.log("Must be an input.");return}r();t();m();k();q();p();i();j();A.input.css("display","block")}function t(){if(E.initval!==""&&C.val()===""){C.val(E.initval)}}function v(O){u(O);m();var P=A.input.val();if(P!==""){P=Number(A.input.val());A.input.val(P.toFixed(E.decimals))}}function r(){E=a.extend({},f,D,s(),g)}function s(){var O={};a.each(e,function(Q,R){var P="bts-"+R+"";if(C.is("[data-"+P+"]")){O[Q]=C.data(P)}});return O}function u(O){E=a.extend({},E,O)}function k(){var O=C.val(),P=C.parent();if(O!==""){O=Number(O).toFixed(E.decimals)}C.data("initvalue",O).val(O);C.addClass("form-control");if(P.hasClass("input-group")){h(P)}else{l()}}function h(Q){Q.addClass("bootstrap-touchspin");var T=C.prev(),P=C.next();var O,U,S='<span class="input-group-addon bootstrap-touchspin-prefix">'+E.prefix+"</span>",R='<span class="input-group-addon bootstrap-touchspin-postfix">'+E.postfix+"</span>";if(T.hasClass("input-group-btn")){O='<button class="'+E.buttondown_class+' bootstrap-touchspin-down" type="button">'+E.buttondown_txt+"</button>";T.append(O)}else{O='<span class="input-group-btn"><button class="'+E.buttondown_class+' bootstrap-touchspin-down" type="button">'+E.buttondown_txt+"</button></span>";a(O).insertBefore(C)}if(P.hasClass("input-group-btn")){U='<button class="'+E.buttonup_class+' bootstrap-touchspin-up" type="button">'+E.buttonup_txt+"</button>";P.prepend(U)}else{U='<span class="input-group-btn"><button class="'+E.buttonup_class+' bootstrap-touchspin-up" type="button">'+E.buttonup_txt+"</button></span>";a(U).insertAfter(C)}a(S).insertBefore(C);a(R).insertAfter(C);w=Q}function l(){var O;if(E.verticalbuttons){O='<div class="input-group bootstrap-touchspin"><span class="input-group-addon bootstrap-touchspin-prefix">'+E.prefix+'</span><span class="input-group-addon bootstrap-touchspin-postfix">'+E.postfix+'</span><span class="input-group-btn-vertical"><button class="'+E.buttondown_class+' bootstrap-touchspin-up" type="button"><i class="'+E.verticalupclass+'"></i></button><button class="'+E.buttonup_class+' bootstrap-touchspin-down" type="button"><i class="'+E.verticaldownclass+'"></i></button></span></div>'}else{O='<div class="input-group bootstrap-touchspin"><span class="input-group-btn"><button class="'+E.buttondown_class+' bootstrap-touchspin-down" type="button">'+E.buttondown_txt+'</button></span><span class="input-group-addon bootstrap-touchspin-prefix">'+E.prefix+'</span><span class="input-group-addon bootstrap-touchspin-postfix">'+E.postfix+'</span><span class="input-group-btn"><button class="'+E.buttonup_class+' bootstrap-touchspin-up" type="button">'+E.buttonup_txt+"</button></span></div>"}w=a(O).insertBefore(C);a(".bootstrap-touchspin-prefix",w).after(C);if(C.hasClass("input-sm")){w.addClass("input-group-sm")}else{if(C.hasClass("input-lg")){w.addClass("input-group-lg")}}}function q(){A={down:a(".bootstrap-touchspin-down",w),up:a(".bootstrap-touchspin-up",w),input:a("input",w),prefix:a(".bootstrap-touchspin-prefix",w).addClass(E.prefix_extraclass),postfix:a(".bootstrap-touchspin-postfix",w).addClass(E.postfix_extraclass)}}function p(){if(E.prefix===""){A.prefix.hide()}if(E.postfix===""){A.postfix.hide()}}function i(){C.on("keydown",function(P){var O=P.keyCode||P.which;if(O===38){if(G!=="up"){L();I()}P.preventDefault()}else{if(O===40){if(G!=="down"){y();H()}P.preventDefault()}}});C.on("keyup",function(P){var O=P.keyCode||P.which;if(O===38){J()}else{if(O===40){J()}}});C.on("blur",function(){m()});A.down.on("keydown",function(P){var O=P.keyCode||P.which;if(O===32||O===13){if(G!=="down"){y();H()}P.preventDefault()}});A.down.on("keyup",function(P){var O=P.keyCode||P.which;if(O===32||O===13){J()}});A.up.on("keydown",function(P){var O=P.keyCode||P.which;if(O===32||O===13){if(G!=="up"){L();I()}P.preventDefault()}});A.up.on("keyup",function(P){var O=P.keyCode||P.which;if(O===32||O===13){J()}});A.down.on("mousedown.touchspin",function(O){A.down.off("touchstart.touchspin");if(C.is(":disabled")){return}y();H();O.preventDefault();O.stopPropagation()});A.down.on("touchstart.touchspin",function(O){A.down.off("mousedown.touchspin");if(C.is(":disabled")){return}y();H();O.preventDefault();O.stopPropagation()});A.up.on("mousedown.touchspin",function(O){A.up.off("touchstart.touchspin");if(C.is(":disabled")){return}L();I();O.preventDefault();O.stopPropagation()});A.up.on("touchstart.touchspin",function(O){A.up.off("mousedown.touchspin");if(C.is(":disabled")){return}L();I();O.preventDefault();O.stopPropagation()});A.up.on("mouseout touchleave touchend touchcancel",function(O){if(!G){return}O.stopPropagation();J()});A.down.on("mouseout touchleave touchend touchcancel",function(O){if(!G){return}O.stopPropagation();J()});A.down.on("mousemove touchmove",function(O){if(!G){return}O.stopPropagation();O.preventDefault()});A.up.on("mousemove touchmove",function(O){if(!G){return}O.stopPropagation();O.preventDefault()});a(document).on(d(["mouseup","touchend","touchcancel"],b).join(" "),function(O){if(!G){return}O.preventDefault();J()});a(document).on(d(["mousemove","touchmove","scroll","scrollstart"],b).join(" "),function(O){if(!G){return}O.preventDefault();J()});C.on("mousewheel DOMMouseScroll",function(P){if(!E.mousewheel||!C.is(":focus")){return}var O=P.originalEvent.wheelDelta||-P.originalEvent.deltaY||-P.originalEvent.detail;P.stopPropagation();P.preventDefault();if(O<0){y()}else{L()}})}function j(){C.on("touchspin.uponce",function(){J();L()});C.on("touchspin.downonce",function(){J();y()});C.on("touchspin.startupspin",function(){I()});C.on("touchspin.startdownspin",function(){H()});C.on("touchspin.stopspin",function(){J()});C.on("touchspin.updatesettings",function(O,P){v(P)})}function n(O){switch(E.forcestepdivisibility){case"round":return(Math.round(O/E.step)*E.step).toFixed(E.decimals);case"floor":return(Math.floor(O/E.step)*E.step).toFixed(E.decimals);case"ceil":return(Math.ceil(O/E.step)*E.step).toFixed(E.decimals);default:return O}}function m(){var Q,O,P;Q=C.val();if(Q===""){if(E.replacementval!==""){C.val(E.replacementval);C.trigger("change")}return}if(E.decimals>0&&Q==="."){return}O=parseFloat(Q);if(isNaN(O)){if(E.replacementval!==""){O=E.replacementval}else{O=0}}P=O;if(O.toString()!==Q){P=O}if(O<E.min){P=E.min}if(O>E.max){P=E.max}P=n(P);if(Number(Q).toString()!==P.toString()){C.val(P);C.trigger("change")}}function o(){if(!E.booster){return E.step}else{var O=Math.pow(2,Math.floor(F/E.boostat))*E.step;if(E.maxboostedstep){if(O>E.maxboostedstep){O=E.maxboostedstep;N=Math.round((N/O))*O}}return Math.max(E.step,O)}}function L(){m();N=parseFloat(A.input.val());if(isNaN(N)){N=0}var P=N,O=o();N=N+O;if(N>E.max){N=E.max;C.trigger("touchspin.on.max");J()}A.input.val(Number(N).toFixed(E.decimals));if(P!==N){C.trigger("change")}}function y(){m();N=parseFloat(A.input.val());if(isNaN(N)){N=0}var P=N,O=o();N=N-O;if(N<E.min){N=E.min;C.trigger("touchspin.on.min");J()}A.input.val(N.toFixed(E.decimals));if(P!==N){C.trigger("change")}}function H(){J();F=0;G="down";C.trigger("touchspin.on.startspin");C.trigger("touchspin.on.startdownspin");x=setTimeout(function(){z=setInterval(function(){F++;y()},E.stepinterval)},E.stepintervaldelay)}function I(){J();F=0;G="up";C.trigger("touchspin.on.startspin");C.trigger("touchspin.on.startupspin");K=setTimeout(function(){M=setInterval(function(){F++;L()},E.stepinterval)},E.stepintervaldelay)}function J(){clearTimeout(x);clearTimeout(K);clearInterval(z);clearInterval(M);switch(G){case"up":C.trigger("touchspin.on.stopupspin");C.trigger("touchspin.on.stopspin");break;case"down":C.trigger("touchspin.on.stopdownspin");C.trigger("touchspin.on.stopspin");break}F=0;G=false}})}})(jQuery);