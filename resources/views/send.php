<?php

require("class.phpmailer.php");

$mail = new PHPMailer();

$mail->IsSMTP();
$mail->Host = "pickfreely.com";

$mail->SMTPAuth = true;
//$mail->SMTPSecure = "ssl";
$mail->Port = 587;
$mail->Username = "admin@pickfreely.com";
$mail->Password = "Pick@@1213456";


if( $_POST['email'] )
{
    $name = $_POST['name'];
    $email = $_POST['email'];
    $mobile = $_POST['mobile'];
    $userQ = $_POST['subject'];
    $userMSG = $_POST['message'];
    date_default_timezone_set("Asia/Kolkata");
    $date = date("h:i:sa");


$mail->From = "admin@pickfreely.com";
$mail->FromName = $name;
$mail->AddAddress("info@pickfreely.com");
//$mail->AddReplyTo("mail@mail.com");

$mail->IsHTML(true);

$mail->Subject = "Email Sent From Pickfreely Contact by ".$name." for".$userQ;
$mail->Body = "Name = ".$name."<br>Email = ".$email."<br> Mobile = ".$mobile."<br><br> With Message :- <blockquote>".$userMSG."</blockquote> <br>";
//$mail->AltBody = "This is the body in plain text for non-HTML mail clients";

if(!$mail->Send())
{
echo "Message could not be sent. <p>";
echo "Mailer Error: " . $mail->ErrorInfo;
exit;
}
}
else{
    echo "Data not recieved";
    exit;
}
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