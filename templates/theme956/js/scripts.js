$(function() {
	$('.menutop li.root > .item').prepend('<i class="animateHover"></i>')
	$('ul li:last').addClass('lastItem');
	$('ul li:first').addClass('firstItem');
	/*Avoid input bg in Chrome*/
	if ($.browser.webkit) {
		$('input').attr('autocomplete', 'off');
	}
	$('div.smile a').hover(function(){$(this).find('img').stop().animate({top:-5},100)},function(){$(this).find('img').stop().animate({top:0},100)})
	/*Zoom Icon. Portfolio page*/
	$('#port .catItemImage a.modal').hover(function(){
		$(this).find('img').stop().animate({opacity:.3},{queue:false}).parent().find('span.zoom-icon').stop().animate({top: '50%'},{queue:false}).parent().find('span.zoom-text').stop().animate({bottom: '50%'},{queue:false});
	},function(){
		$(this).find('img').stop().animate({opacity:1},{queue:false}).parent().find('span.zoom-icon').stop().animate({top:0},{queue:false}).parent().find('span.zoom-text').stop().animate({bottom:0},{queue:false});
	})
})	
/*ScrollToTop button*/
$(window).scroll(function() {
	if($(this).scrollTop() != 0) {
		$('.rt-block.totop').fadeIn();	
	} else {
		$('.rt-block.totop').fadeOut();
	}
});
$(window).load(function(){
	var offset
	var mouseOffset ={}
	var beginAnimationPosition
	$('.menutop li.root').not('.active').find('>.item').hover(
		function(e){
			if($(this).parent().hasClass('f-mainparent-itemfocus')) return
			else {
				offset =$(this).offset()
				$(this).find('i.animateHover').css({left:(e.pageX-offset.left),top:(e.pageY-offset.top),width:0,height:0,opacity:0}).stop().animate({top:0,left:0,width:'100%',height:'100%',opacity:1})
			}
		},
		function(e){
			if($(this).parent().hasClass('f-mainparent-itemfocus')) {
				var menuElem=this
				function checMenukItem(menuElem){
					if($(menuElem).parent().hasClass('f-mainparent-itemfocus')){
						var menuElemInterval = setTimeout(function(){checMenukItem(menuElem)},100)
					}
					else {
						clearTimeout(menuElemInterval);
						offset =$(menuElem).offset()
						$(menuElem).find('i.animateHover').stop().animate({left:(e.pageX-offset.left),top:(e.pageY-offset.top),width:0,height:0,opacity:0})
					}
				}
				checMenukItem(menuElem)
			}
			else {
				offset =$(this).offset()
				$(this).find('i.animateHover').stop().animate({left:(e.pageX-offset.left),top:(e.pageY-offset.top),width:0,height:0,opacity:0})
			}
		}
	)
	$('#splash .rt-fusionmenu').animate({left:0,opacity:1},800)
	$('#splash #rt-logo').delay(200).animate({top:0,opacity:1},400)
})
	if(!$('.wrapper').hasClass('homepage')){
		$(window).load(function() {
			var body_ratio=($('body').width()/$('body').height())
			var home_ratio = $('#main_img').width()/$('#main_img').height()
			if(body_ratio>home_ratio){
				$('#main_img').css({width:$('body').width(),height:'auto'})
			}
			else{
				$('#main_img').css({width:'auto',height:$('body').height()})
			}
			$(window).resize(function() {
				if($(window).height()<=500) $('html').css({height:500}),$('.spinner').css({top:430,marginTop:0})
				else $('html').css({height:'100%'}),$('.spinner').css({top:'50%',marginTop:180});
				if($(window).width()<=960) $('.spinner').css({left:10,marginLeft:0})
				else $('.spinner').css({left:'50%',marginLeft:-470})
				var body_ratio=($('body').width()/$('body').height())
				if(body_ratio>home_ratio){
					$('#main_img').css({width:$('body').width(),height:'auto'})
				}
				else{
					$('#main_img').css({width:'auto',height:$('body').height()})
				}
			})
		})
	}