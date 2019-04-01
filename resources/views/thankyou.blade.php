@extends('layout.app')
@section('contents')
	 <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
	<div class="container" style="text-align:center; display:block;
	margin:3rem auto;">
		<h3>Thank you for shopping with us.</h3><br>
		<h5>You will be redirected to the homepage...</h5>
	</div>
	<a href="/" id="home"></a>
	<script>
		setTimeout(function(){
			document.getElementById("home").click();
		},5000);
	</script>
@endsection
 
