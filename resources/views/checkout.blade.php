@extends('layout.app')
@section('contents')

<?php
if(Auth::guard('customer')->user()){
	$id = Auth::guard('customer')->user()->id;
	$customer = App\CustomersInfo::where('customer_id', $id)->first();
	$address = $customer->address;
	$phone = $customer->phone;
	$email = $customer->email;
	$city = $customer->city;
	$state = $customer->state;
	$zipcode = $customer->zip_code;
	$fname = "";
	$lname = "";

	if( sizeof(explode(" ",$customer->name)) >1){
	$fname = explode(" ",$customer->name)[0];
	$lname = explode(" ",$customer->name)[1];
	}else{
	$fname = explode(" ",$customer->name)[0];
	$lname = "";
	}
}
?>

<!-- Entry Header Area -->
<div class="entry-header-area">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="entry-header">
					<h1 class="entry-title">Checkout</h1>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Entry Header Area -->
<!-- Coupon Area -->
<div class="coupon-area">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="coupon-accordion">
					<!-- ACCORDION START -->
					@if(!Auth::guard('customer')->user())
					<h3>Returning customer? <span id="showlogin">Click here to login</span></h3>
					<div id="checkout-login" class="coupon-content">
						<div class="coupon-info">
							<form action="{{ route('customer.login') }}" method="post">
									@csrf
									<div class="form-goroup">
										<label>{{ __('E-Mail Address') }}<sup>*</sup></label>
										<input id="email" type="email" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" value="{{ old('email') }}" required autofocus>
	
										<input id="url" type="text" class="" name="prev_url" value="{{str_replace(url('/'), '', url()->current())}}" hidden>
	
										@if ($errors->has('email'))
										<span class="invalid-feedback" role="alert">
											<strong>{{ $errors->first('email') }}</strong>
										</span>
										@endif
										
									</div>
									<div class="form-goroup">
										<label>Password <sup>*</sup></label>
										<input id="password" type="password" class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" name="password" required>
	
										@if ($errors->has('password'))
											<span class="invalid-feedback" role="alert">
												<strong>{{ $errors->first('password') }}</strong>
											</span>
										@endif
	
									</div>
									<div class="user-bottom fix">
										<a href="{{ route('customer.password.request') }}">Forgot Your Password?</a>
										<button type="submit" class="btn">
												{{ __('Login') }}
										</button>
									</div>
							</form>
						</div>
					</div><!-- ACCORDION END -->
					@else
					<div class="row">
						<div class="col-md-4 col-sm-6">
							<div class="panel panel-default">
								<div class="panel-body">
									<b>Use Your Primary Address.</b>
									<input type="checkbox" class="pull-right" id="primary-address">
								</div>
							</div>
						</div>
					</div>
					@endif
					
					<!-- ACCORDION START -->
					{{-- <h3>Have a coupon? <span id="showcoupon">Click here to enter your code</span></h3>
					<div id="checkout_coupon" class="coupon-checkout-content">
						<div class="coupon-info">
							<form action="#">
								<p class="checkout-coupon">
									<input type="text" placeholder="Coupon code" />
									<input type="submit" value="Apply Coupon" />
								</p>
							</form>
						</div>
					</div><!-- ACCORDION END -->						 
					--}}
				</div>
			</div>
		</div>
	</div>
</div><!-- End Coupon Area -->

