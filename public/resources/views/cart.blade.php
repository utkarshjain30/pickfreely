@extends('layout.app')

@section('contents')

<!-- Cart Area -->

<div class="chart-area">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="cart-title">
					<h2>Shopping Cart</h2>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<!-- Cart Item -->
				@include('layout.cart.cartitem')
	
				<div class="shoping-cart-button">
					<div class="cart-button-left">
						<a href="/"><button type="button" class="btn">Continue Shopping</button></a>
					</div>
					<div class="cart-button-right">
						
						{{-- <button type="button" class="btn">Update Shopping Cart</button> --}}
						<form action="/cart/clear" method="post">
							@csrf
							<button type="submit" class="btn">Clear Shopping Cart</button>
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<!-- Cart Shoping Area -->
			<div class="cart-shopping-area fix">
				{{-- <div class="col-md-4 col-sm-12">
					<div class="calculate-shipping chart-all fix">
						<h2>Estimate Shipping and Tax</h2>
						<p>Enter your destination to get a shipping estimate.</p>
						<h3>State</h3>
						<select>
							<option value="">Please select region, state or province</option>
							<option value="1"></option>
							<option value="2">Alaska</option>
							<option value="3">American Samoa</option>
							<option value="4">Arizona</option>
							<option value="5">Arkansas</option>
							<option value="6">Armed Forces Africa</option>
							<option value="7">Armed Forces Americas</option>
							<option value="8">Armed Forces Canada</option>
							<option value="9">Armed Forces Europe</option>
							<option value="10">Armed Forces Middle East</option>
							<option value="11">Armed Forces Pacific</option>
							<option value="12">California</option>
							<option value="13">Colorado</option>
							<option value="14">Connecticut</option>
							<option value="15">Delaware</option>
							<option value="16">District of Columbia</option>
							<option value="17">Federated States Of Micronesia</option>
							<option value="18">Florida</option>
							<option value="19">Georgia</option>
							<option value="20">Guam</option>
							<option value="21">Hawaii</option>
							<option value="22">Idaho</option>
							<option value="23">Illinois</option>
							<option value="24">Indiana</option>
							<option value="25">Iowa</option>
							<option value="26">Kansas</option>
							<option value="27">Kentucky</option>
							<option value="28">Louisiana</option>
							<option value="29">Maine</option>
							<option value="30">Marshall Islands</option>
							<option value="31">Maryland</option>
							<option value="32">Massachusetts</option>
							<option value="33">Michigan</option>
							<option value="34">Minnesota</option>
							<option value="35">Mississippi</option>
							<option value="36">Missouri</option>
							<option value="37">Montana</option>
							<option value="38">Nebraska</option>
							<option value="39">Nevada</option>
							<option value="40">New Hampshire</option>
							<option value="41">New Jersey</option>
							<option value="42">New Mexico</option>
							<option value="43">New York</option>
							<option value="44">North Carolina</option>
							<option value="45">North Dakota</option>
							<option value="46">Northern Mariana Islands</option>
							<option value="47">Ohio</option>
							<option value="48">Oklahoma</option>
							<option value="49">Oregon</option>
							<option value="50">Palau</option>
							<option value="51">Pennsylvania</option>
							<option value="52">Puerto Rico</option>
							<option value="53">Rhode Island</option>
							<option value="54">South Carolina</option>
							<option value="55">South Dakota</option>
							<option value="56">Tennessee</option>
							<option value="57">Texas</option>
							<option value="58">Utah</option>
							<option value="59">Vermont</option>
							<option value="60">Virgin Islands</option>
							<option value="61">Virginia</option>
							<option value="62">Washington</option>
							<option value="63">West Virginia</option>
							<option value="64">Wisconsin</option>
							<option value="65">Wyoming</option>
						</select>
						<h3>Zip/Postal Code</h3>
						<input type="text">
						<div class="shiping-cart-button">
							<button type="button" class="btn">Get A Quote</button>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-12">
					<div class="chart-all fix">
						<h2>Discount Codes</h2>
						<p>Enter your coupon code if you have one.</p>
						<input type="text">
						<div class="shiping-cart-button">
							<button type="button" class="btn">Apply Coupon</button>
						</div>
					</div>
				</div> --}}
				<div class="col-md-4 col-md-offset-8 col-sm-12 col">
					<div class="shopping-summary chart-all fix">
						<div class="shopping-cost-area">
							<div class="shopping-cost">
								<?php
									$subTotal = 0;
									$grandTotal = 0;
								?>
								@foreach ($cart as $item)
								<?php
									$subTotal += $item->getPriceSum();
									$grandTotal += $item->getPriceSumWithConditions();
								?>
								@endforeach
								<div class="shopping-cost-right">
									<p>Rs. {{$subTotal}}/</p>
									<p><b>Rs. {{$grandTotal}}/-</b></p>
								</div>
								<div class="shopping-cost-left">
									<p class="floatright">Sub Total </p>
									<p><b>GRAND TOTAL</b> </p>
								</div>
							</div>
							@if (Cart::isEmpty() !=true)
							<div class="shiping-cart-button">
								<a href="/checkout"><button type="button" class="btn"> checkout </button></a>
							</div>
							@else
							<div class="shiping-cart-button">
								<a href="/"><button type="button" class="btn">  Add items to cart </button></a>
							</div>
							@endif
						</div>
					</div>
				</div>
			</div><!-- End Cart Shoping Area -->
		</div>
	</div>
</div><!-- End Cart Area -->
		
@endsection
