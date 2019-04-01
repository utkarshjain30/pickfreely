@extends('layout.app')
@section('contents')
<!-- Breadcurb Area -->
<div class="breadcurb-area">
	<div class="container">
		<ul class="breadcrumb">
			<li><a href="/">Home</a></li>
			<li>Product</li>
		</ul>
	</div>
</div><!-- End Breadcurb Area -->
	<!-- Single Product details Area -->
	<div class="single-product-detaisl-area">
		<!-- Single Product View Area -->
		<div class="product-view-area">
			<div class="container">
				<div class="row">
					<div class="col-md-5 col-sm-12 col-xs-12">
						<!-- Single Product View -->
						<div class="single-procuct-view">
							<!-- Simple Lence Gallery Container -->
							<div class="simpleLens-gallery-container" id="p-view">
								<div class="simpleLens-container tab-content">
									<div class="tab-pane active" id="p-view-1">
										<div class="simpleLens-big-image-container">
											<a class="simpleLens-lens-image" data-lens-image="{{asset('storage/'.$product->feature_image)}}">
											<img src="{{Voyager::image(imageValidate($product->feature_image))}}" class="simpleLens-big-image" alt="productd">
											</a>
										</div>
									</div>
									<?php $i=2;?>
									@foreach (json_decode($product->images) as $image)
									<div class="tab-pane" id="p-view-{{$i}}">
										<div class="simpleLens-big-image-container">
											<a class="simpleLens-lens-image" data-lens-image="{{Voyager::image(imageValidate($image))}}">
											<img src="{{Voyager::image(thumbnail(imageValidate($image), 'medium'))}}" class="simpleLens-big-image" alt="productd">
											</a>
										</div>
									</div>
									<?php $i++;?>	
									@endforeach	
								</div>
								<!-- Simple Lence Thumbnail -->
								<div class="simpleLens-thumbnails-container">
									<h2>More Views</h2>
								
									<div id="single-product" class="owl-carousel">
											<li class="" style="list-style:none;"> 
												<a href="#p-view-1" role="tab" data-toggle="tab">
													<img src="{{Voyager::image(thumbnail(imageValidate($product->feature_image), 'cropped'))}}" alt="productd" height="137" width="107">
												</a>
											</li>
											<?php $i=2;?>
											@foreach (json_decode($product->images) as $image)
												<li class="" style="margin-left:15px;list-style:none;">
												<a href="#p-view-{{$i}}" role="tab" data-toggle="tab">
													<img src="{{Voyager::image(thumbnail(imageValidate($image), 'cropped'))}}" alt="productd" height="137" width="107">
												</a>
												</li>
												<?php $i++;?>	
											@endforeach
									</div>
								</div><!-- End Simple Lence Thumbnail -->
							</div><!-- End Simple Lence Gallery Container -->
						</div><!-- End Single Product View -->
					</div>
					<div class="col-md-6 col-sm-8 col-xs-12">
						<!-- Single Product Content View -->
						<div class="single-product-content-view">
						<h2>{{$product->name}}</h2>
							<div class="ratings">
								<div class="rating-box">
									<ul>
										<li><i class="fa fa-star"></i></li>
										<li><i class="fa fa-star"></i></li>
										<li><i class="fa fa-star"></i></li>
										<li><i class="fa fa-star"></i></li>
										<li><i class="fa fa-star"></i></li>
										<li><i class="fa fa-star"></i></li>
									</ul>
								</div>
								<p class="rating-links">
									<a href="#">1 Review(s)</a>
								</p>
							</div>
							<div class="short-description">
								<div class="std">
								{!! $product->detail !!}
								</div>
							</div>
							<div class="price-box">
								<span class="regular-price">
								<span class="price">Rs. {{$product->price}}/-</span>
								</span>
							</div>
							<p class="availability in-stock">Availability:
								@if ($product->stocks >0)
								<span>In stock</span>
								@else
								<span style="color:red;">Out of Stock</span>
								@endif
							
							</p>
							<div class="add-to-box add-to-box2">
								<div class="actions-inner">
									<ul class="add-to-links">
										<li><a class="link-wishlist" title="Add to Wishlist" href="#"><i class="fa fa-star"></i>Add to Wishlist</a></li>
										{{-- <li><a class="link-compare" title="Add to Compare" href="#"><i class="fa fa-pie-chart"></i> Add to Compare</a></li> --}}
										<li class="email-friend" title="Email to a Friend"><a href="#"><i class="fa fa-envelope"></i> Email a Friend</a></li>
									</ul>
								</div>
								<form action="/cart/skuid={{$product->id}}" method="post">
									@csrf
								{{-- <div class="product-select product-color">
									<h2>Color <sup>*</sup></h2>
									<select name="color">
										<option value="NULL">--Please Select--</option>
										<option value="green">Green +$2.00</option>
										<option value="blue">Blue +$1.00</option>
										<option value="white">White +$3.00</option>
									</select>
								</div> --}}
								<div class="add-to-cart">
								<input type="hidden" value="{{$product->stocks}}" id="stock">
								
								@if ($product->stocks >0)
									<div class="input-content">
										<label for="qty">Qty:</label>
										<input type="button" class="qty-decrease" 
										onclick="var qty_el = document.getElementById('qty'); var qty = qty_el.value; if( !isNaN( qty ) && (qty > 1)) qty_el.value--;else return false;" 
										value="-">
										<input type="text" class="input-text qty" title="Qty" value="1" maxlength="12" id="qty" name="qty">
										<input type="button" class="qty-increase" onclick="var qty_el = document.getElementById('qty'); var skt_ele=document.getElementById('stock');
										var qty = qty_el.value; var stk=skt_ele.value;
										 if( !isNaN( qty ) && (qty < stk)) qty_el.value++;return false;" value="+">
									</div>
								<button type="submit" class="btn" ><span>Add to Cart</span></button>
								@else
								<button type="button" class="btn btn-danger" disabled style="border:none;"
								><span>Out of Stock</span></button>	
								@endif

								</form>
								</div>
							</div>
						</div><!-- End Single Product Content View -->
					</div>

				</div>
			</div>
		</div><!-- End Single Product View Area -->
		<!-- Single Description Tab -->
		<div class="single-product-description">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="product-description-tab">
							<!-- tab bar -->
							<ul class="nav nav-tabs" role="tablist">
								<li class="active"><a href="#product-des" data-toggle="tab">Product Description</a></li>
								
								{{-- <li><a href="#product-rev" data-toggle="tab">Reviews</a></li> --}}
								{{-- <li><a href="#product-tag" data-toggle="tab">Product Tags</a></li> --}}
							</ul>
							<!-- Tab Content -->
							<div class="tab-content">
								<div class="tab-pane active" id="product-des">

								<p>{!! $product->description !!}</p>

								</div>
								{{-- <div class="tab-pane" id="product-rev">
									<div class="row">
										<div class="col-md-6">
											<div class="product-rev-left">
												<p class="product-action">
													<a href="/#">Rajiv</a> Review by <span>Plazathemes</span>
												</p>
												<div class="product-ratting">
													<table class="">
														<tr>
															<td>Quality</td>
															<td>
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
															</td>
														</tr>
														<tr>
															<td>Price</td>
															<td>
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
															</td>
														</tr>
														<tr>
															<td>Value</td>
															<td>
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
															</td>
														</tr>
													</table>
												</div>
												<p>BootExperts <span class="posted">(Posted on 01/02/2016)</span></p>
											</div>
										</div>
										<div class="col-md-6">
											<div class="product-rev-right">
												<h3>You're reviewing: Donec ac tempus <span>*</span></h3>
												<h3>How do you rate this product? </h3>
												<div class="product-rev-right-table table-responsive">
													<table>
														<thead>
															<tr class="first last">
																<th>&nbsp;</th>
																<th><span class="nobr">1 star</span></th>
																<th><span class="nobr">2 stars</span></th>
																<th><span class="nobr">3 stars</span></th>
																<th><span class="nobr">4 stars</span></th>
																<th><span class="nobr">5 stars</span></th>
															</tr>
														</thead>
														<tbody>
															<tr>
																<th>Value</th>
																<th><input type="radio" class="radio" name="ratings[1]"></th>
																<th><input type="radio" class="radio" name="ratings[1]"></th>
																<th><input type="radio" class="radio" name="ratings[1]"></th>
																<th><input type="radio" class="radio" name="ratings[1]"></th>
																<th><input type="radio" class="radio" name="ratings[1]"></th>
															</tr>
															<tr>
																<th>Quality</th>
																<th><input type="radio" class="radio" name="ratings[2]"></th>
																<th><input type="radio" class="radio" name="ratings[2]"></th>
																<th><input type="radio" class="radio" name="ratings[2]"></th>
																<th><input type="radio" class="radio" name="ratings[2]"></th>
																<th><input type="radio" class="radio" name="ratings[2]"></th>
															</tr>
															<tr>
																<th>Price</th>
																<th><input type="radio" class="radio" name="ratings[3]"></th>
																<th><input type="radio" class="radio" name="ratings[3]"></th>
																<th><input type="radio" class="radio" name="ratings[3]"></th>
																<th><input type="radio" class="radio" name="ratings[3]"></th>
																<th><input type="radio" class="radio" name="ratings[3]"></th>
															</tr>
														</tbody>
													</table>
												</div>
												<div class="porduct-rev-right-form">
													<form action="#" class="form-horizontal product-form">
														<div class="form-goroup">
															<label>Nickname <sup>*</sup></label>
															<input type="text" class="form-control" required="required">
														</div>
														<div class="form-goroup">
															<label>Summary of Your Review <sup>*</sup></label>
															<input type="text" class="form-control" required="required">
														</div>
														<div class="form-goroup">
															<label>Review <sup>*</sup></label>
															<textarea class="form-control" rows="5" required="required"></textarea>
														</div>
														<div class="form-goroup form-group-button">
															<button class="btn" value="submit">Submit Review</button>
														</div>
													</form>
												</div>
											</div>
										</div>
									</div>
								</div> --}}
								{{-- <div class="tab-pane" id="product-tag">
									<h2>Other people marked this product with these tags:</h2>
									<p class="product-action">
										<a href="http://bootexperts.com/">Clothing </a> <span>(3)</span>
									</p>
									<form action="#" class="product-form">
										<label>Add Your Tags:</label>
										<input type="text" class="form-control" required="required">
										<button class="btn" value="submit">Add Tags</button>
									</form>
								</div> --}}
							</div>
						</div>
					</div>
				</div>
			</div>
		</div><!-- End Single Description Tab -->
		<!-- Upsell Product area area -->
		{{-- <div class="upsell-product-area product-another">
			<div class="container">
				<div class="row">
					<!-- Brand Product Column -->
					<div class="col-md-12">
						<div class="brand-products c-carousel-button">
							<div class="row">
								<div class="col-md-12">
									<div class="products-head">
										<div class="products-head-title">
											<i class="fa fa-picture-o"></i>
											<h2>UpSell Products</h2>
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<!-- Single Product Carousel-->
								<div id="single-product-upsell" class="owl-carousel">
									<!-- Start Single Product Column-->
									<div class="col-md-3">
										<div class="single-product">
											<div class="single-product-img">
												<a href="#">
													<img class="primary-img" src="img/product/sp9.jpg" alt="product">
												</a>
												<div class="product-status">
													<span class="product-new">New</span>
												</div>
											</div>
											<div class="single-product-content another-content">
												<div class="ratings">
													<div class="rating-box">
														<ul>
															<li><i class="fa fa-star"></i></li>
															<li><i class="fa fa-star"></i></li>
															<li><i class="fa fa-star"></i></li>
															<li><i class="fa fa-star"></i></li>
															<li><i class="fa fa-star"></i></li>
															<li><i class="fa fa-star"></i></li>
														</ul>
													</div>
													<p class="rating-links">
														<a href="#">1 Review(s)</a>
													</p>
												</div>
												<div class="product-content-head">
													<h2 class="product-title"><a href="#">Cras neque metus</a></h2>
													<p class="product-price">$155.00</p>
												</div>
											</div>
										</div>
									</div><!-- End Single Product Column -->
									<!-- Start Single Product Column -->
									<div class="col-md-3">
										<div class="single-product">
											<div class="single-product-img">
												<a href="#">
													<img class="primary-img" src="img/product/sp7.jpg" alt="product">
												</a>
												<div class="product-status">
													<span class="product-sale">Sale</span>
												</div>
											</div>
											<div class="single-product-content another-content">
												<div class="ratings">
													<div class="rating-box">
														<ul>
															<li><i class="fa fa-star"></i></li>
															<li><i class="fa fa-star"></i></li>
															<li><i class="fa fa-star"></i></li>
															<li><i class="fa fa-star"></i></li>
															<li><i class="fa fa-star"></i></li>
															<li><i class="fa fa-star"></i></li>
														</ul>
													</div>
													<p class="rating-links">
														<a href="#">3 Review(s)</a>
													</p>
												</div>
												<div class="product-content-head">
													<h2 class="product-title"><a href="#">Cras neque metus</a></h2>
													<p class="product-price">$155.00</p>
												</div>
											</div>
										</div>
									</div><!-- End Single Product Column -->
									<!-- Start Single Product Column -->
									<div class="col-md-3">
										<div class="single-product">
											<div class="single-product-img">
												<a href="#">
													<img class="primary-img" src="img/product/sp5.jpg" alt="product">
												</a>
												<div class="product-status">
													<span class="product-new">New</span>
												</div>
											</div>
											<div class="single-product-content another-content">
												<div class="ratings">
													<div class="rating-box">
														<ul>
															<li><i class="fa fa-star"></i></li>
															<li><i class="fa fa-star"></i></li>
															<li><i class="fa fa-star"></i></li>
															<li><i class="fa fa-star"></i></li>
															<li><i class="fa fa-star"></i></li>
															<li><i class="fa fa-star"></i></li>
														</ul>
													</div>
													<p class="rating-links">
														<a href="#">1 Review(s)</a>
													</p>
												</div>
												<div class="product-content-head">
													<h2 class="product-title"><a href="#">Cras neque metus</a></h2>
													<p class="product-price">$155.00</p>
												</div>
											</div>
										</div>
									</div><!-- End Single Product Column -->
									<!-- Start Single Product Column -->
									<div class="col-md-3">
										<div class="single-product">
											<div class="single-product-img">
												<a href="#">
													<img class="primary-img" src="img/product/sp8.jpg" alt="product">
												</a>
												<div class="product-status">
													<span class="product-new">New</span>
												</div>
											</div>
											<div class="single-product-content another-content">
												<div class="ratings">
													<div class="rating-box">
														<ul>
															<li><i class="fa fa-star"></i></li>
															<li><i class="fa fa-star"></i></li>
															<li><i class="fa fa-star"></i></li>
															<li><i class="fa fa-star"></i></li>
															<li><i class="fa fa-star"></i></li>
															<li><i class="fa fa-star"></i></li>
														</ul>
													</div>
													<p class="rating-links">
														<a href="#">4 Review(s)</a>
													</p>
												</div>
												<div class="product-content-head">
													<h2 class="product-title"><a href="#">Cras neque metus</a></h2>
													<p class="product-price">$155.00</p>
												</div>
											</div>
										</div>
									</div><!-- End Single Product Column -->
								</div><!-- End Single Product Carousel -->
							</div>
						</div>
					</div><!-- End Brand Products Column -->
				</div>
			</div>
		</div>
		<!-- End Upsell Product area area --> --}}
		<!-- Related Product area area -->
		@include('layout.product.related')
		<!-- End Related Product area -->
	</div><!-- End Single Product details Area -->
		
<!-- Go to www.addthis.com/dashboard to customize your tools -->
<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-5bf660cc0202f7a5"></script>

@endsection