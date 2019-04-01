@extends('layout.app')
@section('contents')
<!-- Wishlist Area -->
<div class="wishlist-area">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="cart-title">
					<h2>Wishlist</h2>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<!-- Cart Item -->
				<div class="wishlist-item chart-item table-responsive fix">
					<table class="col-md-12">
						<thead>
							<tr>
								<th class="th-delate">Remove</th>
								<th class="th-product">Images</th>
								<th class="th-details">Product Name</th>
								<th class="th-price">Unit Price</th>
								<th class="th-edit th-stock">Stock Status </th>
								<th class="th-total th-add-to-cart">Add to Cart </th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="th-delate"><a href="#">X</a></td>
								<td class="th-product">
									<a href="#"><img src="img/cart/c3.jpg" alt="cart"></a>
								</td>
								<td class="th-details">
									<h2><a href="#">Baby New Style Jackets</a></h2>
								</td>
								<td class="th-price">$225.00</td>
								<td class="th-edit th-stock"><a href="#">In Stock</a></td>
								<th class="td-add-to-cart"><a href="#"> Add to Cart</a></th>
							</tr>
							<tr>
								<td class="th-delate"><a href="#">X</a></td>
								<td class="th-product">
									<a href="#"><img src="img/cart/c4.jpg" alt="cart"></a>
								</td>
								<td class="th-details">
									<h2><a href="#">Baby New Style Jackets</a></h2>
								</td>
								<td class="th-price">$225.00</td>
								<td class="th-edit th-stock"><a href="#">In Stock</a></td>
								<th class="td-add-to-cart"><a href="#"> Add to Cart</a></th>
							</tr>
						</tbody>
					</table>
				</div><!-- End Cart Item -->
				<div class="modal-product social-sharing">
					<div class="widget widget_socialsharing_widget">
						<h3 class="widget-title-modal">Share on</h3>
						<ul class="social-icons">
							<li><a class="facebook social-icon" href="#" title="Facebook" target="_blank"><i class="fa fa-facebook"></i></a></li>
							<li><a class="twitter social-icon" href="#" title="Twitter" target="_blank"><i class="fa fa-twitter"></i></a></li>
							<li><a class="pinterest social-icon" href="#" title="Pinterest" target="_blank"><i class="fa fa-pinterest"></i></a></li>
							<li><a class="gplus social-icon" href="#" title="Google +" target="_blank"><i class="fa fa-google-plus"></i></a></li>
							<li><a class="linkedin social-icon" href="#" title="LinkedIn" target="_blank"><i class="fa fa-linkedin"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</div><!-- End Wishlist Area -->

		
@endsection