<!-- Checkout Area -->
<div class="checkout-area">
	<div class="container">
		<div class="row">
			{{-- FORM un-FILLED --}}
			<div class="form" id="form-unfilled">
			{!! Form::open(['url' => '/confirm', 'method' => 'post']) !!}
				@csrf
				<div class="col-lg-6 col-md-6">
					<div class="checkbox-form">						
						<h3>Shipping Details</h3>
						<div class="row">
							<div class="col-md-6">
								<div class="checkout-form-list">
									{{Form::label('text', 'First Name')}}
									{{Form::text('First Name','',array('required' => 'required'))}}
								</div>
							</div>
							<div class="col-md-6">
								<div class="checkout-form-list">
										{{Form::label('text', 'Last Name')}}
										{{Form::text('Last Name')}}
								</div>
							</div>
							<div class="col-md-12">
								<div class="checkout-form-list">
										{{Form::label('text', 'Address')}}
										{{Form::text('Address_1','',array('required' => 'required'))}}
								</div>
							</div>
							<div class="col-md-12">
								<div class="checkout-form-list">
										{{Form::text('Address_2')}}
								</div>
							</div>
							<div class="col-md-12">
								<div class="checkout-form-list">
										{{Form::label('text', 'City/Town')}}
										{{Form::text('City','',array('required' => 'required'))}}
								</div>
							</div>
							<div class="col-md-6">
								<div class="checkout-form-list">
										{{Form::label('text', 'State')}}
										{{Form::text('State','',array('required' => 'required'))}}
								</div>
							</div>
							<div class="col-md-6">
								<div class="checkout-form-list">
										{{Form::label('text', 'Postcode')}}
										{{Form::text('Postcode','',array('required' => 'required'))}}
								</div>
							</div>
							<div class="col-md-6">
								<div class="checkout-form-list">
										{{Form::label('email', 'email')}}
										{{Form::email('Email', null, $attributes = ['required'])}}
								</div>
							</div>
							<div class="col-md-6">
								<div class="checkout-form-list">
										{{Form::label('text', 'Mobile')}}
										{{Form::text('Mobile','Mobile',array('required' => 'required'))}}
								</div>
							</div>								
						</div>													
					</div>
				</div>	
				<div class="col-lg-6 col-md-6">
					<div class="your-order">
						<h3>Your order</h3>
						<div class="your-order-table table-responsive">
							<table>
								<thead>
									<tr>
										<th class="product-name">Product</th>
										<th class="product-total">Total</th>
									</tr>							
								</thead>
								<tbody>
									<?php $cartCollection = Cart::getContent(); ?>
									@foreach ($cartCollection as $item)
									<tr class="cart_item">
										<td class="product-name">
										{{$item->name}} <strong class="product-quantity"> × {{$item->quantity}}</strong>
										</td>
										<td class="product-total">
										<?php $totalPrice = ($item->quantity)*($item->price)?>
										<span class="amount">Rs. {{$totalPrice}}/-</span>
										</td>
									</tr>
									@endforeach

								</tbody>
								<tfoot>
									<tr class="cart-subtotal">
										<th>Cart Subtotal</th>
										<td><span class="amount">Rs. {{Cart::getSubTotal()}}/-</span></td>
									</tr>
									<tr class="shipping">
										<th>Shipping</th>
										<td>
											<ul>
											@if (Cart::getTotal() < 500)
											<li>
												<label>Flat Rate: <span class="amount">Rs. 50/-</span></label>
											</li>
											<?php
												$priceFinal = Cart::getTotal() + 50;
											?>	
											@else
											<li>
												<label>Free Shipping</label>
												<?php
													$priceFinal = Cart::getTotal();
												?>
											</li>
											@endif
												
											</ul>
										</td>
									</tr>
									<tr class="order-total">
										<th>Order Total</th>
									<td><strong><span class="amount">Rs. {{$priceFinal}}/-</span></strong>
										{{Form::text('totalPrice',$priceFinal ,array('hidden'=>'hidden'))}}
										</td>
									</tr>								
								</tfoot>
							</table>
						</div>
						
						<div class="payment-method">
								<!-- ACCORDION START -->
								{{Form::radio('payment', 'online',true)}}
								<label>CCAVENUE <img src="{{asset("assets/img/ccavenue.png")}}" alt="Powered By CCAVENUE" style="height:30px;"></label>
								<!-- ACCORDION START -->
								<br>
								{{Form::radio('payment', 'COD')}}
								<label>Cash On Delivery</label>
							<div class="order-button-payment">
									<?php
										$productID = "";
										foreach ($cartCollection as $item) {
											$productID.= $item->id.',';
										}
									?>
									{{Form::text('productID',$productID ,array('hidden'=>'hidden'))}}

									<?php $customerID = 0;?>
									@if (Auth::guard('customer')->user())
									<?php $customerID=Auth::guard('customer')->user()->id;
									?>
									@else
									<?php $customerID=0; ?>
									@endif
									{{Form::text('customerID',$customerID ,array('hidden'=>'hidden'))}}
									{{Form::submit('Place Order')}}
							</div>
						</div>
					</div>
				</div>
			{!! Form::close() !!}
			</div>

