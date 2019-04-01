@extends('layout.app')
@section('contents')

<!-- Map area -->
<div class="map-area">
	<div id="googleMap" style="width:100%;height:410px;"></div>
</div><!-- End Map area -->
<!-- Contact area -->
<div class="contact-area">
	<div class="container">
		<div class="row">
			<!-- contact info -->
			<div class="col-md-6 col-sm-12 col-xs-12">
				<div class="contact-info">
					<h3>Contact info</h3>
					<ul>
						<li>
							<i class="fa fa-map-marker"></i> <strong>Address</strong>
							52,Dharmatala road salkia.<br>
							Howrah - 711106.
						</li>
						<li>
							<i class="fa fa-envelope"></i> <strong>Phone</strong>
							(91) 9831628002 <br>
							(033) 46047327
						</li>
						<li>
							<i class="fa fa-mobile"></i> <strong>Email</strong>
							<a href="#">support@pickfreely.com</a>
						</li>
					</ul>
				</div>
			</div><!-- End contact info -->
			<div class="col-md-6 col-sm-12 col-xs-12">
				<div class="contact-form">
					<h3><i class="fa fa-envelope-o"></i> Leave a Message</h3>
					<div class="row">
						<form action="/mail/send.php" method="post">
							<div class="col-md-12 col-sm-12 col-xs-12">
								<input name="name" type="text" placeholder="Name (required)" required/>
							</div>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<input name="email" type="email" placeholder="Email (required)" required/>
							</div>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<input name="mobile" type="text" placeholder="Mobile No. (required)" required/>
							</div>
							<div class="col-md-12 col-sm-12 col-xs-12">
								<input name="subject" type="text" placeholder="Subject" required/>
							</div>
							<div class="col-md-12 col-sm-12 col-xs-12">
								<textarea name="message" id="message" cols="30" rows="10" placeholder="Message"></textarea>
								<input type="submit" value="Submit Form" />
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div><!-- End Contact area -->

<!-- Google Map js -->
<script src="https://maps.googleapis.com/maps/api/js"></script>
<script>
	function initialize() {
		var mapOptions = {
		zoom: 15,
		scrollwheel: false,
		center: new google.maps.LatLng(22.6059571,88.341035)
		};

		var map = new google.maps.Map(document.getElementById('googleMap'),
			mapOptions);


		var marker = new google.maps.Marker({
		position: map.getCenter(),
		animation:google.maps.Animation.BOUNCE,
		icon: 'img/logo/map-marker.png',
		map: map
		});

	}

	google.maps.event.addDomListener(window, 'load', initialize);
</script>	
<!-- plugins JS
============================================ -->		
<script src="js/plugins.js"></script>
		
	
@endsection
 