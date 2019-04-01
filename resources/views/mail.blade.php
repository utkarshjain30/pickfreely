<?php
if( $_POST['email'] )
{
    $name = $_POST['name'];
    $email = $_POST['email'];
    $mobile = $_POST['mobile'];
    $userQ = $_POST['subject'];
    $userMSG = $_POST['message'];
    date_default_timezone_set("Asia/Kolkata");
    $date = date("h:i:sa");

    $headers = "From: " . strip_tags($email) . "\r\n";
    $headers .= "MIME-Version: 1.0\r\n";
    $headers .= "Content-Type: text/html; charset=ISO-8859-1\r\n";

    $message = '<html><body>';
    $message .= '<h1>Contact Us Form</h1></br>';
    $message .="<p>Name = ". $name."</p>";
    $message .="<p>Mobile =".$mobile."</p>";
    $message .="<p>Mobile =".$email."</p>";
    $message .="<p>Message = ".$userMSG."</p>";
    $message .= '</body></html>';
    

    //Change this email for changing the reciepient.
    $to = "admin@pickfreely.com";
    $subject = "You Have Recieved This Emain From ".$name." and Subject".$userQ ;

    mail($to,$subject,$message,$headers);
    echo "sent";
    //echo "$msg";
}
else{
   
    echo "Values not recieved";
}
echo "running";
?>
<html>
<head>
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
</head>
<body>
	 <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
	<div class="container" style="text-align:center; display:block;
	margin:3rem auto;">
		<h3>Thank you for Contacting us</h3><br>
		<h5>You will be redirected to the homepage...</h5>
	</div>
	<a href="/" id="home"></a>
	<script>
		setTimeout(function(){
			document.getElementById("home").click();
		},5000);
    </script>
    </body>
</html>



<!-- MAIL_DRIVER=smtp
MAIL_HOST=smtp.mailtrap.io
MAIL_PORT=2525
MAIL_USERNAME=785c205abf1b92
MAIL_PASSWORD=fafa6b6783dd3e
MAIL_ENCRYPTION=null -->