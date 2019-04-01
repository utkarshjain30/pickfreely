@extends('layout.app')

@section('contents')
	

        <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
		@include('layout.index.bannercarousel')		
		<!-- Product Box Area -->
		<div class="product-box-area">
			<div class="container">
				<!-- Product Box -->
				<div class="product-box" style="width:100%">
					<!-- Single Product Box -->
					<div class="single-product-box">
						<div class="product-box-img">
							<a href="/list?category=1"><img src="{{URL::to("assets/img/index/1.jpg")}}" alt="product"></a>							
						</div>
						<div class="product-box-content">				
							<h2>MakeUp</h2>
							<p>Fashiong trending <?php date('Y');?></p>
							<a href="/list?category=1">shop now</a>
						</div>
					</div>
					<!-- Single Product Box -->
					<div class="single-product-box single-product-box-two">
						<div class="product-box-content">				
							<h2>Skin</h2>
							<p>trending </p>
							<a href="/list?category=2">shop now</a>
						</div>
						<div class="product-box-img">
							<a href="/list?category=2"><img src="{{URL::to("assets/img/index/2.jpg")}}" alt="product"></a>							
						</div>
					</div>
					<!-- Single Product Box -->
					<div class="single-product-box single-product-box-three">
						<div class="product-box-img">
							<a href="/list?category=3"><img src="{{URL::to("assets/img/index/3.jpg")}}" alt="product"></a>							
						</div>
						<div class="product-box-content">				
							<h2>Hair</h2>
							<p>Fashiong trending</p>
							<a href="/list?category=3">shop now</a>
						</div>
					</div>
				</div><!-- End Product Box -->
			</div>
		</div><!-- End Product Box Area -->
		<!-- Product area -->
		<div class="product-area">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<!-- Product Top Bar -->
						<div class="product-top-bar customize-tab-bar">
							<!-- Tab Button -->
							<ul class="nav nav-tabs" role="tablist">
								<li role="presentation" class="active"><a href="#p-bestseller" data-toggle="tab"><i class="fa fa-pencil-square-o"></i>bestseller</a></li>
								<li role="presentation"><a href="#p-new" data-toggle="tab"><i class="fa fa-star"></i>New Products</a></li>
							</ul><!-- End Tab Button -->
						</div><!-- End Product Top Bar -->
					</div>
					<div class="col-md-12">
						<!-- Single Product area -->
						<div class="single-product-area c-carousel-button">	
							<!-- Tab Content -->
							<div class="tab-content">
								@include('layout.index.bestseller')
								@include('layout.index.newarrival')
							</div><!-- End Tab Content -->
						</div><!-- End Single Product area -->
					</div>
				</div>
			</div>
		</div><!-- End Product area -->

		<!-- Single Banner area -->
		<div class="single-banner-area">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="singler-banner banner-add">
							<a href="#">
								<img src="{{Voyager::image(imageValidate($Banners[0]->image))}}" alt="banner">
							</a>
						</div>
					</div>
				</div>
			</div>
		</div><!-- End Single Banner area -->
		
		@include('layout.index.featuredproduct')<!-- Featured Product -->

		<!-- About-add area -->
		<div class="about-add-area home-2-add-area">
			<div class="container">
				<div class="row">
					<div class="col-md-4 col-sm-6">
						<div class="about-add-img banner-add">
							<a href="#">
								<img src="{{asset("assets/img/banner/b6.jpg")}}" alt="img">
							</a>
						</div>
					</div>
					<div class="col-md-4 col-sm-6">
						<div class="about-add-img about-add-img-top banner-add">
							<a href="#">
								<img src="{{asset("assets/img/banner/b7.jpg")}}" alt="img">
							</a>
						</div>
						<div class="about-add-img banner-add">
							<a href="#">
								<img src="{{asset("assets/img/banner/b15.jpg")}}" alt="img">
							</a>
						</div>
					</div>
					<div class="col-md-4 col-sm-6 hidden-sm">
						<div class="about-add-img about-add-img-top banner-add">
							<a href="#">
								<img src="{{asset("assets/img/banner/b9.jpg")}}" alt="img">
							</a>
						</div>
						<div class="about-add-img banner-add">
							<a href="#">
								<img src="{{asset("assets/img/banner/b10.jpg")}}" alt="img">
							</a>
						</div>
					</div>
				</div>
			</div>
		</div><!-- End About-add area -->

<!-- Support area -->
<div class="support-area">
	<div class="container">
		<div class="row">
			<div class="col-md-4 col-sm-4">
				<!-- Single Support area -->
				<div class="single-support">
					<div class="single-support-icon">
						<p><i class="fa fa-bus"></i></p>
					</div>
					<div class="single-support-content">
						<h2>FREE DELIVERY ORDERS<br> ON ALL ORDERS</h2>
					</div>
				</div><!-- End Single Support area -->
			</div>
			<div class="col-md-4 col-sm-4">
				<!-- Single Support area -->
				<div class="single-support">
					<div class="single-support-icon">
						<p><i class="fa fa-gift"></i></p>
					</div>
					<div class="single-support-content">
						<h2>GIFT WRAP <br>OPTION</h2>
					</div>
				</div><!-- End Single Support area -->
			</div>
			<div class="col-md-4 col-sm-4">
				<!-- Single Support area -->
				<div class="single-support">
					<div class="single-support-icon">
						<i class="fa fa-fax"></i>
					</div>
					<div class="single-support-content">
						<h2>24/7 CUSTOMER <br>SUPPORT</h2>
					</div>
				</div><!-- End Single Support area -->
			</div>
		</div>
	</div>
</div><!-- End Support area -->

				
@endsection{{-- Laravel Section end --}}
		
		
