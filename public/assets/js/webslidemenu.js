/*
 * Plugin: Web Slide - Responsive Mega Menu for Bootstrap 3+
 * Demo Link: http://webslidemenu.webthemex.com/
 * Version: v3.3
 * Author: webthemex
 * License: http://codecanyon.net/licenses/standard
*/
 
document.addEventListener("touchstart", function() {},false);
$(function() {
	
	$('#wsnavtoggle').click(function () {
		$('.wsmenucontainer').toggleClass('wsoffcanvasopener');
	});
	
	$('.overlapblackbg').click(function () {
	  $('.wsmenucontainer').removeClass('wsoffcanvasopener');
	});
	
	$('.wsmenu-list> li').has('.wsmenu-submenu').prepend('<span class="wsmenu-click"><i class="wsmenu-arrow fa fa-angle-down"></i></span>');
	$('.wsmenu-list > li').has('.wsshoptabing').prepend('<span class="wsmenu-click"><i class="wsmenu-arrow fa fa-angle-down"></i></span>');
	
	$('.wsmenu-click').click(function(){
		$(this).toggleClass('ws-activearrow').parent().siblings().children().removeClass('ws-activearrow');
		$(".wsmenu-submenu, .wsshoptabing").not($(this).siblings('.wsmenu-submenu, .wsshoptabing')).slideUp('slow');
		$(this).siblings('.wsmenu-submenu, .wsshoptabing').slideToggle('slow');
	});
	
	$('.wsmenu-list > li > ul > li').has('.wsmenu-submenu-sub').prepend('<span class="wsmenu-click02"><i class="wsmenu-arrow fa fa-angle-down"></i></span>');
	$('.wsmenu-list > li > ul > li > ul > li').has('.wsmenu-submenu-sub-sub').prepend('<span class="wsmenu-click02"><i class="wsmenu-arrow fa fa-angle-down"></i>	</span>');
	
	$('.wsmenu-click02').click(function(){
		$(this).children('.wsmenu-arrow').toggleClass('wsmenu-rotate');
		$(this).siblings('.wsmenu-submenu-sub').slideToggle('slow');
		$(this).siblings('.wsmenu-submenu-sub-sub').slideToggle('slow');
	});

});

$(window).load(function(){
	
	$("#allcategories .wstabitem li").on('mouseenter', function() {
        $(this).addClass("wsshoplink-active").siblings(this).removeClass("wsshoplink-active");
    });
	
	$("#allcategories .wstabitem li a").on('mouseenter', function() {
		$("#allcategories .wstabcontent").find("> div").siblings().removeClass("wsshoptab-active");
		$($(this).attr("href")).addClass("wsshoptab-active");
	});
	
	
	$("#allbrands .wstabitem02 li").on('mouseenter', function() {
        $(this).addClass("wsshoplink-active").siblings(this).removeClass("wsshoplink-active");
    });
	
	$("#allbrands .wstabitem02 li a").on('mouseenter', function() {
		$("#allbrands .wstabcontent02").find("> div").siblings().removeClass("wsshoptab-active");
		$($(this).attr("href")).addClass("wsshoptab-active");
	});
	
	//Just For Cart dropdown
	$(".wscarticon > a").on('click', function() {
        $(".wscarticon").toggleClass("wsopensmallcheckout");
    })
	
	$("body").click(function () {
         $(".wscarticon").removeClass('wsopensmallcheckout');
 	});
	
	$(".wscarticon > a").click(function(e){
    	e.stopPropagation();
	});
	
});


 


























