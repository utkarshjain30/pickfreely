(function ($) {
 "use strict";

/*----------------------------
 jQuery MeanMenu
------------------------------ */
	$('.mobile-menu nav').meanmenu({
		meanScreenWidth: "991",
		meanMenuContainer: ".mobile-menu",
	});

/*----------------------------
 main slider
------------------------------ */
	$('#mainSlider').nivoSlider({
		directionNav: true,
		animSpeed: 500,
		slices: 18,
		pauseTime: 5000,
		pauseOnHover: false,
		controlNav: false,
		prevText: '<i class="fa fa-angle-left nivo-prev-icon"></i>',
		nextText: '<i class="fa fa-angle-right nivo-next-icon"></i>'
	});
	
	$('#mainMobileSlider').nivoSlider({
		directionNav: true,
		animSpeed: 500,
		slices: 18,
		pauseTime: 5000,
		pauseOnHover: false,
		controlNav: false,
		prevText: '<i class="fa fa-angle-left nivo-prev-icon"></i>',
		nextText: '<i class="fa fa-angle-right nivo-next-icon"></i>'
	});	
	
/*----------------------------
 wow js active
------------------------------ */
	new WOW().init();
 
/*----------------------------
 Product carousel active
------------------------------ */
$("#single-product li").click(function(){
	$(this).removeClass('active');
})
/*---------------------
 Product slider carousel
--------------------- */

	/* Single Product Bestseller */
	$("#single-product-bestseller").owlCarousel({
		autoPlay: false, 
		slideSpeed:2000,
		pagination:false,
		navigation:true,	  
		items : 4,
		/* transitionStyle : "fade", */    /* [This code for animation ] */
		navigationText:["<i class='fa fa-chevron-left'></i>","<i class='fa fa-chevron-right'></i>"],
		itemsDesktop : [1199,4],
		itemsDesktopSmall : [980,3],
		itemsTablet: [768,2],
		itemsMobile : [479,1],
	});
  
	/* Single Product New */  
	$("#single-product-new").owlCarousel({
		autoPlay: false, 
		slideSpeed:2000,
		pagination:false,
		navigation:true,	  
		items : 4,
		/* transitionStyle : "fade", */    /* [This code for animation ] */
		navigationText:["<i class='fa fa-chevron-left'></i>","<i class='fa fa-chevron-right'></i>"],
		itemsDesktop : [1199,4],
		itemsDesktopSmall : [980,3],
		itemsTablet: [768,2],
		itemsMobile : [479,1],
	}); 

	/* Single Product Random */
	$("#single-product-random").owlCarousel({
		autoPlay: false, 
		slideSpeed:2000,
		pagination:false,
		navigation:true,	  
		items : 4,
		/* transitionStyle : "fade", */    /* [This code for animation ] */
		navigationText:["<i class='fa fa-chevron-left'></i>","<i class='fa fa-chevron-right'></i>"],
		itemsDesktop : [1199,4],
		itemsDesktopSmall : [980,3],
		itemsTablet: [768,2],
		itemsMobile : [479,1],
	}); 

	/* Product Brand Shoes */
	$("#product-brand-shoes").owlCarousel({
		autoPlay: false, 
		slideSpeed:2000,
		pagination:false,
		navigation:true,	  
		items : 2,
		/* transitionStyle : "fade", */    /* [This code for animation ] */
		navigationText:["<i class='fa fa-chevron-left'></i>","<i class='fa fa-chevron-right'></i>"],
		itemsDesktop : [1199,2],
		itemsDesktopSmall : [980,2],
		itemsTablet: [768,2],
		itemsMobile : [479,1],
	});

	/* Product Brand Bag */
	$("#product-brand-bag").owlCarousel({
		autoPlay: false, 
		slideSpeed:2000,
		pagination:false,
		navigation:true,	  
		items : 2,
		/* transitionStyle : "fade", */    /* [This code for animation ] */
		navigationText:["<i class='fa fa-chevron-left'></i>","<i class='fa fa-chevron-right'></i>"],
		itemsDesktop : [1199,2],
		itemsDesktopSmall : [980,2],
		itemsTablet: [768,2],
		itemsMobile : [479,1],
	});

	/* Fetured Product */
	$("#feture-products").owlCarousel({
		autoPlay: false, 
		slideSpeed:3000,
		pagination:false,
		navigation:true,	  
		items : 1,
		/* transitionStyle : "fade", */    /* [This code for animation ] */
		navigationText:["<i class='fa fa-chevron-left'></i>","<i class='fa fa-chevron-right'></i>"],
		itemsDesktop : [1199,1],
		itemsDesktopSmall : [980,1],
		itemsTablet: [768,1],
		itemsMobile : [479,1],
	});

	/* Brand Logo */
	$("#brands-logo").owlCarousel({
		autoPlay: false, 
		slideSpeed:2000,
		pagination:false,
		navigation:true,	  
		items : 5,
		/* transitionStyle : "fade", */    /* [This code for animation ] */
		navigationText:["<i class='fa fa-chevron-left'></i>","<i class='fa fa-chevron-right'></i>"],
		itemsDesktop : [1199,4],
		itemsDesktopSmall : [980,3],
		itemsTablet: [768,3],
		itemsMobile : [479,2],
	});

	/* Blog Posts */
	$("#blog-posts").owlCarousel({
		autoPlay: false, 
		slideSpeed:3000,
		pagination:false,
		navigation:true,	  
		items : 1,
		/* transitionStyle : "fade", */    /* [This code for animation ] */
		navigationText:["<i class='fa fa-chevron-left'></i>","<i class='fa fa-chevron-right'></i>"],
		itemsDesktop : [1199,1],
		itemsDesktopSmall : [980,1],
		itemsTablet: [768,1],
		itemsMobile : [479,1],
	});

	/* Single Product */
	$("#single-product").owlCarousel({
		autoPlay: false, 
		slideSpeed:2000,
		pagination:false,
		navigation:true,	  
		items : 4,
		/* transitionStyle : "fade", */    /* [This code for animation ] */
		navigationText:["<i class='fa fa-chevron-left'></i>","<i class='fa fa-chevron-right'></i>"],
		itemsDesktop : [1199,4],
		itemsDesktopSmall : [980,4],
		itemsTablet: [768,3],
		itemsMobile : [479,2],
	});

	/* Upsell Product */
	$("#single-product-upsell").owlCarousel({
		autoPlay: false, 
		slideSpeed:2000,
		pagination:false,
		navigation:true,
		/* transitionStyle : "fade", */    /* [This code for animation ] */
		navigationText:["<i class='fa fa-chevron-left'></i>","<i class='fa fa-chevron-right'></i>"],
		itemsDesktop : [1199,4],
		itemsDesktopSmall : [980,2],
		itemsTablet: [768,2],
		itemsMobile : [479,1],
	});

	/* Related Product */
	$("#single-product-related").owlCarousel({
		autoPlay: false, 
		slideSpeed:2000,
		pagination:false,
		navigation:true,	  
		items : 4,
		/* transitionStyle : "fade", */    /* [This code for animation ] */
		navigationText:["<i class='fa fa-chevron-left'></i>","<i class='fa fa-chevron-right'></i>"],
		itemsDesktop : [1199,4],
		itemsDesktopSmall : [980,2],
		itemsTablet: [768,2],
		itemsMobile : [479,1],
	});

/*----------------------------
 price-slider active
------------------------------ */  
	$( "#slider-range" ).slider({
	range: true,
	min: 40,
	max: 600,
	values: [ 60, 570 ],
	slide: function( event, ui ) {
	$( "#amount" ).val( "Rs." + ui.values[ 0 ] + " - Rs." + ui.values[ 1 ] );
	}
	});
	$( "#amount" ).val( "Rs." + $( "#slider-range" ).slider( "values", 0 ) +
	" - Rs." + $( "#slider-range" ).slider( "values", 1 ) ); 
	
	
/*----------------------------
  Simple Lence Active
------------------------------ */  
	$('#p-view .simpleLens-lens-image').simpleLens({
		loading_image: 'img/loading.gif'
	});
   
/*--------------------------
 scrollUp
---------------------------- */	
	$.scrollUp({
        scrollText: '<i class="fa fa-chevron-up"></i>',
        easingType: 'linear',
        scrollSpeed: 900,
        animation: 'fade'
    });
	
/*---------------------
Price Filter
--------------------- */
	$( "#slider-range" ).slider({
	  range: true,
	  min: 0,
	  max: 5000,
	  step: 500,
	  values: [ 0, 5000 ],
	  slide: function( event, ui ) {
		$( "#amount" ).val( "Rs. " + ui.values[ 0 ] + " - Rs. " + ui.values[ 1 ] );
		$( "#amountMax" ).val([ui.values[ 1 ]+','+((ui.values[ 0 ] == 0)?50:ui.values[ 0 ])]);
	  }
	});
	$( "#amount" ).val($( "#slider-range" ).slider( "values", 0 )+"-"+$( "#slider-range" ).slider( "values", 1 ) );
	
	$( "#slider-range-mobile" ).slider({
	  range: true,
	  min: 0,
	  max: 5000,
	  step: 500,
	  values: [ 0, 5000 ],
	  slide: function( event, ui ) {
		$( "#amount-mobile" ).val( "Rs. " + ui.values[ 0 ] + " - Rs. " + ui.values[ 1 ] );
		$( "#amountMax-mobile" ).val([ui.values[ 1 ]+','+((ui.values[ 0 ] == 0)?50:ui.values[ 0 ])]);
	  }
	});
	$( "#amount-mobile" ).val($( "#slider-range-mobile" ).slider( "values", 0 )+"-"+$( "#slider-range-mobile" ).slider( "values", 1 ) );

/*-------------------------
  showlogin toggle function
--------------------------*/
	 $( '#showlogin' ).on('click', function() {
        $( '#checkout-login' ).slideToggle(900);
     }); 

/*-------------------------
  showcoupon toggle function
--------------------------*/
	 $( '#showcoupon' ).on('click', function() {
		$( '#checkout_coupon' ).slideToggle(900);
	 });	 

/*-------------------------
  Create an account toggle function
--------------------------*/
	 $( '#cbox' ).on('click', function() {
        $( '#cbox_info' ).slideToggle(900);
     });
	 
/*-------------------------
  Create an account toggle function
--------------------------*/
	 $( '#ship-box' ).on('click', function() {
        $( '#ship-box-info' ).slideToggle(1000);
     });
	 
/* --------------------------------------------------------
   payment-accordion
* -------------------------------------------------------*/ 
	$(".payment-accordion").collapse({
		accordion:true,
	  open: function() {
		this.slideDown(550);
	  },
	  close: function() {
		this.slideUp(550);
	  }		
	});





/* --------------------------------------------------------
   Mega-Menu Css
* -------------------------------------------------------*/ 
  var nav_secector = $(".menu-show");
  var nav_container = $(".mega-menu");
  var nav_brand = $("#brand");
  var nav_category = $("#category");
  var main_category_select = $(".list-category");
  var main_category_container = $(".main-category-container");
	 
	//Default Hiding 
  	main_category_container.not(":first-child").hide();
	$(".mainCatImage").not(":first-child").hide();

  main_category_select.on("mouseover", function(){
    var container_selector = $(this).html();
	main_category_container.removeClass('active');
	$(".mainCatImage").removeClass('active'); 

	console.log(container_selector);
    if($('[data-mainCategory="'+container_selector+'"]').data('maincategory') == container_selector){
	  $('[data-mainCategory="'+container_selector+'"]').addClass('active');
	  $('[data-mainCategoryImage="'+container_selector+'"]').addClass('active');
	  
    }

  }); 

  main_category_select.on("mouseout", function(){
	main_category_container.hide();
	$(".mainCatImage").hide();
  });
  


  $(document).ready(function(){
    nav_container.hide();
    nav_brand.hide();
    nav_category.hide();
  });
  
  nav_secector.on("mouseover", function(){
    nav_container.show();
    nav_container.removeClass('animated bounceOutLeft');
    nav_container.addClass('animated bounceInLeft');

    var select = "#"+($(this).data().select);
    $(select).show();
    
    if(select == "#brand"){
      nav_category.hide();
    }
    else if(select == "#category"){
      nav_brand.hide(); 
    }
    else{
      nav_brand.hide();
      nav_category.hide();
    }
  });

  nav_secector.on("mouseout", function(){
    nav_container.removeClass('animated bounceInLeft');
    nav_container.addClass('animated bounceOutLeft');
    var select = "#"+($(this).data().select);
  });

  nav_container.on("mouseover", function(){
    $(this).show();
    nav_container.removeClass('animated bounceInLeft');
    
  });
  nav_container.on("mouseout", function(){
    nav_container.removeClass('animated bounceInLeft');
    nav_container.addClass('animated bounceOutLeft');
	});
//Mobile Menu	
var mobileMenuClose = $("#mobile-menu-close");
var mobileMenuOpen = $("#mobile-menu-open");
var mobileMenu = $("#mobile-menu");
$(document).ready(function(){
  mobileMenu.addClass("animated slideOutLeft");
});
mobileMenuClose.on("click", function(){
  mobileMenu.removeClass("animated slideInLeft");
  mobileMenu.addClass("animated slideOutLeft");
});

mobileMenuOpen.on("click", function(){
  mobileMenu.removeClass("animated slideOutLeft");
  mobileMenu.addClass("animated slideInLeft");
});

//Form JS

$("#primary-address").on('click',function(){
		if($(this).prop('checked')){
			$("#form-unfilled").hide();
			$("#form-filled").show();
		}
		else{
			$("#form-filled").hide();
			$("#form-unfilled").show();
		}
	});
  
 
})(jQuery); 