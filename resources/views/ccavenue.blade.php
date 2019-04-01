<html>
<head>
<title>Processing...</title>
<script>
	window.onload = function() {
		var d = new Date().getTime();
		document.getElementById("tid").value = d;
		document.getElementById("MainForm").submit();
	};
</script>

<style>
.center{
    width:100vw;
    height: 100vh;
    text-align: center;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}
.center h3 span{
    font-size: 44px;
}
@keyframes blink {
    0% {
        opacity: .2;
    }
    20% {
        opacity: 1;
    }
    100% {
        opacity: .2;
    }
}

.saving span {
    animation-name: blink;
    animation-duration: 1.4s;
    animation-iteration-count: infinite;
    animation-fill-mode: both;
}

.saving span:nth-child(2) {
    animation-delay: .2s;
}

.saving span:nth-child(3) {
    animation-delay: .4s;
}
</style>
</head>
<body>

<?php
    $orderInfo = $order->where('order_id',$orderID)->first();    
?>
{{-- ccavRequestHandler.php --}}
<form method="post" name="customerData" action="https://pickfreely.com/ccavenue/ccavRequestHandler.php" id="MainForm">
    @csrf
        <table width="40%" height="100" border='1' align="center" style="display:none;">
            <tr>
                <td>Parameter Name:</td><td>Parameter Value:</td>
            </tr>
            <tr>
                <td colspan="2"> Compulsory information</td>
            </tr>
            <tr>
                <td>TID	:</td><td><input type="hidden" name="tid" id="tid" readonly /></td>
            </tr>
            <tr>
                <td>Merchant Id	:</td><td><input type="hidden" name="merchant_id" value="199292"/></td>
            </tr>
            <tr>
                <td>Order Id	:</td><td><input type="text" name="order_id" value="{{$orderID}}"/></td>
            </tr>
            <tr>
                <td>Amount	:</td><td><input type="text" name="amount" value="{{$orderInfo->total_price}}"/></td>
            </tr>
            <tr>
                <td>Currency	:</td><td><input type="text" name="currency" value="INR"/></td>
            </tr>
            <tr>
                <td>Redirect URL	:</td><td><input type="hidden" name="redirect_url" value="http://pickfreely.com/ccavenue/ccavResponseHandler.php"/></td>
            </tr>
            <tr>
                <td>Cancel URL	:</td><td><input type="hidden" name="cancel_url" value="http://pickfreely.com/ccavenue/ccavResponseHandler.php"/></td>
            </tr>
            <tr>
                <td>Language	:</td><td><input type="hidden" name="language" value="EN"/></td>
            </tr>
            <tr>
            <td>Billing Name	:</td><td><input type="hidden" name="billing_name" value="{{$orderInfo->name}}"/></td>
            </tr>
            <tr>
                <td>Billing Address	:</td><td><input type="hidden" name="billing_address" value="{{$orderInfo->address}}"/></td>
            </tr>
            <tr>
                <td>Billing City	:</td><td><input type="hidden" name="billing_city" value="{{$city}}"/></td>
            </tr>
            <tr>
                <td>Billing State	:</td><td><input type="hidden" name="billing_state" value="{{$state}}"/></td>
            </tr>
            <tr>
                <td>Billing Zip	:</td><td><input type="hidden" name="billing_zip" value="{{$postcode}}"/></td>
            </tr>
            <tr>
                <td>Billing Country	:</td><td><input type="hidden" name="billing_country" value="India"/></td>
            </tr>
            <tr>
                <td>Billing Tel	:</td><td><input type="hidden" name="billing_tel" value="{{$orderInfo->mobile}}"/></td>
            </tr>
            <tr>
                <td>Billing Email	:</td><td><input type="hidden" name="billing_email" value="{{$customerEmail}}"/></td>
            </tr>
            <tr>
                <td>Shipping Name	:</td><td><input type="hidden" name="delivery_name" value="{{$orderInfo->name}}"/></td>
            </tr>
            <tr>
                <td>Shipping Address	:</td><td><input type="hidden" name="delivery_address" value="{{$orderInfo->address}}"/></td>
            </tr>
            <tr>
                <td>shipping City	:</td><td><input type="hidden" name="delivery_city" value="Hyderabad"/></td>
            </tr>
            <tr>
                <td>shipping State	:</td><td><input type="hidden" name="delivery_state" value="Andhra"/></td>
            </tr>
            <tr>
                <td>shipping Zip	:</td><td><input type="hidden" name="delivery_zip" value="425001"/></td>
            </tr>
            <tr>
                <td>shipping Country	:</td><td><input type="hidden" name="delivery_country" value="India"/></td>
            </tr>
            <tr>
                <td>Shipping Tel	:</td><td><input type="hidden" name="delivery_tel" value="{{$orderInfo->mobile}}"/></td>
            </tr>
            <tr>
                <td>Promo Code	:</td><td><input type="hidden" name="promo_code" value=""/></td>
            </tr>
            <tr>
                <td></td><td><INPUT TYPE="submit" value="CheckOut"></td>
            </tr>
        </table>
        </form>

<div class="center">
    <h2>Please do not close the tab or refresh the window.</h2><br>
    <h3 class="saving">Your request is being processed <span>.</span><span>.</span><span>.</span></h3>
</div>

	</body>
</html>


