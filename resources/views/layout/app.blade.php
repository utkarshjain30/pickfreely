<!doctype html>
<html class="no-js" lang="">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Home || PickFreely</title>
        <meta name="description" content="">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		
		<!-- CSRF Token -->
		<meta name="csrf-token" content="{{ csrf_token() }}">

		<!-- favicon
		============================================ -->		
        <link rel="shortcut icon" type="image/x-icon" href="img/logo/favicon.ico">
		
		<!-- Google Fonts
		============================================ -->		
       <link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
	   <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet' type='text/css'>

	   
	   
		<!-- Bootstrap CSS
		============================================ -->		
        <link rel="stylesheet" href="{{asset("assets/css/bootstrap.min.css")}}">
		<!-- Font Awesome CSS
		============================================ -->
        <link rel="stylesheet" href="{{asset("assets/css/font-awesome.min.css")}}">
		<!-- Mean Menu CSS
		============================================ -->      
        <link rel="stylesheet" href="{{asset("assets/css/meanmenu.min.css")}}">
		<!-- owl.carousel CSS
		============================================ -->
        <link rel="stylesheet" href="{{asset("assets/css/owl.carousel.css")}}">
        <link rel="stylesheet" href="{{asset("assets/css/owl.theme.css")}}">
        <link rel="stylesheet" href="{{asset("assets/css/owl.transitions.css")}}">
		<!-- nivo-slider css
		============================================ --> 
		<link rel="stylesheet" href="{{asset("assets/css/nivo-slider.css")}}">
		<!-- Price slider css
		============================================ --> 
		<link rel="stylesheet" href="{{asset("assets/css/jquery-ui-slider.css")}}">
		<!-- Simple Lence css
		============================================ --> 
		<link rel="stylesheet" type="text/css" href="{{asset("assets/css/jquery.simpleLens.css")}}">
		<link rel="stylesheet" type="text/css" href="{{asset("assets/css/jquery.simpleGallery.css")}}">
		<!-- animate CSS
		============================================ -->
        <link rel="stylesheet" href="{{asset("assets/css/animate.css")}}">
		<!-- normalize CSS
		============================================ -->
        <link rel="stylesheet" href="{{asset("assets/css/normalize.css")}}">
		<!-- main CSS
		============================================ -->
        <link rel="stylesheet" href="{{asset("assets/css/main.css")}}">
		<!-- style CSS
		============================================ -->
        <link rel="stylesheet" href="{{asset("assets/css/style.css")}}">
		<!-- responsive CSS
		============================================ -->
        <link rel="stylesheet" href="{{asset("assets/css/responsive.css")}}">

        <!-- Compiled CSS uncomment on production
		============================================ -->
        {{-- <link rel="stylesheet" href="css/style.css"> --}}
        
		<!-- modernizr JS
		============================================ -->		
		<script src="{{URL::to("assets/js/vendor/modernizr-2.8.3.min.js")}}"></script>
		<script src="{{URL::to("assets/js/vendor/jquery-3.1.js")}}"></script>
		
    </head>
    <body>
		
{{-- @include('partials.header') --}}

<!-- Main Menu Area -->
<div class="main-menu-area">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    {{-- @include('partials.main-menu') --}}
                    {{-- @include('partials.mobile-menu') --}}
                    @include('partials.header-mega')
                </div>
            </div>
        </div>
</div><!-- End Main Menu Area -->

      
@yield('contents')


@include('partials.footer')

@include('partials.quickview')










<!-- jquery
============================================ -->		
<script src="{{URL::to("assets/js/vendor/jquery-1.11.3.min.js")}}"></script>
<!-- bootstrap JS
============================================ -->		
<script src="{{URL::to("assets/js/bootstrap.min.js")}}"></script>
<!-- nivo slider js
============================================ --> 
<script src="{{URL::to("assets/js/jquery.nivo.slider.pack.js")}}"></script>
<!-- Mean Menu js
============================================ -->         
<script src="{{URL::to("assets/js/jquery.meanmenu.min.js")}}"></script>
<!-- wow JS
============================================ -->		
<script src="{{URL::to("assets/js/wow.min.js")}}"></script>
<!-- price-slider JS
============================================ -->		
<script src="{{URL::to("assets/js/jquery-price-slider.js")}}"></script>
<!-- Simple Lence JS
============================================ -->
<script type="text/javascript" src="{{URL::to("assets/js/jquery.simpleGallery.min.js")}}"></script>
<script type="text/javascript" src="{{URL::to("assets/js/jquery.simpleLens.min.js")}}"></script>	
<!-- owl.carousel JS
============================================ -->		
<script src="{{URL::to("assets/js/owl.carousel.min.js")}}"></script>
<!-- scrollUp JS
============================================ -->		
<script src="{{URL::to("assets/js/jquery.scrollUp.min.js")}}"></script>
<!-- jquery Collapse JS
============================================ -->
<script src="{{URL::to("assets/js/jquery.collapse.js")}}"></script>
<!-- plugins JS
============================================ -->		
<script src="{{URL::to("assets/js/plugins.js")}}"></script>
<!-- main JS
============================================ -->		
<script src="{{URL::to("assets/js/main.js")}}"></script>

<script>
	$( document ).ready(function() {
		$("#close").click(function(){
			$("#filter-select").fadeOut(300);
		});
		$("#filter").click(function(){
			$(".filter-form").submit();
			$("#filter").toggle();
		});
		$("#open").click(function(){
			$("#filter-select").fadeIn(300);
			$("#filter").toggle();
		})
	});

</script>





    </body>
</html>