{{--------------------------------- FORM FILLED ---------------------------------}}
@if(Auth::guard('customer')->user())
			@if($fname !=null && $fname !="")
			<div class="form" id="form-filled">
					{!! Form::open(['url' => '/confirm', 'method' => 'post']) !!}
						@csrf
						<div class="col-lg-6 col-md-6">
							<div class="checkbox-form">						
								<h3>Shipping Details</h3>
								<div class="row">
									<div class="col-md-6">
										<div class="checkout-form-list">
											{{Form::label('text', 'First Name')}}
											{{Form::text('First Name',$fname,array('required' => 'required'))}}
										</div>
									</div>
									<div class="col-md-6">
										<div class="checkout-form-list">
												{{Form::label('text', 'Last Name')}}
												{{Form::text('Last Name',$lname)}}
										</div>
									</div>
									<div class="col-md-12">
										<div class="checkout-form-list">
												{{Form::label('text', 'Address')}}
												{{Form::text('Address_1',$address,array('required' => 'required'))}}
										</div>
									</div>
									<div class="col-md-12">
										<div class="checkout-form-list">
												{{Form::label('text', 'City/Town')}}
												{{Form::text('City',$city,array('required' => 'required'))}}
										</div>
									</div>
									<div class="col-md-6">
										<div class="checkout-form-list">
												{{Form::label('text', 'State')}}
												{{Form::text('State',$state,array('required' => 'required'))}}
										</div>
									</div>
									<div class="col-md-6">
										<div class="checkout-form-list">
												{{Form::label('text', 'Postcode')}}
												{{Form::text('Postcode',$zipcode,array('required' => 'required'))}}
										</div>
									</div>
									<div class="col-md-6">
										<div class="checkout-form-list">
												{{Form::label('email', 'email')}}
												{{Form::email('Email', $email, $attributes = ['required'])}}
										</div>
									</div>
									<div class="col-md-6">
										<div class="checkout-form-list">
												{{Form::label('text', 'Mobile')}}
												{{Form::text('Mobile',$phone,array('required' => 'required'))}}
										</div>
									</div>								
								</div>													
							</div>
						</div>	
						<div class="col-lg-6 col-md-6">
							<div class="your-order">
								<h3>Your order</h3>
								<div class="your-order-table table-responsive">
									<table>
										<thead>
											<tr>
												<th class="product-name">Product</th>
												<th class="product-total">Total</th>
											</tr>							
										</thead>
										<tbody>
											<?php $cartCollection = Cart::getContent(); ?>
											@foreach ($cartCollection as $item)
											<tr class="cart_item">
												<td class="product-name">
												{{$item->name}} <strong class="product-quantity"> × {{$item->quantity}}</strong>
												</td>
												<td class="product-total">
												<?php $totalPrice = ($item->quantity)*($item->price)?>
												<span class="amount">Rs. {{$totalPrice}}/-</span>
												</td>
											</tr>
											@endforeach
		
										</tbody>
										<tfoot>
											<tr class="cart-subtotal">
												<th>Cart Subtotal</th>
												<td><span class="amount">Rs. {{Cart::getSubTotal()}}/-</span></td>
											</tr>
											<tr class="shipping">
												<th>Shipping</th>
												<td>
													<ul>
													@if (Cart::getTotal() < 500)
													<li>
														<label>Flat Rate: <span class="amount">Rs. 50/-</span></label>
													</li>
													<?php
														$priceFinal = Cart::getTotal() + 50;
													?>	
													@else
													<li>
														<label>Free Shipping</label>
														<?php
															$priceFinal = Cart::getTotal();
														?>
													</li>
													@endif
														
													</ul>
												</td>
											</tr>
											<tr class="order-total">
												<th>Order Total</th>
											<td><strong><span class="amount">Rs. {{$priceFinal}}/-</span></strong>
												{{Form::text('totalPrice',$priceFinal ,array('hidden'=>'hidden'))}}
												</td>
											</tr>								
										</tfoot>
									</table>
								</div>
								
								<div class="payment-method">
										<!-- ACCORDION START -->
										{{Form::radio('payment', 'online',true)}}
										<label>CCAVENUE <img src="{{asset("assets/img/ccavenue.png")}}" alt="Powered By CCAVENUE" style="height:30px;"></label>
										<!-- ACCORDION START -->
										<br>
										{{Form::radio('payment', 'COD')}}
										<label>Cash On Delivery</label>
									<div class="order-button-payment">
											<?php
												$productID = "";
												foreach ($cartCollection as $item) {
													$productID.= $item->id.',';
												}
											?>
											{{Form::text('productID',$productID ,array('hidden'=>'hidden'))}}
		
											<?php $customerID = 0;?>
											@if (Auth::guard('customer')->user())
											<?php $customerID=Auth::guard('customer')->user()->id;
											?>
											@else
											<?php $customerID=0; ?>
											@endif
											{{Form::text('customerID',$customerID ,array('hidden'=>'hidden'))}}
											{{Form::submit('Place Order')}}
									</div>
								</div>
							</div>
						</div>
					{!! Form::close() !!}
					</div>
				@else
				<div class="jumbotron">
					<h2>Please fill in the details in your info page.</h2>
				</div>
				@endif
				@endif

		</div>
	</div>
</div><!-- End checkout Area -->	
		
			
@endsection


