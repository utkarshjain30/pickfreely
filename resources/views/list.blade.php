@extends('layout.app')
@section('contents')
	
<!-- Breadcurb Area -->
<div class="breadcurb-area">
	<div class="container">
		<ul class="breadcrumb">
			<li><a href="/">Home</a></li>
			<li><a href="/list">List</a></li>
		</ul>
	</div>
</div><!-- End Breadcurb Area -->
<!-- Shop Product Area -->
<div class="shop-product-area">
	<div class="container">
		<div class="row">
			<div class="col-md-3 col-sm-3 col-xs-12 hidden-xs">

				<!-- Shop Product Left -->
				@include('layout.list.list-category') 
				<!-- End Shop Product Left -->

			</div>
			<div class="col-md-9 col-sm-9 col-xs-12">
				<!-- Shop Product Right -->
				<div class="shop-product-right">
					<div class="product-tab-area">
						<!-- Tab Bar -->
						<div class="tab-bar">
							<div class="toolbar">
								<div class="sorter">
									<div class="sort-by">
										<label>Sort By</label>
										<select>
											<option value="position">Position</option>
											<option value="name">Name</option>
											<option value="price">Price</option>
										</select>
										<a href="#"><i class="fa fa-long-arrow-up"></i></a>
									</div>
								</div>
								{{-- <div class="pager-list">
									<div class="limiter">
										<label>Show</label>
										<select>
											<option value="9">12</option>
											<option value="12">15</option>
											<option value="24">18</option>
											<option value="36">36</option>
										</select>
										per page
									</div>
								</div> --}}
							</div>
						</div><!-- End Tab Bar -->

						<!-- Tab Content -->
						<div class="tab-content">
							<div class="tab-pane active" id="shop-product">
								<div class="row tab-content-row">
									@include('layout.list.list-product')
									
								</div>

							</div>
							
						</div><!-- End Tab Content -->
						<!-- Tab Bar -->
						<div class="tab-bar">
							<div class="toolbar">
								<div class="sorter">
									<div class="sort-by">
										<label>Sort By</label>
										<select>
											<option value="position">Position</option>
											<option value="name">Name</option>
											<option value="price">Price</option>
										</select>
										<a href="#"><i class="fa fa-long-arrow-up"></i></a>
									</div>
								</div>
								<div class="pages" style="margin-top:-15px; height:100%;">
									{{$products->appends(request()->except('page'))->links()}}
								</div>
							</div>
						</div><!-- End Tab Bar -->
					</div>
				</div><!-- End Shop Product Left -->
			</div>
		</div>
	</div>

</div><!-- End Shop Product Area -->
@include('layout.list.list-mobile')
@endsection
